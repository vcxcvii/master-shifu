---
type: Framework
title: Supply and Demand / Market Equilibrium
description: Market dynamics, shortage surplus analysis, equilibrium price, market clearing. Use when analyzing market dynamics, shortages, surpluses, or price equilibrium.
tags: [economics, quantitative, markets]
sources: [Victor Cheng, IIMA Prep Book, Crack the Case]
---

# /supply-demand

## When to Use

Use this framework when the client faces:
- Price changes (rising or falling)
- Shortages or surpluses in the market
- Decisions about pricing strategy
- Capacity vs. demand mismatches
- Market entry or exit decisions
- Supply chain disruptions affecting price/availability

**Triggers**: "prices are falling", "we can't meet demand", "we have excess inventory", "the market is shifting", "our margins are compressing".

## Framework Structure

```
┌──────────────────────────────────────────────┐
│       1. DEFINE THE MARKET BOUNDARIES       │
│  Product scope → Geographic scope → Time     │
└──────────────────────────────────────────────┘
                      │
┌──────────────────────────────────────────────┐
│        2. ANALYZE DEMAND SIDE               │
│  Drivers → Elasticity → Segmentation        │
└──────────────────────────────────────────────┘
                      │
┌──────────────────────────────────────────────┐
│        3. ANALYZE SUPPLY SIDE               │
│  Cost structure → Capacity → Competition     │
└──────────────────────────────────────────────┘
                      │
┌──────────────────────────────────────────────┐
│        4. FIND THE EQUILIBRIUM              │
│  Shortage / Surplus → Price signal → Shift   │
└──────────────────────────────────────────────┘
                      │
┌──────────────────────────────────────────────┐
│    5. RECOMMEND & QUANTIFY THE IMPACT       │
│  Revenue → Volume → Margin → Market share    │
└──────────────────────────────────────────────┘
```

### Step 1: Define the Market Boundaries

Before analyzing, define what market you're talking about:
- **Product scope**: Which products/substitutes? What's the relevant category?
- **Geographic scope**: Local, regional, national, global?
- **Time horizon**: Short-run (fixed capacity) vs. long-run (all factors variable)?
- **Customer segments**: Are there distinct groups with different demand curves?

### Step 2: Analyze the Demand Side

**Demand Drivers**
- Price of the product (law of demand: higher price → lower quantity demanded)
- Consumer income (normal vs. inferior goods)
- Prices of substitutes and complements
- Tastes, preferences, trends
- Expectations about future prices
- Number of buyers in the market

**Price Elasticity of Demand**
- Elastic (|E| > 1): Price change causes larger % change in quantity. Luxury goods, many substitutes.
- Inelastic (|E| < 1): Price change causes smaller % change in quantity. Necessities, few substitutes.
- Unit elastic (|E| = 1): Revenue-maximizing price.
- Key insight: If demand is elastic, lowering price increases total revenue. If inelastic, raising price increases revenue.

**Demand Shifts vs. Movement Along Curve**
- Movement along curve: price change only
- Shift in demand: change in income, preferences, substitutes, complements, expectations, or number of buyers

### Step 3: Analyze the Supply Side

**Supply Drivers**
- Price of the product (higher price → higher quantity supplied)
- Input costs (raw materials, labor, energy)
- Technology and productivity
- Number of sellers in the market
- Regulations and taxes
- Expectations about future prices

**Cost Structure**
- Fixed vs. variable costs (determines flexibility)
- Economies of scale (does cost per unit fall with volume?)
- Marginal cost curve (shapes the supply curve)

**Industry Structure**
- Perfect competition (many sellers, identical products): price takers
- Monopolistic competition (many sellers, differentiated): some pricing power
- Oligopoly (few sellers): strategic interdependence
- Monopoly (one seller): price setter

### Step 4: Find the Equilibrium

**Market Clearing**
- Equilibrium: Qd = Qs at price P*
- Shortage: Qd > Qs → price pressure upward
- Surplus: Qs > Qd → price pressure downward

