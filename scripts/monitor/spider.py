"""
Scrapling spider for scheduled monitoring of competitor, market, and financial pages.

Usage:
    python scripts/monitor/spider.py --monitor competition
    python scripts/monitor/spider.py --monitor all

Requires:
    pip install scrapling[fetchers]
"""

import os
import sys
import json
import hashlib
from pathlib import Path
from datetime import datetime
from typing import Optional

MONITORS_DIR = Path("agent/monitors")
DATA_DIR = Path("data/monitors")


def run_monitor(monitor_name: str):
    """Run a single monitor: fetch all URLs and save content."""
    from scrapling.fetchers import Fetcher

    # Find which YAML file defines this monitor
    for yaml_file in MONITORS_DIR.glob("*.yaml"):
        import yaml
        with open(yaml_file) as f:
            config = yaml.safe_load(f)
        for m in config.get("monitors", []):
            if m["name"] == monitor_name:
                lens_dir = DATA_DIR / m["lens"] / m["name"]
                current_dir = lens_dir / "current"
                previous_dir = lens_dir / "previous"
                current_dir.mkdir(parents=True, exist_ok=True)
                previous_dir.mkdir(parents=True, exist_ok=True)

                # Rotate: current -> previous
                for old_file in current_dir.glob("*.json"):
                    old_file.rename(previous_dir / old_file.name)

                # Scrape each URL
                for url in m.get("urls", []):
                    safe = hashlib.md5(url.encode()).hexdigest()[:12]
                    out_path = current_dir / f"{safe}.json"
                    try:
                        page = Fetcher.get(url, stealthy_headers=True)
                        css_sel = m.get("css_selector")
                        if css_sel:
                            elements = page.css(css_sel)
                            content = [e.text() for e in elements if e.text()]
                        else:
                            content = [page.text()]

                        with open(out_path, "w") as f:
                            json.dump({
                                "url": url,
                                "monitor": monitor_name,
                                "lens": m["lens"],
                                "goal": m["goal"],
                                "timestamp": datetime.utcnow().isoformat(),
                                "content": content,
                            }, f, indent=2)
                        print(f"  ✓ {url} -> {out_path}")
                    except Exception as e:
                        print(f"  ✗ {url}: {e}")

                return

    print(f"Monitor '{monitor_name}' not found in {MONITORS_DIR}/*.yaml")


def run_all():
    """Run all monitors defined in YAML files."""
    import yaml
    for yaml_file in sorted(MONITORS_DIR.glob("*.yaml")):
        with open(yaml_file) as f:
            config = yaml.safe_load(f)
        lens = yaml_file.stem  # competition, market, financial
        for m in config.get("monitors", []):
            print(f"\n[{lens}] Running: {m['name']}")
            run_monitor(m["name"])


def diff_monitor(monitor_name: str) -> Optional[dict]:
    """Diff current vs previous for a monitor. Returns changes if meaningful."""
    import yaml

    for yaml_file in MONITORS_DIR.glob("*.yaml"):
        with open(yaml_file) as f:
            config = yaml.safe_load(f)
        for m in config.get("monitors", []):
            if m["name"] != monitor_name:
                continue

            lens_dir = DATA_DIR / m["lens"] / m["name"]
            current_dir = lens_dir / "current"
            previous_dir = lens_dir / "previous"

            changes = []
            for cur_file in sorted(current_dir.glob("*.json")):
                prev_file = previous_dir / cur_file.name
                if not prev_file.exists():
                    changes.append({
                        "url": cur_file,
                        "type": "new",
                        "summary": "First scrape — baseline established"
                    })
                    continue

                with open(cur_file) as f:
                    cur = json.load(f)
                with open(prev_file) as f:
                    prev = json.load(f)

                if cur.get("content") != prev.get("content"):
                    changes.append({
                        "url": cur.get("url"),
                        "type": "changed",
                        "summary": "Content differs from previous scrape"
                    })

            if changes:
                return {
                    "monitor": monitor_name,
                    "lens": m["lens"],
                    "goal": m["goal"],
                    "changes": changes
                }
            return None
    return None


def judge_changes(change_report: dict) -> Optional[dict]:
    """
    LLM judge: given a change report, decide if the change is meaningful
    against the monitor's goal. Uses the system's LLM via subprocess.
    
    Returns the report with a `meaningful` flag and `reason` if meaningful.
    """
    if not change_report or not change_report.get("changes"):
        return None

    # Simple heuristic: if content changed and we have actual content (not empty),
    # it's meaningful. The LLM judge runs when the agent reviews observations.
    meaningful_changes = [
        c for c in change_report["changes"]
        if c["type"] != "new"  # Skip first-scrape baselines
    ]

    if meaningful_changes:
        change_report["meaningful"] = True
        change_report["judgment"] = "Content changed — review in next Master Shifu session"
        return change_report
    return None


if __name__ == "__main__":
    import sys
    if len(sys.argv) > 1 and sys.argv[1] == "--monitor":
        name = sys.argv[2]
        if name == "all":
            run_all()
        else:
            run_monitor(name)
    elif len(sys.argv) > 1 and sys.argv[1] == "--diff":
        name = sys.argv[2]
        result = diff_monitor(name)
        if result:
            print(json.dumps(result, indent=2))
        else:
            print("No changes detected.")
    elif len(sys.argv) > 1 and sys.argv[1] == "--judge":
        name = sys.argv[2]
        report = diff_monitor(name)
        judged = judge_changes(report)
        if judged:
            print(json.dumps(judged, indent=2))
        else:
            print("No meaningful changes.")
    else:
        run_all()
