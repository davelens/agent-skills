---
name: gauntlet-loop
description: Gauntlet a goal into a paste-ready Pi `/loop passes` command that works a finite checklist against a concrete reference, with one builder per failing item, one review per pass, and a hard pass budget. Use when the user asks to gauntlet a goal or loop until work beats a reference.
---

# Gauntlet Loop

Turn the user's goal into one command they can paste into Pi. Write the command; do not perform its work.

A gauntlet converges only when its finish line is finite: a checklist whose items each pass or fail by a concrete check, and a pass budget that ends the loop even while items still fail. Every rule below serves that.

## Steps

1. **Set the bar and the checklist.** Use the user's reference if it is named, fetchable, and directly comparable; otherwise offer two or three specific candidates, one line each. Draft the checklist for the recommended bar following the rules below, show both, and stop. This step is complete when the user has approved a bar that passes all three tests and a checklist that passes the sizing rule.
2. **Write the command.** Return exactly one fenced block beginning with `/loop passes`, using the template below with the budget, bar, checklist, and state file filled in. Add no preamble or narration. This step is complete when the block carries the budget, goal, bar, every item with its check, the state file path, the pass process, and the three-way exit rule.

## The bar

A useful bar is:

- **Named:** a specific artifact, product, repository, or publication.
- **Fetchable:** the loop can obtain the real thing.
- **Comparable:** each checklist item can be checked against it by command or by side-by-side capture.

Pick the bar the user needs to beat now; a later gauntlet can raise it. Include a measurable requirement when the goal has one. Add a cost ceiling only when the user supplies it.

| Goal | Bar | Check per item |
|---|---|---|
| Website, app, UI | A named live product | Captures of reference and output at the same viewport, state, and scale; `reviewer` verdict |
| Game or visual | Footage or screenshots from a named shipped title | Same capture pair; `reviewer` verdict |
| Writing | A specific published piece in the same format | Same length and format; `reviewer` verdict |
| Code or tooling | A named implementation plus its tests or benchmark | The test command green or the benchmark number met |
| Research | A named report or paper's methods section | Each method step present; `reviewer` verdict |
| Deck or document | A specific real artifact with a comparable page count | Per-section `reviewer` verdict |

## The checklist

- One item is one independently checkable piece with its check written next to it: a command plus pass condition, or a capture pair for the reviewer.
- One item is one builder's job per pass: a `worker` run under 20 minutes that moves the item toward its check; an item may take several passes.
- **Sizing rule:** one pass over every item fits in about two hours of builder time. A goal that does not fit (a full port, a rewrite, "complete the analysis") becomes one finite slice now, with the remaining slices named as later gauntlets.
- The command embeds the checklist; the loop keeps it alive in `docs/gauntlet/[SLUG].md`, one line per item with status, the exact check, its last result, and the pass that passed it.

## Command template

Write plain sentences, no headings or bullets inside the command, under 250 words plus the checklist. Put the bar's concrete URL, product, repository, title, or artifact name directly in the command. Budget: the user's number, else 5.

```text
/loop passes [BUDGET] [GOAL], scoped to the checklist below.

The bar is [BAR]. Obtain the real reference first and compare against it directly, never against a description. Checklist: [ITEM 1 — CHECK]; [ITEM 2 — CHECK]; [...].

Keep the checklist in docs/gauntlet/[SLUG].md with one line per item: status, exact check command or capture pair, last result, and the pass that passed it. Start every pass by reading that file and trusting it: rerun an item's check when its code changed, and treat recorded passes as settled. Decide every open question yourself, record the decision in the same file, and keep going; the user reviews decisions after the loop. Pass these rules into every subagent task.

Each pass: for each failing item, run one `worker` subagent with that single item, one builder at a time, then run the item's check yourself and update the file. When anything changed, run one `reviewer` subagent over everything changed this pass with the checks and captures; it returns pass or fail per item with the evidence for each fail, and its fail overrides your pass. Then call `loop_control` with `next`, listing the items still failing.

Call `loop_control` with `done` on the final pass, or earlier when every item passes or two consecutive passes add no newly passing item. The reason names every item still failing and its last result.
```

Keep requested constraints and necessary tool names. Let the running agent choose architecture, file layout, and stack unless the user specified them.

## Completion guardrails

Reject a generated command unless:

- One top-level `/loop passes [BUDGET]` owns the whole gauntlet; it contains no nested `/loop` commands.
- Every item carries a concrete check, and the checklist passes the sizing rule.
- The state file is named, read first, and trusted; open questions are decided and recorded there.
- Builders are `worker` subagents with one item each, one at a time; review is one `reviewer` run per pass.
- The exit rule has all three triggers (all items pass, final pass, two passes without a newly passing item), and the `done` reason lists the unmet items.

## Pi loop semantics

`/loop passes <N> <task>` runs at most N passes in one Pi command: `loop_control` with `next` advances, `done` exits early, and the extension ends the loop by itself after pass N. Pi's own pass prompts speak of "refinement" and "final polish"; the command text governs, and Pi re-injects it into the system prompt on every turn, so the rules survive compaction. Call `done` on the final pass so the reason carries the report; a `next` on the final pass ends the loop with no report. Pi shows progress in its loop widget; the user can abort with `/loop-stop` or `Ctrl+Shift+X`.

Every pass shares the parent's single context. Start the loop in a session on a 1M-context model; at 256K Pi compacts about hourly and the evidence behind earlier verdicts leaves the context, which is why the state file is the source of truth. The subagents extension runs one mutation-capable child per worktree and fails a second one immediately, so builders are sequential by construction; `reviewer`, `scout`, and other read-only agents can run alongside.
