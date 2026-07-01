= master-shifu = Master Shifu — Consulting Framework Skills for AI Agents

A collection of consulting case interview framework skills extracted from 19 top-tier MBA casebooks. Each skill is invocable as a `/command`. The `/master-shifu` skill is the routing agent that picks the right framework for any business problem.

## Skills

All skills in `skills/` are available as `/command` invocations. The `description` field in each SKILL.md frontmatter defines when it triggers.

## Core flow (via /master-shifu)

1. Grill — clarify the problem (5 rounds of questioning)
2. Lenses — apply 5 analytical angles (customer, competition, financial, operational, market)
3. Match — select 1-3 frameworks via pattern matching
4. Apply — load and execute each framework skill
5. Synthesize — merge findings into a recommendation

## Self-improvement

The `task-observer/` skill watches sessions and logs improvement opportunities. At session end, ask "Any observations logged?" to review and apply suggestions.

## Scraping

Each lens can auto-populate via Scrapling (`pip install scrapling[fetchers]`):
- scrapling extract get <url> <output.md>
- scrapling extract stealthy-fetch <url> <output.md>
- See agent/lenses/scraper.py for the Python wrapper

## Installation

curl -fsSL https://raw.githubusercontent.com/<your-gh>/master-shifu/main/install.sh | bash
