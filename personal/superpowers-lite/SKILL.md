---
name: superpowers-lite
description: Lean plan mode for complex coding tasks. Use when a task is multi-step, risky, spans multiple files, needs design choices, or the user asks to plan before implementing. Provides enough structure to inspect, plan, execute, verify, and hand off without heavyweight ceremony.
---

# Superpowers Lite

Use this as a lightweight planning discipline for complex work. Keep it practical: no long ritual, no giant docs unless the task needs durability.

## Workflow

1. **Frame the task**
   - Restate the outcome in one sentence.
   - Identify constraints, risks, and unknowns.
   - Ask only blocking questions; otherwise inspect first.

2. **Inspect before deciding**
   - Read relevant files, docs, tests, and conventions.
   - Prefer existing patterns over new architecture.
   - For Rails/Phoenix runtime questions, use Tidewave when useful.

3. **Make a compact plan**
   - Present 3-7 ordered steps.
   - Mark risky or irreversible steps.
   - Define verification before editing.
   - For long-running or multi-session work, write a durable plan under `docs/superpowers/plans/`.

4. **Execute in small slices**
   - Change the smallest coherent piece first.
   - Keep the plan updated mentally or in the durable plan.
   - Pause and ask before destructive operations, broad rewrites, data migrations, dependency swaps, or ambiguous product decisions.

5. **Verify**
   - Run focused tests, type checks, linters, or manual checks appropriate to the change.
   - If verification cannot run, explain why and name the remaining risk.

6. **Report clearly**
   - Summarize files changed, behavior changed, and verification performed.
   - Call out follow-ups only when they are real and actionable.

## Defaults

- Prefer chat plans for normal tasks.
- Prefer durable plans only when work may outlive the current conversation.
- Do not write to `.claude` or `.opencode`.
- Never `git push` without explicit approval.
