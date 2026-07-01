---
type: Framework
title: Operations Improvement Framework
description: Process improvement, operational efficiency, productivity, lean operations. Use when improving operational processes or increasing efficiency.
tags: [operations, efficiency, process]
sources: [IIMA Prep Book, Crack the Case, KCC Casebook]
---

# /operations-improvement

## When to Use

Use this framework when the client needs to:
- Reduce costs without reducing revenue
- Improve throughput or capacity
- Streamline a manufacturing or service process
- Fix quality or defect issues
- Optimize inventory, supply chain, or logistics
- Improve labor productivity
- Scale operations efficiently

**Triggers**: "our costs are too high", "we can't keep up with demand", "quality is dropping", "our process is too slow", "we need to be more efficient".

## Framework Structure

The framework has three layers:

```
┌─────────────────────────────────────────────┐
│          1. DIAGNOSE THE PROCESS           │
│  Map flow → Identify bottlenecks → Measure  │
└─────────────────────────────────────────────┘
                     │
┌─────────────────────────────────────────────┐
│         2. EVALUATE INTERVENTIONS          │
│  Lean → Tech → Scale → People → Layout      │
└─────────────────────────────────────────────┘
                     │
┌─────────────────────────────────────────────┐
│        3. BUILD THE BUSINESS CASE          │
│  Cost-Benefit → Risk → Implementation       │
└─────────────────────────────────────────────┘
```

### Layer 1: Diagnose the Process

**A. Map the current process flow**
- Draw the end-to-end process (inputs → activities → outputs)
- Identify every step, handoff, and decision point
- Distinguish between value-added and non-value-added steps

**B. Measure key metrics at each step**
- Throughput: units per time period
- Cycle time: time from start to finish for one unit
- Capacity: maximum output under current constraints
- Defect rate: % of units requiring rework
- Utilization: % of time resources are actively working
- Wait time: idle time between steps

**C. Identify the bottleneck**
- Which step has the lowest capacity?
- Where do queues form?
- Is the bottleneck internal (staff/equipment) or external (supplier/customer)?

**D. Diagnose root causes of inefficiency**
- Use the "5 Whys" technique
- Categorize causes: People, Process, Technology, Environment
- Distinguish between symptoms and root causes

### Layer 2: Evaluate Interventions

**Lean / Waste Reduction**
- 7 Wastes (TIMWOOD): Transport, Inventory, Motion, Waiting, Overprocessing, Overproduction, Defects
- 5S: Sort, Set in Order, Shine, Standardize, Sustain
- Kanban: Pull-based workflow to reduce WIP
- Kaizen: Continuous incremental improvement

**Technology / Automation**
- RPA for repetitive manual tasks
- ERP/WMS for better information flow
- AI/ML for forecasting, quality inspection, routing

**Scale / Capacity**
- Add shifts, overtime, or temporary workers
- Purchase additional equipment
- Outsource non-core steps
- Ramp up supplier capacity

**People / Process**
- Cross-train employees for flexibility
- Standardize work procedures
- Redesign incentives around quality and throughput
- Improve scheduling and shift planning

**Layout / Flow**
- Reorganize physical layout to minimize motion
- Cellular manufacturing vs. assembly line
- Co-locate frequently communicating teams

### Layer 3: Build the Business Case

**Cost-Benefit Analysis**
- Upfront investment (CapEx): equipment, software, training, restructuring
- Ongoing costs (OpEx): maintenance, licenses, labor
- Tangible savings: labor hours, defect reduction, inventory reduction, faster throughput
- Intangible benefits: quality perception, employee morale, flexibility

**Risk Assessment**
- Implementation risk: will the change disrupt current operations?
- Adoption risk: will employees/teams resist the change?
- Scalability risk: will the fix work at higher volumes?
- Dependency risk: does the fix rely on third parties?

**Implementation Roadmap**
- Quick wins: implement in < 30 days with low investment
- Medium-term changes: 1–3 months, moderate investment
- Strategic transformations: 3–12 months, significant investment
- Define KPIs to track before/after performance

## Step-by-Step Walkthrough

### Step 1: Understand the Current Process
Map the process flow. Ask: "Walk me through how a unit moves from start to finish." Identify every step and who performs it. Collect baseline metrics: current throughput, cost per unit, defect rate, cycle time.

### Step 2: Quantify the Problem
Is it a capacity problem (not enough output), a cost problem (too expensive per unit), or a quality problem (too many defects)? Each has different interventions. Get the specific numbers: "What is current throughput vs. target?", "What is the defect rate vs. industry benchmark?"

### Step 3: Identify the Bottleneck
Calculate capacity at each step. The step with the lowest capacity is the bottleneck. Improving non-bottleneck steps will NOT increase overall throughput (Theory of Constraints). Always fix the bottleneck first.

### Step 4: Generate Improvement Options
Brainstorm 3–5 potential interventions spanning multiple categories (lean, tech, people, layout). Don't settle on the first idea. Force yourself to consider at least one option from each layer.

### Step 5: Evaluate and Recommend
Compare options on: impact (how much improvement), cost (investment required), time (how long to implement), risk (likelihood of failure). Recommend the option with the best impact-to-risk ratio. Include an implementation timeline.

## Example

**Scenario**: A mid-size furniture manufacturer has 20% defect rate on finished goods. Rework costs are eating margins. Production cycle time is 14 days; industry average is 7 days.

**Step 1 – Diagnose**: Map the process: Wood cutting → Sanding → Assembly → Finishing → Quality check → Packaging. The defect rate is 30% after finishing (paint bubbles, uneven stain). The bottleneck is the finishing station—it runs at 100% capacity while others run at 60-70%.

**Step 2 – Root Cause**: Finishing operators have inconsistent training. Humidity in the finishing room varies by season. The finishing step also lacks standardized drying times—operators rush pieces through.

**Step 3 – Interventions**:
1. *Quick win*: Standardize drying times and install humidity control ($5k, cuts defects by 10%)
2. *Medium term*: Implement a training certification program for finishing operators ($15k, cuts defects by 5%)
3. *Strategic*: Replace manual finishing with automated spray booth ($500k, cuts defects by 15% and increases throughput 40%)

**Step 4 – Recommendation**: Implement quick wins immediately. Run training program in parallel. Evaluate automated spray booth ROI after 6 months of baseline data. Target: reduce defect rate from 20% to 8% within 6 months.

## Common Pitfalls

| Pitfall | Why It's Wrong | Correct Approach |
|---------|---------------|------------------|
| Improving non-bottleneck steps | Won't increase throughput | Always find and fix the bottleneck first |
| Confusing activity with productivity | More hours ≠ more output | Measure output per unit of input |
| Only cutting costs | May damage quality or morale | Balance efficiency with effectiveness |
| Ignoring variation | Average metrics hide problems | Measure mean AND variance |
| Implementing without buy-in | Change fails without adoption | Involve frontline workers in solution design |
| Over-automating bad processes | Automating waste = faster waste | Fix the process before adding technology |
| Forgetting the human element | Process changes affect people | Plan for training, communication, and change management |
| Focusing only on direct costs | Indirect costs (rework, idle time, inventory holding) often dominate | Include total cost of operations |
