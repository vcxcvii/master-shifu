# Master Shifu — CLAUDE.md

## Always

- Load the `task-observer` skill during sessions where Master Shifu skills are used
- When user finishes a session, ask "Any observations logged?" to trigger the task-observer review

## Skills location

All skills are in `skills/<name>/SKILL.md`. Invocable via `/name`.

## Framework matching (from /master-shifu)

- Profit/Revenue/Cost → /profitability
- New market/geography → /market-entry
- General strategy → /business-situation
- M&A → /m-and-a-fit
- Capacity → /capacity-expansion
- Pricing → /pricing
- Cost cutting → /cost-reduction
- Growth → /growth-strategy
- Industry structure → /industry-analysis
- Market size → /market-sizing
- Break-even → /break-even-analysis
- Structured problems → /issue-tree
- SWOT → /swot-analysis
- Macro environment → /pestel
- Operations → /value-chain or /operations-improvement
- Portfolio → /bcg-matrix
- Competitive strategy → /generic-strategies
- Strategy formulation → /strategy-diamond
- Internal capabilities → /vrio
- Marketing/GTM → /marketing-mix or /stp-segmentation
- Funnel → /aida-customer-journey
- Market dynamics → /supply-demand
- Make vs buy → /outsourcing
- New product → /new-product-introduction
- Due diligence → /due-diligence
- Non-profit → /non-profit
- Unknown → /hypothesis-driven

## Lenses (always run before framework selection via /master-shifu)

- Customer lens
- Competition lens
- Financial lens
- Operational lens
- Market lens

Each lens can be enhanced with Scrapling for real-time data extraction:
- pip install scrapling[fetchers]
- Python wrapper: agent/lenses/scraper.py
- CLI: scrapling extract get <url> <output.md>

## Web Monitors (GitHub Actions, free)

Monitors in `agent/monitors/*.yaml` define what to watch. The GitHub Actions workflow runs them every 6 hours, diffs against previous scrape, and commits change events to `data/monitors/*/*/change.json`. The task-observer ingests these at session start.

- Competition: competitor pricing + product pages
- Market: industry news + regulatory pages
- Financial: SEC EDGAR filings

To set up: add URLs to `agent/monitors/<lens>.yaml`, push to GitHub, enable Actions.

## Format

All skill files follow Open Knowledge Format (OKF):
- YAML frontmatter with type, title, description, tags, sources
- Description field is the trigger mechanism
- Body with: When to use, Framework structure, Walkthrough, Example, Pitfalls
