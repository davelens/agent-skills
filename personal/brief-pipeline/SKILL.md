---
name: brief-pipeline
description: Run a document brief through a scout → planner → worker subagent pipeline, with a client-approval gate before any implementation. Use when the user hands you a brief (e.g. from docs/briefs/) to execute, says "run this brief", "kick off the flow", or wants recon → plan → build orchestrated from a spec.
---

Orchestrate a brief into shipped work through three subagent phases — `scout`, `planner`, `worker` — separated by a **gate**: the `worker` never starts until the plan is approved. You are the parent orchestrator; each phase runs as a child subagent, and the **brief** is the single source of truth every phase reads directly, never a telephone-game summary of the phase before it.

## Steps

1. **Resolve the brief.** Locate the source document: an explicit path, pasted text, or the newest file in `docs/briefs/`. If none exists and the request is too thin to act on, ask the user for it before dispatching anything. Read it in full — it is the authoritative spec you pass to every later phase. Done when you hold the brief's content and its path (or know it was pasted inline).

2. **Scout.** Dispatch `scout` (async, then `wait()`) to recon the codebase against the brief. Give it the brief content and the concrete question: which files, patterns, constraints, and integration points bear on this work. Done when scout's `context.md` handoff is in hand and names the files and constraints the plan must respect.

3. **Plan.** Dispatch `planner` (async, then `wait()`), passing **both** the brief and scout's context — not scout's context alone. Done when a `plan.md` exists that covers the brief's intent as an ordered, checkable set of implementation steps with a validation approach.

4. **Gate.** Decide whether approval is required (see [The gate](#the-gate)). If it is, present the plan to the user and **stop** — do not dispatch `worker` in the same turn. The `worker` is dispatched only after the user replies with explicit approval; a plan merely shown is not a plan approved. If the user requests changes, loop back to step 3 with their feedback and re-gate. Done when you have either recorded explicit approval or confirmed the brief/user pre-authorised skipping the gate.

5. **Build.** Dispatch `worker` (async), passing the brief and the **approved** `plan.md`. It is the sole writer for the worktree. Done when the worker reports changed files, the validation it ran, and any remaining issues — reported back to the user faithfully, failures included.

## The gate

The gate is the point of this pipeline; without it, scout → planner → worker is just a chain the agent would run anyway. Default to **requiring** approval — this is the client's OK before code gets written on their behalf.

Skip the gate only when the brief or the user has pre-authorised it — e.g. "no gate", "just build it", "no sign-off needed", or a brief that explicitly says implement without review. When skipped, go straight from step 3 to step 5. When unsure, gate.

## Notes

- Feed each phase the **brief document** plus the prior phase's artifact, so no phase works off a degraded copy of the spec.
- Prefer `async: true` and `wait()` between phases; keep the write path single-threaded — only the `worker` edits the worktree.
- Subagent mechanics (chains, `{previous}`, file-only output, resume) live in the `pi-subagents` skill; this skill only defines the pipeline shape and the gate.