**Shifts and New Equilibrium**
- Demand increases → price ↑, quantity ↑
- Demand decreases → price ↓, quantity ↓
- Supply increases → price ↓, quantity ↑
- Supply decreases → price ↑, quantity ↓
- When both shift, direction of price or quantity may be ambiguous—quantify magnitudes

**Comparative Statics**
- "What happens to P and Q if input costs rise AND consumer preferences shift?"
- Trace the logic: which curve shifted first? By how much? Use ranges if directional ambiguity.

### Step 5: Recommend and Quantify

- Quantify revenue impact: ΔP × ΔQ (consider elasticity)
- Quantify cost impact: changed input costs, scale effects
- Net profit impact = ΔRevenue - ΔCosts
- Market share implications
- Strategic response: adjust pricing, capacity, product mix, or market positioning

## Step-by-Step Walkthrough

### Step 1: Set the Baseline
What is the current price, quantity, and total revenue? What are current costs and margins? Establish the equilibrium position before the change.

### Step 2: Identify What Changed
Was it a demand-side shock or a supply-side shock? If both moved, which was primary? Pinpoint the trigger event.

### Step 3: Analyze Elasticities
Is demand elastic or inelastic? Can customers easily switch? Are there close substitutes? This determines the magnitude of the price/quantity response.

### Step 4: Estimate New Equilibrium
Draw the shift. If demand increases by 15% but supply is capacity-constrained, most of the adjustment is in price, not quantity. Use ranges.

### Step 5: Quantify Client Impact
Calculate the effect on the client's revenue and profit. Consider both price and volume effects. If the client is a price taker, the analysis is simpler. If they have pricing power, model their optimal response.

### Step 6: Recommend Response
Should the client raise/lower prices? Invest in capacity? Enter/exit the market? Change product mix? Hedge input costs?

## Example

**Scenario**: A coffee chain sees coffee bean prices rising 40% year-over-year due to drought in Brazil. They want to know how to protect margins.

**Step 1 – Market**: Specialty coffee beans (arabica), global market, short to medium run.

**Step 2 – Demand**: Demand for coffee is relatively inelastic (few substitutes for caffeine, habitual consumption). The chain's customers are slightly more elastic (can switch to competitors). Estimate Ed ≈ -0.3.

**Step 3 – Supply**: Drought reduced Brazilian harvest by 25%. Supply curve shifted left. Coffee is a competitive commodity market. Short-run supply is very inelastic (takes years to plant new trees).

**Step 4 – Equilibrium**: Supply decreased sharply. With inelastic demand, prices rise significantly. Quantity falls modestly. Total revenue to producers increases (since demand is inelastic).

**Step 5 – Client Impact**: The chain's input costs rise 40%. They can pass through some of the increase to customers (demand is inelastic), but not all (competition). If they raise prices 15%, they may lose 4.5% of volume (15% × 0.3 elasticity). Net revenue effect: +10.5% from price, -4.5% from volume = +6% net. But costs rose 40% on beans (which are ~30% of total COGS). So COGS rises 12% overall. Net margin impact depends on their markup.

**Step 6 – Recommendation**: Raise prices 15-20% to pass through most of the cost increase. Launch a loyalty program to retain volume. Lock in forward contracts at current prices to hedge further increases. Introduce a cheaper robusta blend as a substitute offering.

## Common Pitfalls

| Pitfall | Why It's Wrong | Correct Approach |
|---------|---------------|------------------|
| Confusing shift vs. movement along | Saying "demand increased" when price fell | A price change moves along the curve; only non-price factors shift the curve |
| Ignoring elasticity | Assuming price change = proportional revenue change | Check elasticity to predict revenue direction |
| Treating all customers as one segment | Different segments have different elasticities | Segment before analyzing demand response |
| Forgetting time horizon | Short-run and long-run elasticities differ | Specify the time horizon in your analysis |
| Only analyzing one side | Markets are two-sided | Always check both supply AND demand |
| Assuming equilibrium exists | Price controls, regulations, or power dynamics may prevent clearing | Check for external constraints |
| Overlooking substitutes | "No competitors" doesn't mean no substitutes | Define the market broadly enough |
| Ignoring input costs | Supply analysis must include cost structure | Check if higher input prices are squeezing margins |
