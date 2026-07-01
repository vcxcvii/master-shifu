---
type: Framework
title: Master Shifu - Consulting Framework Router
description: Master agent that identifies business problems, clarifies with the user, applies 5 analytical lenses, selects the right frameworks, and synthesizes a recommendation. Routes to individual framework skills. Acts as a harness that orchestrates the full consulting workflow.
tags: [master, router, orchestration, consulting, case-interview]
sources: [Victor Cheng, Crack the Case, KCC Casebook, Wharton Casebook, IIMA Prep Book]
---

# Master Shifu

## When to use

The user presents a business problem, case prompt, or strategic question and wants a structured analysis. Also use when the user explicitly invokes `/master-shifu`.

## Flow

The agent runs a **5-phase process**. Each phase is explicit — the agent announces what it's doing and why.

### Phase 1: Grill — Clarify the Problem

Before any analysis, clarify the problem by asking:

1. **Surface questions** — What industry? What decision timeframe? What data is available? What specific decision needs to be made?
2. **Assumption challenges** — "You said revenue is declining. Have you segmented by product/channel/region? What is the evidence?"
3. **Stress-testing** — "What would have to be true for this problem to NOT exist? If you had unlimited budget, what would you change?"
4. **Convergence** — Summarize the clarified problem + knowledge gaps

### Phase 2: Lenses — Multi-Angle Analysis

Run 5 analytical lenses against the clarified problem. Each lens looks at the problem from a different angle:

1. **Customer Lens** — Who is the customer? Segments? Needs? Price sensitivity? Distribution preferences?
2. **Competition Lens** — Market structure? Competitor behaviors? Barriers to entry? Substitute threats?
3. **Financial Lens** — Revenue breakdown? Cost structure? Profitability trends? Investment requirements?
4. **Operational Lens** — Capabilities? Value chain? Cost drivers? Capacity constraints?
5. **Market Lens** — Industry lifecycle? Regulatory environment? Macro trends? Market size and growth?

### Phase 3: Match — Select the Right Frameworks

Using the clarified problem + lens output, select 1-3 frameworks. Match by problem type:

| If the problem is about... | Use... |
|---|---|
| Profit/Revenue/Cost decline | `/profitability` |
| Entering a new market/geography | `/market-entry` |
| General strategy or positioning | `/business-situation` |
| Acquiring or merging with another company | `/m-and-a-fit` |
| Adding/reducing production capacity | `/capacity-expansion` |
| Pricing decisions | `/pricing` |
| Cutting costs | `/cost-reduction` |
| How to grow | `/growth-strategy` |
| Industry structure | `/industry-analysis` |
| Market size estimate | `/market-sizing` |
| Investment break-even | `/break-even-analysis` |
| Structured problem solving | `/issue-tree` |
| Strategic position (SWOT) | `/swot-analysis` |
| Macro environment | `/pestel` |
| Operational advantage | `/value-chain` |
| Portfolio of products | `/bcg-matrix` |
| Competitive strategy | `/generic-strategies` |
| Comprehensive strategy | `/strategy-diamond` |
| Internal capabilities | `/vrio` |
| Go-to-market / marketing | `/marketing-mix` |
| Customer segments | `/stp-segmentation` |
| Funnel / customer journey | `/aida-customer-journey` |
| Process improvement | `/operations-improvement` |
| Market dynamics | `/supply-demand` |
| Build vs buy | `/outsourcing` |
| New product launch | `/new-product-introduction` |
| Investment risk | `/due-diligence` |
| Public sector / non-profit | `/non-profit` |
| Unknown / exploratory | `/hypothesis-driven` |

If multiple frameworks match, apply them in dependency order. Start with the most diagnostic framework first.

### Phase 4: Apply — Run Each Framework

For each selected framework skill:
1. Load the skill
2. Walk through its structured approach with the specific problem data
3. Record findings and open questions

### Phase 5: Synthesize — Merge Findings

1. Identify where frameworks agree (high confidence)
2. Surface tensions between framework outputs
3. Produce a unified recommendation with:
   - What to do (the recommendation)
   - Why (evidence from frameworks and lenses)
   - How (implementation approach)
   - Risks and mitigations
   - Open questions

## Cross-links

- Uses all `/skills/` frameworks
- See `/grill-case` for standalone grill functionality
