---
type: Framework
title: Issue Tree / MECE Framework
description: >-
  Structured problem solving, MECE decomposition, issue trees, hypothesis
  trees. Use when the problem needs structured decomposition or a clear logical
  structure.
tags: [core, problem-solving, structured]
sources: [McKinsey, Crack the Case, KCC Casebook, IIMA Prep Book]
---

# Issue Tree / MECE Framework

## When to Use
- Any complex or ambiguous business problem
- "Why is revenue declining?" / "Why are costs rising?"
- Structuring analysis work — what do we need to figure out?
- Hypothesis-driven problem solving (foundation of all consulting work)
- Breaking a vague question into testable components
- Communicating a complex analysis to stakeholders

## Framework Structure

```
                      ┌──────────────┐
                      │  Why are     │
                      │  profits     │
                      │  declining?  │
                      └──────┬───────┘
             ┌────────────────┼────────────────┐
             ▼                ▼                ▼
      ┌────────────┐  ┌──────────────┐  ┌───────────┐
      │ Revenue    │  │   Costs      │  │  Mix/     │
      │ Declining  │  │   Rising     │  │  Other    │
      └──────┬─────┘  └──────┬───────┘  └───────────┘
        ┌────┴────┐        ┌──┴───┐
        ▼         ▼        ▼      ▼
   ┌────────┐ ┌────────┐ ┌────┐ ┌────┐
   │Price   │ │Volume  │ │Fix │ │Var │
   │Down    │ │Down    │ │Up  │ │Up  │
   └────────┘ └──┬─────┘ └────┘ └────┘
              ┌──┴───┐
              ▼      ▼
         ┌────────┐ ┌────────┐
         │Market  │ │Share   │
         │Shrinking│ │Declining│
         └────────┘ └────────┘
```

**Three types of trees:**
- **Issue tree**: breaks the problem into MECE components (what's going on?)
- **Hypothesis tree**: states a hypothesis, then branches into tests (is it X?)
- **Decision tree**: maps decisions and possible outcomes (what if we do X?)

## Step-by-Step Walkthrough

1. **Frame the key question** — Write a single, clear question at the top. Every branch must relate back to this question.

2. **Choose the right decomposition principle** — What is the most natural way to split the problem?
   - *Math decomposition*: Revenue = Price × Volume. Costs = Fixed + Variable. Profit = Revenue - Costs.
   - *Process decomposition*: Inbound → Operations → Outbound → Marketing → Service
   - *Segmentation decomposition*: By product line, customer segment, geography, channel
   - *Causal decomposition*: Root causes grouped by category (internal vs external, controllable vs not)

3. **Identify 3-5 MECE branches at the first level**:
   - MECE check at each level before going deeper
   - Mutually Exclusive: No overlap (e.g., "Price" and "Volume" don't overlap; "Marketing" and "Sales" might)
   - Collectively Exhaustive: Covers all possibilities (e.g., Profit = Revenue - Cost is mathematically exhaustive)

4. **Drill down** on each branch until you reach testable hypotheses or data points:
   - Each leaf should be something you can answer with data
   - Example: "Market is shrinking" → can be tested with industry data
   - Don't go deeper on branches that don't matter (Pareto principle)

5. **Prioritize** — Which branches have the biggest impact potential? Which can be tested fastest?
   - Mark critical branches (high impact, high uncertainty)
   - Deprioritize low-impact branches (save for later)

6. **Assign analysis** — For each leaf:
   - What data/analysis will resolve this?
   - What's the source of that data?
   - How long will it take?

## Example

**Problem: "Our retail sales are declining 15% YoY"**

- Revenue = (Foot Traffic × Conversion Rate × Avg Transaction Value) × (# Stores)
  - **Foot Traffic declining**:
    - Market foot traffic down → Check industry foot traffic data
    - Competitors drawing traffic → Map competitor openings nearby
    - Location deterioration → Check lease dates, demographic shifts
  - **Conversion declining**:
    - Price too high → Price comparison vs competitors
    - Service poor → Mystery shop, customer satisfaction scores
    - Merchandise mix wrong → SKU-level sales analysis, inventory age
  - **Avg transaction declining**:
    - Fewer items per visit → Basket analysis over time
    - Cheaper items → Mix shift toward lower-priced SKUs
    - Discounting → Promotional calendar and margin analysis

- **Store count**: Not the issue (stable at 120 stores)

**Key insight**: 70% of the decline is driven by conversion and avg transaction — not traffic. Focus on pricing and merchandise mix rather than marketing.

## Common Pitfalls
- Branches that overlap (not MECE): e.g., splitting into "Marketing issues" and "Brand issues" when brand is part of marketing
- Missing a branch (not collectively exhaustive): e.g., analyzing Revenue and Cost but forgetting "Mix" / "Other Income"
- Going too deep too fast — spend time proportionally to importance; 80% of insight comes from first 2-3 levels
- Building the tree in your head without writing it down — externalizing your thinking is the whole point
- Forgetting to prioritize — a tree with 50 perfectly MECE leaves is still useless if you can't test them all
- Over-engineering the tree instead of using simple math relationships (Profit = Revenue - Cost is better than a vague "operational issues" branch)
- Treating the tree as the answer — it's a structure for finding the answer, not the answer itself
