# Master Shifu — Consulting Framework Skills for AI Agents

**32 consulting case frameworks. 19 MBA casebooks. Each one is a `/command` your AI agent can run.**

Master Shifu turns business problem-solving frameworks (Profitability, Market Entry, M&A, Pricing, etc.) into AI agent skills. Think of it as a **master strategist** that lives inside your AI — you describe a business problem, it picks the right framework from its toolbox, walks through it step by step, and gives you a structured recommendation.

Works with Claude Code, OpenAI Codex, Cursor, Windsurf — any agent that supports the Agent Skills spec.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## What are Skills?

Skills are markdown files that give AI agents specialized knowledge and workflows for specific tasks. Each framework skill teaches your agent how to apply a specific consulting framework — when to use it, how to structure the analysis, what questions to ask, and what pitfalls to avoid.

## How Skills Work Together

The `/master-shifu` agent is the router. You give it a problem, it figures out which frameworks fit, and chains them together.

```
                            ┌──────────────────────────────────────┐
                            │       /master-shifu (router)         │
                            │   You: "My SaaS margins are down"    │
                            └──────────────────┬───────────────────┘
                                               │
                    ┌──────────────────────────┼──────────────────────────┐
                    │                          │                          │
            ┌───────▼───────┐        ┌─────────▼─────────┐    ┌──────────▼──────────┐
            │  Grill Phase   │        │   5 Lenses         │    │  Framework Match    │
            │  "What data?"  │        │  Customer, Comp,   │    │  "You need..."       │
            │  "Any trends?" │        │  Financial, Ops,   │    │  /profitability     │
            │  "Evidence?"   │        │  Market (scraped)  │    │  + /industry-analysis│
            └───────┬───────┘        └─────────┬───────────┘    └──────────┬──────────┘
                    │                          │                           │
                    └──────────────────────────┼───────────────────────────┘
                                               │
                    ┌──────────────────────────▼───────────────────────────┐
                    │              Synthesis Engine                        │
                    │  "Profit is down because Volume dropped 20% in the   │
                    │   Italian market due to negative reviews. Fix:       │
                    │   improve product + create regional website."         │
                    └──────────────────────────────────────────────────────┘
                                               │
          ┌────────────────────────────────────┼────────────────────────────┐
          ▼                                    ▼                            ▼
┌──────────────────┐                  ┌──────────────────┐        ┌──────────────────┐
│  /profitability  │                  │ /cost-reduction  │        │ /market-entry    │
│  "Isolate the    │                  │ "Which costs can │        │ "What's the best  │
│   revenue cause" │                  │   we cut?"       │        │   expansion path?"│
└──────────────────┘                  └──────────────────┘        └──────────────────┘
```

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/vcxcvii/master-shifu/main/install.sh | bash
```

Or using `npx skills`:
```bash
npx skills add vcxcvii/master-shifu
```

## Quick Start

```
You: "My SaaS company's margins are shrinking. What's going on?"

