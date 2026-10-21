---
name: gauntlet-loop
description: Prepare a paste-ready, evidence-based Pi goal from an approved reference and finite checklist. Use when the user asks to gauntlet a goal against a concrete bar.
---

# Gauntlet Loop

Turn the user's goal into one command they can paste into Pi. Prepare the plan; do not execute it.

## Steps

1. **Approve the finish line.** Use the user's reference if it is named, fetchable, and directly comparable. Otherwise offer two or three specific candidates. Draft a finite, scoped checklist with a concrete check for each item; show the bar and checklist and wait for explicit user approval. This step ends only when both are approved.
2. **Write the command.** Return one fenced block beginning `/goal [goal text]`, with the approved reference, checklist, evidence ledger, and process below. Explain the `/goal` controls outside the block only if needed; the command itself must be paste-ready.

## Reference and checklist

A useful bar is named (specific artifact, product, repository, or publication), fetchable, and comparable through a command or side-by-side capture. Include measurable requirements supplied by the user; add no cost ceiling unless requested.

Each checklist item is one finite, independently checkable piece with its exact check and pass condition. Scope the goal to useful work that fits these criteria; split an oversized goal into a finite slice and identify later slices for user approval. For example, a UI item can require same-state, same-viewport captures against a named live product; a code item can require named implementation tests to pass.

## Goal operation

`/goal <text>` pins the goal and starts work. `/goal status` (or `/goal`) reports state and evidence; `/goal pause` durably pauses automatic continuation; `/goal resume` resumes a paused or blocked goal; `/goal clear` removes it. The goal persists across reopening, while progress follows its session branch. The model reports using `goal_control({ action: "progress" | "done" | "blocked", evidence })`; evidence must name actual checks, files, or results and be at least 20 characters. Record progress per criterion, not per pass. Rerun checks affected by relevant changes; trust recorded passing checks unaffected by later work.

The goal strip sits above Pi's editor. Active goals continue automatically when their session is reopened; paused or blocked goals wait for `/goal resume`. Main-agent interruption, child cancellation, or questionnaire cancellation pauses recovery durably, including across branch navigation. `/goal pause` stops automatic continuation, not work already running; use Escape to interrupt the current run. The extension recovers within Pi, not by restarting the Pi process.

A goal is done only when every approved criterion passes with evidence. Failed checks, missing access, permission denials, unresolved blockers, and stalled work remain unfinished; report a genuine obstacle with `blocked`, never claim success. Continue useful unfinished work, not fixed passes or polish. Preserve user approval and permission boundaries; ask the user about decisions that require their judgment.

Use at most one mutation-capable worker at a time. Follow the user's per-slice run and retry policy; a retry needs explicit user authorization when that policy requires it. Do not automatically rerun a cancelled or failed worker, or treat `/goal resume` as authorization to continue or retry it. Keep any reviewer work within the user's approved scope; recurring review agents are not required.

## Command template

```text
/goal [GOAL], scoped to the approved checklist below.

The approved bar is [NAMED, FETCHABLE REFERENCE]. Obtain the real reference and compare directly, not from a description. Acceptance checklist: [ITEM — EXACT CHECK AND PASS CONDITION]; [ITEM — EXACT CHECK AND PASS CONDITION].

Read docs/gauntlet/[SLUG].md first when resuming, and maintain it as the evidence ledger: one entry per criterion with status, exact check, latest result/evidence, and the relevant change or checkpoint. Record actual results; recheck criteria affected by relevant changes and leave unaffected passing checks settled. Keep the work finite and within the approved scope.

For broad implementation, use a planner first to divide the approved work into sequential worker slices. Work through useful unfinished criteria, respecting user approval, permissions, and the stated worker/retry policy. Use no more than one mutation-capable worker at a time. Do not repeat settled work, polish completed criteria, or automatically retry a cancelled or failed worker. Ask the user when a decision requires their approval. Report concrete evidence with goal_control action "progress" as criteria pass. Call goal_control action "done" only when every criterion passes with evidence. If an obstacle prevents completion, call "blocked" with the obstacle and evidence; otherwise continue useful unfinished work.
```
