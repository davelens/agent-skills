---
name: prepare-goal
description: Prepare a paste-ready Pi /goal command with an approved comparison reference and finite acceptance checklist. Use when the user asks to prepare a goal or define its acceptance criteria before execution.
---

# Prepare Goal

Turn the user's goal into one command they can paste into Pi. Prepare the goal; do not execute it.

## Steps

1. **Choose the reference.** Use the user's reference if it is named, fetchable, and directly comparable: a specific artifact, product, repository, or publication. Otherwise offer two or three concrete candidates.
2. **Define acceptance.** Draft a finite, scoped checklist. Each item needs an exact check and pass condition. Include the user's measurable requirements; add no cost ceiling unless requested. Split oversized goals into a useful finite slice and identify later slices for separate approval.
3. **Get approval.** Show the reference and checklist together. Wait for explicit approval of both before writing the command.
4. **Return the command.** Fill in the template below and return one paste-ready fenced block. Leave execution and lifecycle controls to Pi's `/goal` extension.

Checks must compare against the actual reference. UI checks can require same-state, same-viewport captures; code checks can name implementation tests and expected results.

## Command template

```text
/goal [GOAL], scoped to the approved checklist below.

Reference: [NAMED, FETCHABLE REFERENCE AND LOCATION]. Obtain the actual reference and compare directly.

Acceptance checklist:
- [ITEM] — Check: [EXACT CHECK]. Pass: [PASS CONDITION].
- [ITEM] — Check: [EXACT CHECK]. Pass: [PASS CONDITION].
```
