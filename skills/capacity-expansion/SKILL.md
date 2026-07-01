---
type: Framework
title: Capacity Change Framework
description: Building new factory, adding capacity, scaling production, reducing capacity. Use when considering adding or reducing production capacity.
tags: [core, operations, quantitative]
sources: [Victor Cheng]
---

## When to Use

The client is deciding whether to add (or reduce) production capacity — building a new factory, adding a production line, expanding a warehouse, or shutting down facilities. The core tension: adding capacity costs money but enables growth; reducing capacity saves money but limits upside.

## Framework Structure

```
                    ┌─────────────────────────────────┐
                    │     CAPACITY CHANGE DECISION     │
                    │ "Should we add/reduce capacity?" │
                    └─────────────────────────────────┘
                                   │
         ┌─────────────────────────┼─────────────────────────┐
         ▼                         ▼                         ▼
   DEMAND                    SUPPLY                      COST
   ANALYSIS                  ANALYSIS                    ANALYSIS
  ┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
  │ Market growth   │    │ Industry        │    │ Investment cost │
  │ rate            │    │   capacity      │    │ Fixed + variable│
  │ Company share   │    │ Competitor      │    │ Opportunity     │
  │   growth        │    │   additions     │    │   cost          │
  │ Segment trends  │    │ Impact on       │    │ Payback period  │
  │ Demand at diff  │    │   market prices │    │ Break-even      │
  │   price points  │    │ Supply curve    │    │   utilization   │
  │ Demand curve    │    │ shifts          │    │ Cost of capital │
  └─────────────────┘    └─────────────────┘    └─────────────────┘
                                   │
                          ┌────────┴────────┐
                          ▼                 ▼
                    ADD/REDUCE           ALTERNATIVES
                    CAPACITY           ┌────────────────┐
                    ┌────────┐         │ Outsource      │
                    │ Scale  │         │ Lease vs own   │
                    │ Timing │         │ Subcontract    │
                    │ Phasing│         │ Shift work     │
                    └────────┘         │ Overtime       │
                                       │ Process        │
                                       │   improvement  │
                                       └────────────────┘
```

## Step-by-Step Walkthrough

1. **Analyze demand**: Will there be enough demand to justify the capacity?
   - Market growth rate (historical + projected)
   - Will the company grow, maintain, or lose market share?
   - Segment-specific demand trends (not just aggregate)
   - Demand elasticity: how does demand vary at different price points?
   - Build a demand curve if quantitative case

2. **Analyze supply**: What happens to industry supply?
   - Current industry capacity and utilization rates
   - Are competitors also adding capacity?
   - Supply curve: as the whole industry adds capacity, what happens to market prices?
   - IMPORTANT: Adding capacity as an industry lowers prices for everyone. If everyone builds a factory, supply exceeds demand → price drops → nobody wins.

3. **Analyze costs**:
   - Capital investment required (land, construction, equipment, permits)
   - Operating costs (labor, materials, utilities, maintenance)
   - Opportunity cost (what else could we do with this capital?)
   - Payback period: Total investment ÷ Annual incremental profit
   - Break-even utilization: What % of capacity must be utilized to cover fixed costs?
   - Cost of capital vs expected return

4. **Evaluate alternatives to building**:
   - Outsource to a third-party manufacturer
   - Lease existing capacity from another company
   - Subcontract excess demand to competitors
   - Add shifts/overtime (variable cost, no fixed commitment)
   - Process improvement to increase throughput (lean, automation)
   - Import instead of manufacture

5. **Make the recommendation**:
   - If demand is strong AND sustainable AND adding capacity won't destroy industry pricing → Build
   - If demand is uncertain or temporary → Use flexible alternatives (overtime, outsourcing)
   - If declining demand → Reduce capacity or redeploy assets
   - Consider phased approach: build in stages to de-risk

## Example: Airline Adding a New Route

**Situation**: Low-cost carrier considering adding daily flights between Mumbai and Dubai. Current capacity on the route is 5 airlines, 20 flights/day.

**Demand**: Mumbai-Dubai passenger traffic growing 8% annually. Business travelers (high WTP) 30%, leisure (low WTP) 70%. Demand analysis shows market can support ~5% more seats at current prices. Adding 3 flights/day would add 6% capacity.

**Supply**: Competitor response is likely — Emirates and SpiceJet have signaled interest in more slots. Supply curve analysis: if all airlines add capacity as planned (+12%), prices would drop 8-10%.

**Costs**: Aircraft lease ($2M/month), crew ($200K/month), landing/slots ($500K/month), fuel ($1.2M/flight). Break-even load factor: 72%. Current market average load factor: 78%.

**Analysis**: Adding 3 flights at 78% load factor is profitable. BUT if competitors also add capacity, load factor drops to 72-74% → near break-even. Risk-reward is marginal.

**Recommendation**: Enter cautiously. Start with 1 daily flight. Use existing aircraft (don't lease new ones). Monitor competitor utilization for 6 months before expanding to 3 flights. Payback period: 14 months at current utilization, 24 months if competitive response materializes.

## Common Pitfalls

- **Forgetting industry-wide supply effects**: You add a factory → industry supply increases → prices drop. Your revenue per unit drops for ALL units, not just the new ones. This market-clearing price effect can wipe out the returns from the new capacity.
- **Not considering timing**: Capacity takes 2-3 years to build. Demand may peak before it comes online, or a competitor may build first and capture the market.
- **Fixed vs variable cost confusion**: Adding capacity creates new fixed costs. If utilization is lower than expected, those fixed costs crush margins.
- **Break-even ignorance**: Know the break-even utilization before deciding. A 90% break-even factory leaves no room for error.
- **Ignoring alternatives**: Overtime, outsourcing, and process improvement are often cheaper and lower-risk than building new capacity.
- **Assuming demand is price-inelastic**: Adding capacity that lowers prices may stimulate enough demand to absorb the supply — but elasticity must be verified.
