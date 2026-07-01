---
type: Framework
title: Market Sizing / Guesstimate
description: >-
  Estimate market size, TAM SAM SOM, guesstimate problems. Use when asked to
  estimate the size of a market or solve a guesstimate.
tags: [core, quantitative, estimation]
sources: [Crack the Case, IIMA Prep Book, KCC Casebook]
---

# Market Sizing / Guesstimate

## When to Use
- "How big is the market for X?"
- "Estimate the market size for a new product"
- Guesstimate questions in interviews: "How many X are sold in Y per year?"
- TAM / SAM / SOM segmentation for investment decisions
- Prioritizing which markets to enter (bigger markets get more resources)
- Validating a business idea: is the market large enough to matter?

## Framework Structure

```
                         ┌──────────────────────────────┐
                         │         TAM                  │
                         │  Total Addressable Market    │
                         │  (Overall global demand)     │
                         │                              │
                         │  ┌────────────────────────┐  │
                         │  │         SAM            │  │
                         │  │ Serviceable Available  │  │
                         │  │ (We can reach/regulate)│  │
                         │  │                        │  │
                         │  │  ┌──────────────────┐  │  │
                         │  │  │       SOM        │  │  │
                         │  │  │ Serviceable      │  │  │
                         │  │  │ Obtainable       │  │  │
                         │  │  │ (Realistic share) │  │  │
                         │  │  └──────────────────┘  │  │
                         │  └────────────────────────┘  │
                         └──────────────────────────────┘
```

**Two main approaches — use both to triangulate:**

**Top-Down**: Start with a large known number, apply percentages to narrow down
**Bottom-Up**: Start with unit economics (one customer/one transaction), scale up

**Side note**: There is no single "right answer" in a guesstimate. The interviewer is evaluating your logic, structure, and comfort with numbers — not whether you land on $4.2B vs $4.8B.

## Step-by-Step Walkthrough

1. **Clarify the question** — What market exactly? What geography? What year? B2B or B2C? (e.g., "US coffee market" — is this retail coffee sold, total coffee consumption, or coffee shop revenue?)

2. **Choose your approach**:
   - Top-down: good for broad consumer markets where you know population figures
   - Bottom-up: good for niche/b2b markets where you know unit economics
   - Demand-side: (# customers) × (frequency per year) × (average price)
   - Supply-side: (# providers) × (capacity/provider) × (utilization rate) × (price)

3. **Structure the equation** before doing any math — write it out verbally:
   - "I'll estimate the US coffee market by calculating: number of coffee drinkers × cups per day × days per year × cost per cup"

4. **State assumptions clearly** — Numbers don't need to be perfect, but they must be reasonable and justified:
   - "I assume US population is ~330M"
   - "I assume ~70% of adults drink coffee"
   - "I assume the average coffee drinker consumes 2 cups per day"
   - "I assume the average cost per cup including home-brewed is ~$1.00"

5. **Do the math** — Round aggressively, use scientific notation:
   - 330M × 70% = 231M drinkers
   - 231M × 2 cups = 462M cups/day
   - 462M × 365 = ~169B cups/year
   - 169B × $1.00 = $169B → That seems high. Let me reconsider average cost.

6. **Sanity check**: Does the answer pass the smell test?
   - US coffee market is commonly cited as ~$50-80B total (including retail, food service, home)
   - If my number is way off, where did my assumptions go wrong?
   - Common benchmarks: US auto market ~$1T, US beer market ~$100B, US smartphone market ~$80B

7. **Refine and triangulate**: Use a second method to validate
   - Bottom-up: specialty coffee shops in US (~35K) × avg revenue ($500K) = ~$17.5B + grocery/retail coffee ($15B) + fast food coffee ($10B) + home consumption ($8B) = ~$50B

## Example

**"How big is the US coffee market?"**

*First pass (top-down, demand):*
- US population: 330M
- % who drink coffee: 70% → 231M drinkers
- Cups per day: 2 (1 at home, 1 purchased) → 462M cups/day
- Days per year: 365 → ~169B cups/year
- Avg cost: $0.50 (home) + $4.00 (purchased) = blended ~$2.25
- Total: ~169B × $2.25 = ~$380B → Too high! Overestimates frequency and cost.

*Second pass (refined):*
- Home consumption: 231M × 1 home cup × 365 × $0.50 = ~$42B
- Out-of-home: 231M × 0.4 purchased cups × 365 × $3.50 = ~$118B
- Total: ~$160B → Still high but closer. 

*Third pass (supply-side sanity check):*
- Starbucks US revenue: ~$28B (public data)
- Dunkin': ~$10B
- Other chains + independents: ~$15B
- Grocery/retail coffee: ~$18B
- Office + food service: ~$8B
- Total: ~$79B → This aligns with industry estimates.

**Conclusion**: The US coffee market is roughly $75-85B. My top-down estimate was too high because I overestimated frequency (not everyone drinks 2 cups daily) and blended average cost.

## Common Pitfalls
- Wrong order of magnitude — always check: is this in millions, billions, or trillions?
- Forgetting to double-check math — walk through calculations verbally
- Opaque assumptions — every assumption must be stated and justified
- Not triangulating with a second method — always try to validate
- Overcomplicating — a reasonable 3-minute estimate beats an overly detailed 10-minute one
- Forgetting population segments (children don't drink coffee, elderly drink less soda, etc.)
- Confusing revenue with profit — market size is revenue, not profit
- Double-counting (e.g., counting coffee beans sold to roasters AND roasted coffee sold to consumers)
