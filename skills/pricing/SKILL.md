---
type: Framework
title: Pricing Strategy Framework
description: Pricing decisions, competitor price changes, monetization strategy, price optimization. Use when the user asks about price, pricing, monetization, or revenue optimization.
tags: [core, strategy, finance]
sources: [Victor Cheng, Crack the Case, IIMA Prep Book, Wharton Casebook]
---

## When to Use

The client needs to set a price for a new product, respond to a competitor price change, improve pricing strategy, or optimize revenue through pricing. Pricing is the most common specialized case type after profitability.

## Framework Structure

```
                    ┌────────────────────────────────────┐
                    │         PRICING DECISION            │
                    │ "What price should we charge?"      │
                    └────────────────────────────────────┘
                                   │
         ┌─────────────────────────┼─────────────────────────┐
         ▼                         ▼                         ▼
   COST-BASED              COMPETITOR-BASED           VALUE-BASED
  ┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
  │ Cost-plus       │    │ Price matching  │    │ WTP research    │
  │ Mark-up on COGS │    │ Penetration     │    │ Perceived value │
  │ Target return   │    │   pricing       │    │ Price           │
  │ Break-even      │    │ Skim pricing    │    │   discrimination │
  │ analysis        │    │ Loss leader     │    │ Willingness to  │
  │                  │    │ Price signaling │    │   pay curve     │
  │ Sets the FLOOR  │    │ Parity pricing  │    │ Van Westendorp  │
  │ (min price)     │    │                  │    │ Conjoint        │
  └─────────────────┘    │ Sets the        │    │                  │
                          │ REFERENCE       │    │ Sets the        │
                          │ (market price)  │    │ CEILING         │
                          └─────────────────┘    │ (max price)     │
                                                  └─────────────────┘

                PRICE ELASTICITY OF DEMAND
          ┌─────────────────────────────────────────┐
          │  %Δ Quantity Demanded                   │
          │  ──────────────────────  = Elasticity   │
          │    %Δ Price                             │
          │                                         │
          │  Elastic (>1): price cut → revenue ↑    │
          │  Inelastic (<1): price ↑ → revenue ↑    │
          └─────────────────────────────────────────┘
```

## Step-by-Step Walkthrough

1. **Understand the product**: Is it new or existing? Commodity or differentiated? B2B or B2C? Who pays? Who decides?

2. **Cost-based analysis (floor price)**:
   - Calculate unit cost (fixed + variable)
   - Determine break-even price
   - Apply target margin (e.g., 20% markup on COGS)
   - Cost sets the absolute minimum you can charge

3. **Competitor-based analysis (reference price)**:
   - What do competitors charge for similar products?
   - Is the market at a certain price point ($9.99, $49, $199, etc.)?
   - Pricing strategies: penetration (low to gain share), skim (high to maximize early revenue), parity (match market), premium (charge more, justify with value)
   - How will competitors respond to your price change?

4. **Value-based analysis (ceiling price)**:
   - What is the product worth to the customer?
   - Economic value to customer (EVC): calculate the $ savings or revenue gain the customer gets from your product vs next-best alternative
   - Willingness to pay: Van Westendorp price sensitivity meter, conjoint analysis, A/B testing
   - Price discrimination: segment customers by WTP and charge different prices (versioning, time-based, volume discounts, geographic)

5. **Price elasticity**:
   - Elastic demand (luxury goods, substitutes available): price increase → revenue drops
   - Inelastic demand (necessities, no substitutes): price increase → revenue rises
   - Calculate the impact of a price change on revenue and profit

6. **Common scenarios**:
   - **Price war**: Should we match a competitor's cut? Usually no — price wars destroy industry profits. Compete on value, features, service instead.
   - **Premium pricing**: Can we justify a higher price? Only if differentiation is real, visible, and valued by the customer segment.
   - **Bundling**: Package products together at a discount → increases total revenue, shifts mix, reduces customer price sensitivity on individual items.
   - **Subscription vs one-time**: Lower upfront price, higher LTV if retention is strong.

7. **Recommendation**: Specific price point, pricing model (per-unit, subscription, tiered, freemium), and rationale based on the interplay of the three pillars.

## Example: Pharma Company Pricing a New Drug

**Situation**: Biotech developed a novel cholesterol drug. Clinical trials show it reduces LDL by 55% (vs 35% for generic statins). Side effects are minimal. Cost to manufacture: $200/patient/year. R&D cost: $2B.

**Cost-based floor**: $200 + amortized R&D ($200/patient at 10M patients over 10 years) = $400/year absolute minimum.

**Competitor reference**: Generic statins: $300/year. Branded statins: $2,000/year. PCSK9 inhibitors: $14,000/year.

**Value-based ceiling**: Cardiovascular event avoidance saves $50K-100K per avoided heart attack. If drug reduces event rate by 20% vs statins, value to insurers is ~$3,000-5,000/year per patient. Insurance is willing to pay if cost < savings from avoided events.

**Recommendation**: Price at $4,500/year — below PCSK9 alternatives, above branded statins, and justified by clinical outcomes. Negotiate volume discounts with large insurers. Patient assistance for uninsured.

## Common Pitfalls

- **Ignoring elasticity**: Price increases when demand is elastic destroy revenue. Always estimate elasticity before changing prices.
- **Cost-plus without market reality**: "Cost + 30%" ignores what customers will pay and what competitors charge. Beautiful margin, zero sales.
- **Price cuts that trigger a race to the bottom**: Your price cut to gain share forces competitors to match → everyone's margins compress → nobody wins.
- **One price for all**: Price discrimination captures more value. Segments have different WTP — charge accordingly.
- **Forgetting the 4Ps**: Price interacts with Product, Promotion, and Place. A premium price needs premium positioning, premium distribution, and premium promotion.
- **Confusing price with value**: Low price doesn't mean good value. High price doesn't mean bad value. Value = benefits ÷ price. Communicate benefits.
