---
name: brief-pipeline
description: "Gated brief execution: scout → planner → approval → worker. Use when executing docs/briefs/ or when another skill needs implementation from a spec."
---

Pipeline: **brief** → `scout` → `planner` → **gate** → `worker`. You are the orchestrator. The brief is authoritative; child reports supplement it.

## Steps

1. **Resolve the brief.** Use an explicit path, pasted text, or the newest file in `docs/briefs/`. If none exists and the request is too thin, ask before dispatch. Read it in full. Done when you have the complete brief and its path, or know it was pasted inline.

2. **Scout.** Run `subagent({ action: "run", agent: "scout", task: "..." })` with a self-contained task containing the full brief. Ask for relevant files, existing patterns, constraints, integration points, and validation commands. Done when the returned report gives exact evidence the plan can use.

3. **Plan.** Run `subagent({ action: "run", agent: "planner", task: "..." })` with a self-contained task containing the full brief and scout report. Ask for an ordered, checkable implementation plan covering every requirement, affected file, dependency, risk, and validation step. Done when each brief requirement maps to an implementation step and an acceptance check.

4. **Gate.** Apply [The gate](#the-gate). When approval is required, present the planner report and stop. Continue only after explicit approval. Requested changes loop back to step 3 with the brief, scout report, previous plan, and feedback. Done when approval is explicit or the gate was pre-authorised for skipping.

5. **Build.** Run `subagent({ action: "run", agent: "worker", task: "..." })` with a self-contained task containing the full brief, scout findings, and approved plan. The worker is the sole writer. Done when its report names changed files, validation performed, and remaining issues, including failures.

6. **Verify.** Check the worker report against every plan step and brief requirement. Run a focused reviewer only when risk or unresolved evidence warrants it. Done when the parent can account for every requirement or reports what remains.

## The gate

Approval before writing is the default. Skip only when the brief or user explicitly pre-authorises implementation without sign-off, such as “no gate”, “just build it”, or “no sign-off needed”.

## Async operation

The pipeline is sequential, so foreground runs are the default. If the user explicitly wants control returned during a stage:

1. Start that stage with `async: true` and retain its run ID and report path.
2. Stop the pipeline for the current turn.
3. On continuation, call `subagent({ action: "status", runId: "..." })`.
4. When complete, read the saved report and continue with the next stage. Use `action: "stop"` to abort it.

Only one mutation-capable async agent may run per working directory. Every foreground and async run already writes a recoverable report under `~/.config/agents/pi/reports/`; do not ask children to create duplicate `context.md` or `plan.md` artifacts.

## Agent configuration

Model, thinking, fallback models, and tools belong to each agent’s Markdown definition and effective `/subagents` settings. This pipeline does not override them per run.
