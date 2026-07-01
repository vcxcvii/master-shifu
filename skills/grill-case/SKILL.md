---
type: Framework
title: Grill - Problem Clarification Engine
description: Clarify business problems, challenge assumptions, stress-test thinking, surface hidden constraints. Use standalone to pressure-test any business problem before analysis. Also auto-invoked by /master-shifu.
tags: [questioning, clarification, methodology]
sources: [mattpocock/grill-me, Crack the Case, KCC Casebook]
---

# /grill-case

## When to Use

Use this framework standalone when:
- The problem statement is vague, ambiguous, or ill-defined
- You need to pressure-test assumptions before committing to analysis
- Multiple stakeholders disagree on what the problem actually is
- A proposed solution feels premature or insufficiently challenged
- You want to systematically surface hidden constraints, risks, or blind spots
- The user says "grill this" or "stress-test this idea"

**Triggers**: "/grill-case", "grill this", "pressure test", "challenge my thinking", "what am I missing", "does this make sense".

This framework is also auto-invoked by `/master-shifu` as a clarifying co-pilot when the master-shifu system detects ambiguity in the initial problem statement.

## Framework Structure

```
┌──────────────────────────────────────────────────┐
│     PHASE 1: CLARIFY THE INITIAL STATEMENT     │
│  What → Why now → Who says → Evidence level     │
└──────────────────────────────────────────────────┘
                        │
┌──────────────────────────────────────────────────┐
│     PHASE 2: CHALLENGE CORE ASSUMPTIONS        │
│  Problem → Cause → Solution → Context → Data    │
└──────────────────────────────────────────────────┘
                        │
┌──────────────────────────────────────────────────┐
│     PHASE 3: SURFACE HIDDEN DIMENSIONS         │
│  Constraints → Stakeholders → Second-order      │
└──────────────────────────────────────────────────┘
                        │
┌──────────────────────────────────────────────────┐
│     PHASE 4: DIAGNOSE GAPS & PRESCRIBE         │
│  What's solid → What's weak → Next steps        │
└──────────────────────────────────────────────────┘
```

### Phase 1: Clarify the Initial Statement

Interrogate the problem statement itself:

**The "What" Questions**
- "What, exactly, is the problem? Can you state it in one sentence?"
- "What would success look like? How would we measure it?"
- "What is the scope—what's included and what's excluded?"
- "What is the decision we're trying to make?"

**The "Why Now" Questions**
- "Why is this coming up now? What changed?"
- "How long has this been a problem?"
- "What happens if we do nothing? Is there a deadline?"

**The "Who" Questions**
- "Who defined this problem? Who benefits from this framing?"
- "Who else has a stake in the outcome?"
- "Who says this is the right problem to solve?"

**The Evidence Questions**
- "What data supports the claim that this is a problem?"
- "How reliable is that data? What's its source?"
- "What counter-evidence exists?"

### Phase 2: Challenge Core Assumptions

Systematically identify and challenge every underlying assumption:

**Assumptions About the Problem**
- "Is this actually the root problem, or is it a symptom?"
- "What would have to be true for this to NOT be a problem?"
- "Who disagrees that this is the problem? Why might they be right?"

**Assumptions About the Cause**
- "What is the assumed root cause? Is there evidence for it?"
- "What alternative causes could explain the same symptoms?"
- "What would disprove your theory of causation?"

**Assumptions About the Solution**
- "What solution are you leaning toward? Why?"
- "What assumptions does that solution depend on?"
- "If that solution failed, what would be the most likely reason?"
- "What solutions are you NOT considering? Why not?"

**Assumptions About Context**
- "What external factors are assumed stable? (economy, regulation, competition, technology)"
- "What would change if those factors shifted?"
- "What are you assuming about customer/user behavior?"

**Assumptions About Data**
- "What data are you using? Is it complete and current?"
- "What data would you need to disprove your hypothesis?"
- "Are you measuring what matters or what's easy to measure?"

### Phase 3: Surface Hidden Dimensions

**Hidden Constraints**
- Time: Is there a real deadline or a self-imposed one?
- Budget: What is the actual budget constraint?
- Resources: What people, skills, or assets are limited?
- Politics: Are there organizational or stakeholder constraints not being stated?
- Legal/Regulatory: Are there compliance issues that limit options?

