---
type: Framework
title: Break-even Analysis
description: >-
  Investment decisions, break-even point, when will we make money, fixed vs
  variable costs. Use when evaluating when an investment will pay off or how
  many units need to be sold.
tags: [core, quantitative, finance]
sources: [Victor Cheng, IIMA Prep Book, Crack the Case, KCC Casebook]
---

# Break-even Analysis

## When to Use
- "Should we invest in this new project?"
- "How many units do we need to sell to be profitable?"
- Pricing decisions: what price covers our costs?
- Comparing make-vs-buy, build-vs-partner, or go/no-go decisions
- Evaluating the impact of cost structure changes (automation vs labor)
- Assessing risk: how sensitive is profitability to volume assumptions?

## Framework Structure

```
                     BREAK-EVEN VOLUME FORMULA

     Fixed Costs
     ───────────────────────────── = Break-even Volume (units)
     Price - Variable Cost per Unit

     Where: Price - VC = Contribution Margin (the $ per unit that covers fixed costs)

                     BREAK-EVEN REVENUE FORMULA

     Fixed Costs
     ───────────────────────────── = Break-even Revenue ($)
     Contribution Margin Ratio (CM ÷ Price)


      $
        │                     ╱
        │               ╱    ← Revenue line (= Price × Volume)
        │         ╱
        │   ╱────┴──────── ← Total Cost (= Fixed + Variable)
        │╱     │
        │       │
        │◄──────► ← Fixed Costs (constant regardless of volume)
        │
        └────────────────────────── Units Sold
                ▲
                │
          Break-even point
      (Revenue = Total Cost, Profit = 0)
```

**Key insight**: Below break-even you lose money. Above break-even, every additional unit contributes its full margin to profit.

## Step-by-Step Walkthrough

1. **Identify all fixed costs** — These do not change with volume:
   - *One-time*: equipment purchase, R&D investment, launch marketing, facility construction
   - *Recurring*: rent, salaries, insurance, administrative overhead, software licenses
   - Be careful: some costs are step-fixed (they increase at certain thresholds — e.g., need a second factory at 10K units/year)

2. **Identify all variable costs per unit** — These scale with each unit produced/sold:
   - Direct materials, direct labor (if hourly/piece-rate), packaging
   - Sales commissions, shipping, transaction fees, royalties
   - Variable overhead (utilities in production, quality testing per batch)

3. **Determine the selling price** — Current or projected:
   - Use realistic price, not list price (consider discounts, promotions, returns)
   - For multi-product businesses, calculate a weighted-average price

4. **Calculate contribution margin**:
   - CM per unit = Price - Variable Cost per unit
   - CM ratio = CM ÷ Price (tells you what % of each revenue dollar covers fixed costs)

5. **Calculate break-even point**:
   - BE Volume = Fixed Costs ÷ CM per unit
   - BE Revenue = Fixed Costs ÷ CM ratio

6. **Calculate payback period**:
   - If initial investment is $1M and annual profit after break-even is $300K, payback = 3.3 years

7. **Run sensitivity analysis** — Test key variables:
   - What if price drops 10%? → CM shrinks → BE volume rises
   - What if variable costs rise 15%? → Same effect
   - What if fixed costs are 20% higher than expected?
   - What if volume is only 80% of projection?
   - Create a simple table showing BE under different scenarios

8. **Make a recommendation** — Given the risk profile, does the investment make sense? How much buffer (margin of safety) does the projected volume have above break-even?

## Example

**SaaS startup break-even analysis:**
| Item | Value |
|---|---|
| *One-time fixed costs* | $500K (development, launch) |
| *Annual recurring fixed* | $600K ($50K/mo: hosting, salaries, office, legal) |
| *Price* | $100/customer/month = $1,200/customer/year |
| *Variable cost* | $10/customer/month (hosting, customer support, payment processing) = $120/year |
| *Contribution margin* | $1,200 - $120 = $1,080/year per customer |
| *CM ratio* | $1,080 ÷ $1,200 = 90% |
| *First-year BE volume* | $1.1M ÷ $1,080 ≈ 1,019 customers |
| *First-year BE revenue* | $1.1M ÷ 90% = ~$1.22M |
| *Payback* | If acquiring 100 customers/month, break-even in ~10 months |
| *Sensitivity*: Price drops to $80/mo | CM = $840 → BE = 1,310 customers (+29%) |
| *Sensitivity*: VC rises to $15/mo | CM = $1,140 → BE = 965 customers (−5%) |
| *Sensitivity*: FC +20% | $1.32M ÷ $1,080 = 1,222 customers (+20%) |

**Recommendation**: At 100 customers/month and current pricing, the business breaks even in ~10 months with a reasonable margin of safety. If the market supports 2,000+ customers, this is a strong investment.

## Common Pitfalls
- Forgetting that fixed costs step up at scale (need new factory, more staff at higher volumes)
- Ignoring time value of money — $1 today ≠ $1 next year; use DCF for long payback periods
- Optimistic assumptions on both price AND volume simultaneously — be realistic
- Treating all fixed costs as truly fixed (some are step-fixed or semi-variable)
- Not segmenting break-even by product line — a multi-product business needs per-product analysis
- Confusing cash break-even with accounting break-even (depreciation is a non-cash cost)
- Forgetting working capital — growth consumes cash before it generates it
- Ignoring cannibalization — new product may eat into existing product sales