/master-shifu  ← runs the full 5-phase pipeline
```

Or use any skill directly:

```
/profitability → "Revenue dropped 15% this quarter in Europe"
/market-entry  → "Should we expand into Southeast Asia?"
/pricing       → "Competitor just dropped prices 30%"
/industry-analysis → "Analyze the EV charging market, Porter's Five Forces"
/grill-case    → "I want to stress-test my business hypothesis"
```

## Available Skills (32)

| Skill | What it does |
|-------|-------------|
| `/profitability` | Breaks down Profit = Revenue - Cost, segments by product/channel/region to find root cause |
| `/market-entry` | Evaluates new markets: attractiveness → feasibility → competitive response |
| `/business-situation` | 4-pillar analysis: Customer, Company, Competition, Product |
| `/m-and-a-fit` | Evaluates acquisition targets: synergies, one-way exploitation, integration risk |
| `/capacity-expansion` | Analyzes adding/reducing capacity: demand, supply, cost, market-clearing price |
| `/pricing` | Cost-based, competitor-based, value-based pricing with elasticity analysis |
| `/cost-reduction` | Zero-based budgeting, value chain cost analysis, benchmarking |
| `/growth-strategy` | Ansoff Matrix: market penetration, market development, product development, diversification |
| `/industry-analysis` | Porter's Five Forces: entrants, suppliers, buyers, substitutes, rivalry |
| `/market-sizing` | Top-down and bottom-up estimation, TAM/SAM/SOM |
| `/break-even-analysis` | Fixed/variable costs, contribution margin, payback period, sensitivity analysis |
| `/issue-tree` | MECE decomposition, hypothesis trees, decision trees |
| `/swot-analysis` | Strengths, Weaknesses, Opportunities, Threats with pairing analysis |
| `/pestel` | Political, Economic, Social, Technological, Environmental, Legal factors |
| `/value-chain` | Primary and support activities, cost vs value drivers, linkages |
| `/bcg-matrix` | Stars, Cash Cows, Question Marks, Dogs — portfolio resource allocation |
| `/generic-strategies` | Cost leadership, differentiation, focus — competitive positioning |
| `/strategy-diamond` | Arenas, Vehicles, Differentiators, Staging, Economic Logic — full strategy formulation |
| `/vrio` | Value, Rarity, Imitability, Organization — internal capability assessment |
| `/marketing-mix` | 4Ps/7Ps: Product, Price, Place, Promotion (+ People, Process, Physical Evidence) |
| `/stp-segmentation` | Segmentation, Targeting, Positioning |
| `/aida-customer-journey` | Awareness, Interest, Desire, Action — funnel analysis |
| `/operations-improvement` | Process improvement, lean operations, TQM, cycle time analysis |
| `/supply-demand` | Market equilibrium, shortage/surplus, price elasticity |
| `/outsourcing` | Make vs buy: strategic importance, capability assessment, cost analysis |
| `/new-product-introduction` | Product launch: concept → development → test → launch |
| `/due-diligence` | Investment screening: financial, legal, operational, strategic risk assessment |
| `/non-profit` | Mission alignment, stakeholder analysis, funding model, impact measurement |
| `/hypothesis-driven` | First principles, issue analysis, workplan design for exploratory problems |
| `/5c-framework` | Company, Customers, Competitors, Collaborators, Context — situational analysis |
| `/segmentation` | Demographic, psychographic, behavioral, needs-based customer segmentation |
| `/grill-case` | Standalone problem clarifier — stress-tests assumptions before any analysis |

## Self-Improving

The `task-observer` skill watches sessions, logs corrections, and suggests improvements. After any session, just ask:

> "Any observations logged?"

It will surface corrections, skill gaps, and cross-cutting principles. Approved changes are applied automatically.

## Always-On Web Monitoring

Each lens can watch the web for changes. Define URLs in `agent/monitors/*.yaml`, push to GitHub, and Actions checks every 6 hours for free:

```
Competitor changed pricing? → competition lens fires → next session: "Since your last session,
Stripe changed Pro from $20 to $25. Include in analysis?"
```

## Skill Structure (OKF Format)

Every skill follows the Open Knowledge Format:

```yaml
---
type: Framework
title: Profitability Framework
description: Profits declining, revenue dropping, costs rising, margin pressure...
tags: [core, finance, quantitative]
sources: [Victor Cheng, KCC Casebook, IIMA Prep Book]
---
```

## Project Structure

```
master-shifu/
├── SKILL.md                # Master routing agent (/master-shifu)
├── skills/                 # 32 individual framework skills
│   ├── profitability/SKILL.md
│   ├── market-entry/SKILL.md
│   └── ... (30 more)
├── agent/
│   ├── lenses/scraper.py   # Scrapling-based web scraper wrapper
│   └── monitors/           # Web monitor configs (competition, market, financial)
├── task-observer/SKILL.md  # Self-improvement meta-skill
├── scripts/
│   ├── monitor/spider.py   # Scrapling spider for scheduled monitoring
│   └── setup-monitors.sh   # Interactive monitor setup
├── .github/workflows/      # GitHub Actions: free scheduled monitoring
├── install.sh              # One-click install
├── CLAUDE.md               # Claude Code config
└── AGENTS.md               # Codex/Cursor config
```

## Environment Setup

**Minimum:** No dependencies. Skills are pure markdown.

**With scraping (recommended):**
```bash
pip install scrapling[fetchers]
pip install sec-edgar-api  # for financial lens
```

## License

MIT

Built from 19 top-tier MBA casebooks: Kellogg, Wharton, Ross, Darden, IIM (A, B, C, I, L), MDI, Drucker, McKinsey, Victor Cheng, Crack the Case, and more.
