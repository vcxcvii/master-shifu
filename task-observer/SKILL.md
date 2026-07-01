---
type: Meta-Skill
title: Task Observer — Self-Improving Skill Engine
description: Watches work sessions, captures corrections and judgement calls, and turns them into skill improvements automatically. Also ingests web monitor change events and surfaces them in the next session context. Improves all consulting framework skills and itself.
tags: [meta, self-improvement, observation, learning, monitoring]
sources: [rebelytics/one-skill-to-rule-them-all]
---

# Task Observer

## What it does

Task Observer monitors sessions where Master Shifu skills are used and looks for:

1. **Corrections and adjustments** — when the user adjusts output or steers in a different direction, that's a signal a skill could be clearer.
2. **Gaps no skill covers** — when the user does something manually that could be systematised, flags as a new skill candidate.
3. **Its own blind spots** — the observer watches itself too, capturing improvements.
4. **Web monitor changes** — ingests `data/monitors/*/*/change.json` files and surfaces them as pre-session context.

## How it works

### During each session

Maintains a structured observation log:

```yaml
---
session: 2026-07-01-001
observed_skills: [profitability, market-entry, grill-case]
observations:
  - type: correction
    skill: profitability
    what_happened: User corrected cost segmentation
    suggested_fix: Add variable cost sub-breakdown
    status: pending
  - type: gap
    skill: null
    what_happened: User manually researched growth rates
    suggested_new_skill: market-research
    status: pending
  - type: self-correction
    skill: task-observer
    what_happened: Triggered on quick query
    suggested_fix: Add minimum complexity threshold
    status: pending
cross_cutting:
  - principle: All skills should include a Data Sources section
    affected_skills: [profitability, market-entry, industry-analysis]
    status: proposed
```

### Monitor ingestion

Before each session, check `data/monitors/*/*/change.json`:

```yaml
---
monitor_alerts:
  - lens: competition
    monitor: competitor-pricing
    change: Stripe pricing page — Pro plan $20→$25
    detected: 2026-07-01T06:00:00Z
    status: unread
  - lens: market
    monitor: industry-news
    change: New EV battery regulation announced
    detected: 2026-07-01T12:00:00Z
    status: unread
```

These are presented to the user at session start: *"Since your last session, 2 market changes were detected. Want me to factor them into the analysis?"*

### Review flow

1. User finishes session
2. Ask: "Any observations logged?"
3. Observer presents pending observations grouped by type + any unread monitor alerts
4. User approves/rejects/modifies each one
5. Approved changes applied to SKILL.md files
6. Monitor alerts are marked as read

## When to use

Include in session context when working with Master Shifu skills.

## Cross-links

- Reports observations to `/observations/`
- Ingests `/data/monitors/*/*/change.json`
- Suggests edits to all `/skills/*/SKILL.md`
- Updates `/CLAUDE.md` and `/AGENTS.md`