**Hidden Stakeholders**
- "Who else is affected by this decision?"
- "Who has veto power? Who can kill this initiative?"
- "Who benefits from the status quo? Who loses if things change?"

**Second-Order Effects**
- "If this solution works perfectly, what problems might it create?"
- "What are the unintended consequences—for other parts of the organization, for customers, for competitors?"
- "What's the worst-case scenario? What's the best case?"
- "Is this solving a problem or just moving it elsewhere?"

### Phase 4: Diagnose Gaps & Prescribe

**What's Solid**
- Which parts of the problem statement are well-defined?
- Which assumptions are backed by good evidence?
- Which dimensions have been thoroughly explored?

**What's Weak**
- Where is the problem statement ambiguous?
- Which assumptions are least supported?
- What hidden dimensions remain unexplored?
- What would most change the analysis if it were different?

**Prescription**
- "Before proceeding, you need to clarify X."
- "The weakest assumption is Y—here's how to test it."
- "You're missing perspective Z—talk to these stakeholders."
- "Consider the opposite framing: what if the problem is actually A, not B?"
- "Here are the 3 most important questions to answer before moving forward."

## Step-by-Step Walkthrough

### Step 1: Receive and Reflect
Read the user's problem statement. Identify the key claim, the proposed approach (if any), and the decision being made.

### Step 2: Clarify
Ask the Phase 1 questions. Get the user to state the problem precisely. Push for specifics: scope, timing, evidence, stakeholders.

### Step 3: Challenge
Go through each assumption category. For each one, state the assumption explicitly, then challenge it. "You're assuming X. What if X is false?"

### Step 4: Surface Hidden Dimensions
Ask about constraints, stakeholders, and second-order effects. These are the dimensions people most often miss.

### Step 5: Synthesize
Summarize what's strong, what's weak, and what needs further investigation. Give 2-3 specific next steps.

## Example

**User**: "We need to cut costs by 20% in our marketing department."

**Phase 1 – Clarify**:
- "What, exactly, is included in 'marketing department'? All marketing spend including headcount, or just external spend?"
- "Why 20%? Is that an arbitrary target or tied to a specific profit goal?"
- "Who defined this as the solution? Is there a mandate, or is this an exploratory question?"
- "What data shows that marketing is over-budget relative to benchmarks?"

**Phase 2 – Challenge**:
- "You're assuming cutting marketing spend is the right solution to a profit problem. What if the real issue is revenue?"
- "You're assuming a 20% cut won't damage revenue generation. Is that supported?"
- "You're assuming all marketing spend is equally valuable. Have you segmented by ROI?"
- "What if competitors are increasing marketing spend right now?"

**Phase 3 – Surface**:
- "Is there an unstated constraint (e.g., the CEO is pressuring for cuts)?"
- "Who in marketing would resist? Could this cause key departures?"
- "If you cut 20%, what second-order effects might occur—slower pipeline, lower brand awareness, weaker competitive position?"

**Phase 4 – Prescribe**:
- "Clarify the goal: is it cutting costs specifically, or improving profitability overall? Those are different problems."
- "Before cutting, segment marketing spend by ROI. Don't cut high-ROI activities."
- "Test the assumption that marketing is over-funded by benchmarking against competitors and industry norms."
- "Consider alternatives: can you improve marketing efficiency without cutting budget? Better targeting, better channels, better analytics?"

## Common Pitfalls

| Pitfall | Why It's Wrong | Correct Approach |
|---------|---------------|------------------|
| Accepting the problem as given | The problem statement is often a symptom, not the root cause | Interrogate the framing before solving |
| Challenging everything equally | Wastes time on solid assumptions while missing weak ones | Prioritize: find the weakest assumptions first |
| Being confrontational, not collaborative | People shut down when they feel attacked | Frame challenges as curiosity: "Help me understand..." |
| Forgetting to ask "why now" | Without urgency, there's no context for the decision | Timing reveals real constraints |
| Ignoring politics and stakeholders | Most failures are organizational, not analytical | Map stakeholders and their interests |
| Stopping at first-order effects | The most important impacts are often second-order | Ask "and then what?" repeatedly |
| Not suggesting alternatives | Criticism without construction isn't useful | Challenge AND offer alternative framings |
| Grilling too late | Best to challenge assumptions before analysis, not after | Use grill as a pre-analysis step |
