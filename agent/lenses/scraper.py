"""
Scrapling-based web scraper for Master Shifu lens system.

Each lens uses this to auto-populate its analysis with real data from:
  - Company websites (via FastFetcher or StealthyFetcher)
  - SEC EDGAR for 10-K/10-Q financials (via FastFetcher)
  - News/PR (via SearXNG or direct fetch)

Usage:
    from scraper import Scraper
    s = Scraper()
    text = s.extract("https://example.com/about")
    news = s.search("Stripe funding round 2026")
    sec = s.sec_10k("AAPL", year=2025)

Requirements: pip install scrapling[fetchers]
"""

import subprocess
import json
import re
from pathlib import Path
from typing import Optional


class Scraper:
    """Lightweight wrapper around Scrapling CLI for lens scraping."""

    def __init__(self, cache_dir: Optional[Path] = None):
        self.cache_dir = cache_dir or Path("/tmp/master-shifu-scraps")
        self.cache_dir.mkdir(parents=True, exist_ok=True)

    def _cache_path(self, url: str) -> Path:
        safe = re.sub(r"[^a-zA-Z0-9]", "_", url)[:100]
        return self.cache_dir / f"{safe}.md"

    def extract(self, url: str, css_selector: Optional[str] = None, force: bool = False) -> str:
        """
        Scrape a URL and extract its main content as markdown.
        Uses Scrapling CLI: scrapling extract get <url> <output> [--css-selector ...]

        Caches results to disk. Pass force=True to re-fetch.
        """
        cache = self._cache_path(url)
        if cache.exists() and not force:
            return cache.read_text()

        cmd = ["scrapling", "extract", "get", url, str(cache)]
        if css_selector:
            cmd += ["--css-selector", css_selector]

        try:
            subprocess.run(cmd, capture_output=True, text=True, timeout=60)
            if cache.exists():
                return cache.read_text()
            return f"<!-- Scrapling returned no content for {url} -->"
        except subprocess.TimeoutExpired:
            return f"<!-- Scrapling timed out on {url} -->"
        except FileNotFoundError:
            return "<!-- Scrapling CLI not found. Install: pip install 'scrapling[fetchers]' -->"

    def extract_stealth(self, url: str, css_selector: Optional[str] = None, force: bool = False) -> str:
        """
        Scrape a page that may have anti-bot protection (Cloudflare, etc.)
        Uses Scrapling StealthyFetcher.
        """
        cache = self._cache_path(f"stealth_{url}")
        if cache.exists() and not force:
            return cache.read_text()

        cmd = ["scrapling", "extract", "stealthy-fetch", url, str(cache)]
        if css_selector:
            cmd += ["--css-selector", css_selector]

        try:
            subprocess.run(cmd, capture_output=True, text=True, timeout=120)
            if cache.exists():
                return cache.read_text()
            return f"<!-- Stealth extract returned no content for {url} -->"
        except subprocess.TimeoutExpired:
            return f"<!-- Stealth extract timed out on {url} -->"
        except FileNotFoundError:
            return "<!-- Scrapling CLI not found. Install: pip install 'scrapling[fetchers] -->"

    def sec_10k(self, ticker: str, year: Optional[int] = None) -> str:
        """
        Fetch a company's 10-K filing from SEC EDGAR.
        Uses direct HTTP via Scrapling against EDGAR's full-text search API.
        """
        from datetime import datetime
        y = year or datetime.now().year
        url = f"https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK={ticker}&type=10-K&dateb={y}1231&output=atom"
        return self.extract(url)

    def search(self, query: str, source: str = "news") -> str:
        """
        Search for recent news/PR about a company or topic.
        Uses Scrapling to fetch Google News RSS (no API key needed).
        """
        if source == "news":
            url = f"https://news.google.com/rss/search?q={query.replace(' ', '+')}&hl=en-US&gl=US&ceid=US:en"
        else:
            url = f"https://www.google.com/search?q={query.replace(' ', '+')}"
        return self.extract(url, css_selector="article, div.g")

    def clear_cache(self):
        """Clear all cached scrapes."""
        import shutil
        shutil.rmtree(self.cache_dir)
        self.cache_dir.mkdir(parents=True, exist_ok=True)
