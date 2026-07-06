---
name: brief-pipeline
description: "Brief pipeline: scout → planner → gate → worker. Use when executing docs/briefs/ or when another skill needs gated implementation from a spec."
---

Pipeline: **brief** → `scout` → `planner` → **gate** → `worker`. You are parent orchestrator. Children receive the full brief directly; prior outputs supplement it. The brief **routes** model + thinking by tier.

## Steps

1. **Resolve the brief.** Locate an explicit path, pasted text, or the newest file in `docs/briefs/`. If none exists and the request is too thin, ask before dispatch. Read it in full; it is the authoritative spec. Done when you have the brief content and its path, or know it was pasted inline.

2. **Route.** Classify the brief into a **tier** and resolve each phase's expanded model string with `:level` suffix (see [Routing](#routing)). Done when scout, planner, and worker each have an exact model string.

3. **Scout.** Dispatch `scout` (async, then `wait()`) with the routed model. Pass the brief and ask which files, patterns, constraints, and integration points bear on the work. Done when scout's `context.md` names the files and constraints the plan must respect.

4. **Plan.** Dispatch `planner` (async, then `wait()`) with the routed model. Pass the brief plus scout context. Done when `plan.md` covers the brief as ordered, checkable implementation steps with validation.

5. **Gate.** Decide whether approval is required (see [The gate](#the-gate)). If yes, present the plan and **stop**; do not dispatch `worker` in the same turn. Dispatch `worker` only after explicit approval. If the user requests changes, loop back to step 4 with the brief, scout context, previous plan, and feedback. Done when you have explicit approval or confirmed pre-authorised gate skip.

6. **Build.** Dispatch `worker` (async, then `wait()`) with the routed model. Pass the brief, scout context, and approved or pre-authorised `plan.md`. It is the sole writer for the worktree. Done when it reports changed files, validation run, and remaining issues — failures included.

## The gate

Gate = user approval before code gets written. Default: **require** approval.

Skip only when the brief or user pre-authorises it: "no gate", "just build it", "no sign-off needed", or explicit implement-without-review wording. When unsure, gate.

## Routing

Each phase pins model **and** thinking through the `:level` suffix on the model string; no separate thinking parameter exists (`model: "claude-bridge/claude-fable-5:high"`). Levels: `off, minimal, low, medium, high, xhigh`.

Honour a tier named in the brief; otherwise infer it:

| Tier | When | scout | planner | worker |
|------|------|-------|---------|--------|
| `simple` | small, local, low-risk edits | `claude-bridge/claude-sonnet-5:low` | `openai-codex/gpt-5.5:medium` | `claude-bridge/claude-sonnet-5:medium` |
| `default` | normal feature work | `claude-bridge/claude-sonnet-5:medium` | `openai-codex/gpt-5.5:high` | `claude-bridge/claude-opus-4-8:high` |
| `dangerous` | refactors, migrations, concurrency, security-sensitive code | `claude-bridge/claude-fable-5:medium` | `claude-bridge/claude-opus-4-8:high` | `claude-bridge/claude-fable-5:high` |

A brief may override any cell explicitly (e.g. "worker: opus high", or a routing block naming model + level per phase); explicit brief directive wins. When silent, use `default`. When two tiers seem plausible, pick the higher.

## Notes

Subagent mechanics live in `pi-subagents`; this skill defines only pipeline shape and gate.
