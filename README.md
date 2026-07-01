# Master Shifu — Consulting Framework Skills for AI Agents

A collection of AI agent skills for consulting case interview frameworks. Built from 19 top-tier MBA casebooks (Kellogg, Wharton, Ross, Darden, IIM, Victor Cheng, and more). Each framework is a standalone `/command` skill. A master routing agent (`/master-shifu`) automatically picks the right framework for any business problem.

Works with Claude Code, OpenAI Codex, Cursor, Windsurf, and any agent supporting the Agent Skills spec.

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/<your-gh>/master-shifu/main/install.sh | bash
```

Or manually:
```bash
git clone https://github.com/<your-gh>/master-shifu.git
cp -r master-shifu/skills/* .agents/skills/
```

## Usage

### Individual framework skills
```
/profitability          → "Revenue is declining, need to analyze why"
/market-entry           → "Should we expand into Southeast Asia?"
/pricing                → "Competitor just dropped prices 30%"
/m-and-a-fit            → "Evaluating an acquisition target"
/industry-analysis      → "Analyze the EV charging market"
/market-sizing          → "How big is the AI coding tools market?"
/issue-tree             → "Build a MECE tree for operational efficiency"
```

### Master routing agent
```
/master-shifu           → "My SaaS company's margins are shrinking and a new competitor just entered"
```

The agent will: grill you to clarify → apply 5 lenses (customer, competition, financial, operational, market) → pick the right frameworks → synthesize a recommendation.

## Available Skills

| Skill | When to use |
|-------|-------------|
| `/profitability` | Profits declining, revenue dropping, costs rising, margin pressure |
| `/market-entry` | Expanding to new geography, launching in new market |
| `/business-situation` | General strategy, company assessment, competitive positioning |
| `/m-and-a-fit` | Evaluating acquisition targets, merger fit |
| `/capacity-expansion` | Building new factory, adding capacity, scaling production |
| `/pricing` | Pricing decisions, competitor price changes, monetization |
| `/cost-reduction` | Need to cut costs, improve operational efficiency |
| `/growth-strategy` | How to grow, Ansoff Matrix, expansion options |
| `/industry-analysis` | Industry structure, Porter's Five Forces, competitive dynamics |
| `/market-sizing` | Estimate market size, TAM/SAM/SOM, guesstimates |
| `/break-even-analysis` | When will we break even, investment decisions |
| `/issue-tree` | Build MECE issue trees, structured problem solving |
| `/swot-analysis` | Strategic positioning, internal/external assessment |
| `/pestel` | Macro environment analysis, external factors |
| `/value-chain` | Operational analysis, competitive advantage sources |
| `/bcg-matrix` | Portfolio analysis, resource allocation |
| `/generic-strategies` | Cost leadership, differentiation, focus strategy |
| `/strategy-diamond` | Comprehensive strategy formulation |
| `/vrio` | Internal capability assessment, competitive advantage |
| `/marketing-mix` | 4P/7P analysis, go-to-market planning |
| `/stp-segmentation` | Segmentation, targeting, positioning |
| `/aida-customer-journey` | Funnel analysis, customer journey mapping |
| `/operations-improvement` | Process improvement, efficiency analysis |
| `/supply-demand` | Market equilibrium, shortage/surplus analysis |
| `/outsourcing` | Make vs buy, build vs partner decisions |
| `/new-product-introduction` | Product launch decisions, innovation strategy |
| `/due-diligence` | Investment screening, risk assessment |
| `/non-profit` | Non-profit / public sector strategy |
| `/hypothesis-driven` | Hypothesis-driven consulting approach |

## Skill Structure

Each skill follows the Open Knowledge Format (OKF):

```yaml
---
type: Framework
title: Profitability Framework
description: When profits are declining, revenue dropping, or costs rising...
tags: [core, finance, quantitative]
sources: [Victor Cheng, KCC Casebook, IIMA Prep Book]
---
```

## License

MIT
