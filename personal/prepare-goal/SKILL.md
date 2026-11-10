---
name: prepare-goal
description: Prepare a paste-ready Pi /goal command with an approved comparison reference and finite acceptance checklist. Use when the user asks to prepare a goal or define its acceptance criteria before execution.
---

# Prepare Goal

Turn the user's goal into one command they can paste into Pi. Prepare the goal; leave execution and lifecycle controls to the `/goal` command from the `plan-loop` extension in `pi-config`.

A goal too large for one `/goal` run ([sizing](../next-slice/BRIEF.md#sizing)) needs a plan: point to `/skill:kickoff` and stop.

## Steps

1. **Choose the reference.** Use the user's reference if it is named, fetchable, and directly comparable: a specific artifact, product, repository, or publication. Otherwise offer two or three concrete candidates.
2. **Define acceptance.** Draft a finite, scoped checklist. Each item needs an exact check against the actual reference and a pass condition: UI checks can require same-state, same-viewport captures; code checks can name implementation tests and expected results. Include the user's measurable requirements; add no cost ceiling unless requested.
3. **Get approval.** Show the reference and checklist together. Wait for explicit approval of both before writing the command.
4. **Return the command.** Fill in the template below and return one paste-ready fenced block.

## Command template

```text
/goal [GOAL], scoped to the approved checklist below.

Reference: [NAMED, FETCHABLE REFERENCE AND LOCATION]. Obtain the actual reference and compare directly.

Acceptance checklist:
- [ITEM] — Check: [EXACT CHECK]. Pass: [PASS CONDITION].
- [ITEM] — Check: [EXACT CHECK]. Pass: [PASS CONDITION].
```
