# Contributing to Master Shifu

## Adding a new framework skill

1. Create `skills/<framework-name>/SKILL.md`
2. Follow the OKF format:
   ```yaml
   ---
   type: Framework
   title: My Framework
   description: Trigger description — when to use this skill
   tags: [relevant, tags]
   sources: [Source casebooks]
   ---
   ```
3. Include: When to use, Framework structure, Step-by-step walkthrough, Example, Common pitfalls
4. Run `./validate-skills.sh` to check compliance
5. Add to the framework matcher table in `SKILL.md`

## Improving an existing skill

- Edit the SKILL.md file directly
- If the change is prompted by a task-observer observation, reference the observation file

## Adding a lens

1. Create `agent/lenses/<name>-lens.md`
2. Follow the lens template: Scrape → Extract → Analyze
3. Add to the 5-lens list in `/master-shifu` (SKILL.md)

## Running validation

```bash
./validate-skills.sh
```
