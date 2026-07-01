---
type: Framework
title: Hypothesis-Driven Consulting
description: >-
  Hypothesis-driven approach, issue analysis, unknown/exploratory problems,
  first principles. Use when the problem type is unclear or when a structured
  exploratory approach is needed.
tags: [core, problem-solving, methodology]
sources: [McKinsey, Crack the Case, IIMA Prep Book]
---

# Hypothesis-Driven Consulting

## When to Use
- Starting any ambiguous consulting engagement (day 1 of a case)
- Problem has multiple possible root causes — need to focus analysis
- Time pressure — can't analyze everything, must prioritize
- Synthesizing findings — moving from data to recommendations
- First-principles thinking — questioning industry assumptions
- Peer review — stress-testing a team's conclusions
- Any situation where analysis paralysis is a risk

## Framework Structure

```
                     ┌──────────────────┐
                     │     PROBLEM      │
                     │    STATEMENT     │
                     │  "Our retail     │
                     │  sales are down  │
                     │  15% YoY"       │
                     └────────┬─────────┘
                              │
              ┌───────────────┼───────────────┐
              ▼               ▼               ▼
        ┌──────────┐   ┌──────────┐   ┌──────────┐
        │ HYPOTHESIS│   │ HYPOTHESIS│   │ HYPOTHESIS│
        │   #1     │   │   #2     │   │   #3     │
        │          │   │          │   │          │
        │"Customers │   │"A new    │   │"Our      │
        │ shifting  │   │competitor│   │locations │
        │ online"   │   │undercuts │   │are in    │
        │          │   │ prices"  │   │declining │
        │          │   │          │   │areas"    │
        └─────┬────┘   └─────┬────┘   └─────┬────┘
              │              │              │
              ▼              ▼              ▼
        ┌──────────┐   ┌──────────┐   ┌──────────┐
        │ DESIGN   │   │ DESIGN   │   │ DESIGN   │
        │ TEST     │   │ TEST     │   │ TEST     │
        │          │   │          │   │          │
        │Compare   │   │Mystery   │   │Check foot│
        │online vs │   │shop top  │   │traffic vs│
        │offline   │   │20 SKUs   │   │city avg  │
        │growth    │   │vs client │   │          │
        └─────┬────┘   └─────┬────┘   └─────┬────┘
              │              │              │
              └──────────────┼──────────────┘
                             │
                             ▼
                     ┌──────────────────┐
                     │  REVISE (which   │
                     │  hypotheses      │
                     │  survived?)      │
                     │  OR CONCLUDE     │
                     │  (we know the    │
                     │  root cause)     │
                     └──────────────────┘
```

**The iterative loop**: Hypothesize → Design test → Gather data → Analyze → Revise → Loop until convergence

## Step-by-Step Walkthrough

1. **State the problem clearly** — A single sentence that crystallizes the issue:
   - Good: "Our retail sales are declining 15% YoY"
   - Bad: "We have some issues with growth" (too vague)
   - Better: "Our retail sales are declining 15% YoY while the market is growing 3%"

2. **Generate 2-4 specific, testable hypotheses** — These are candidate root causes:
   - Use first principles: what MUST be true for this to be the cause?
   - Use industry knowledge: what typically causes this problem?
   - Use analogies: have we seen this pattern before in other companies or industries?
   - Each hypothesis should be falsifiable: "if this is true, we should see evidence X"

   *Common hypothesis types:*
   - **Problem-driven**: what's causing X? (diagnostic)
   - **Solution-driven**: will Y fix X? (evaluative)
   - **Assessment-driven**: what's the state of Z? (descriptive)

3. **Prioritize hypotheses** — Which to test first?
   - Impact priority: which hypothesis, if true, would have the biggest consequences?
   - Ease priority: which hypothesis is fastest/cheapest to test?
   - Usually: test high-impact, easy-to-test hypotheses first

4. **Design the test** — For each hypothesis, define:
   - What data would prove this hypothesis true?
   - What data would disprove it? (equally important — seek disconfirming evidence)
   - What is the specific analysis/experiment?
   - What is the source of the data?

   **Key rule**: The test must be capable of PROVING THE HYPOTHESIS WRONG. If you design a test that can only confirm, you'll fall into confirmation bias.

5. **Gather and analyze data** — Execute the tests:
   - Be rigorous: seek out data that might disprove your favorite hypothesis
   - Be honest: don't torture the data until it confesses
   - Document: what did you expect to find vs what did you actually find?

6. **Conclude or revise**:
   - Which hypotheses survived testing? Which were disproven?
   - Do you have enough evidence to conclude, or do you need new hypotheses?
   - If none of the hypotheses are supported, go back to step 2

7. **Synthesize into recommendation**:
   - "The root cause is X. Therefore, the client should do Y."
   - Connect the evidence directly to the recommendation
   - Acknowledge uncertainty: "We are 80% confident in this conclusion"

## Example

**Problem: "Our retail sales are declining 15% YoY while the market is flat."**

| # | Hypothesis | What would prove it? | What would disprove it? |
|---|---|---|---|
| 1 | Customers shifting online | Category online growth > 15% across players | Online category also flat/declining |
| 2 | Competitor undercutting prices | Competitor prices 10-20% lower on key items | Prices are comparable |
| 3 | Location traffic declining | Foot traffic down 15%+ in client stores | Traffic stable or up |
| 4 | Product mix doesn't match demand | 30% of SKUs account for 70% of decline | Decline is spread evenly |

**Testing results:**
- *Hypothesis 1*: Online category up 8%, not 15%. Partial cause, not primary.
- *Hypothesis 2*: Key competitor 15% lower on top 30 best-selling SKUs. ✓ Primary cause.
- *Hypothesis 3*: Traffic down 5%, less than sales decline. Not primary.
- *Hypothesis 4*: 30% of SKUs account for 65% of decline. Secondary cause.

**Conclusion**: Primary cause is competitor price undercutting on high-volume SKUs. Secondary: product mix erosion (outdated SKUs still in catalog). Recommend: price-match on 30 at-risk SKUs (defensive), rationalize bottom 20% of SKUs, and invest in private label (offensive differentiation).

## Common Pitfalls
- **Confirmation bias** — Seeking data that confirms your favorite hypothesis. Actively look for evidence that would prove you wrong.
- **Anchoring** — Sticking with your first hypothesis even when data contradicts it. Be willing to discard.
- **Testing too many hypotheses at once** — 2-4 is ideal. A dozen hypotheses test nothing because you spread analysis too thin.
- **Equivocal testing** — Designing tests that can only confirm, never disprove. A test must be falsifiable.
- **Skipping the "design test" step** — Gathering data without a clear idea of what will convince you. Data without a question is just noise.
- **P-hacking / data torture** — Running every possible analysis until something fits. Be honest about what the data says.
- **Solving the wrong problem** — If your problem statement is wrong, your hypotheses will be wrong too. Invest in getting the problem statement right.
- **Analysis paralysis** — The hypothesis-driven approach is meant to prevent this. If you're still stuck, your hypotheses may be too broad.
- **Ignoring disconfirming evidence** — When evidence contradicts your hypothesis, that's a finding, not a failure. Good consultants are hypothesis-driven but evidence-led.
