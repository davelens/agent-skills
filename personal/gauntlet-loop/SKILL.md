---
name: gauntlet-loop
description: Gauntlet a goal into a paste-ready Pi `/loop goal` command that iterates builders and fresh critics against a concrete reference. Use when the user asks to gauntlet a goal or loop until work beats a reference.
---

# Gauntlet Loop

Turn the user's goal into one command they can paste into Pi. Write the command; do not perform its work.

## Steps

1. **Set the bar.** Use the user's reference if it is named, fetchable, and directly comparable. Otherwise offer two or three specific candidates, one line each, and stop. This step is complete when the user has picked a bar that passes all three tests.
2. **Write the command.** Return exactly one fenced block beginning with `/loop goal`, using the template below. Add no preamble or narration. This step is complete when the block contains the full goal, bar, relevant comparison mode, iteration process, and binary completion criterion.

## The bar

A useful bar is:

- **Named:** a specific artifact, product, repository, or publication.
- **Fetchable:** the critic can obtain the real thing.
- **Comparable:** the critic can judge it side by side with the output.

Prefer the hardest reachable bar. Include a measurable requirement when the goal has one. Add a budget or cost ceiling only when the user supplies it.

| Goal | Bar |
|---|---|
| Website, app, UI | A named live product captured at matching viewports |
| Game or visual | Footage or screenshots from a named shipped title |
| Writing | A specific published piece in the same format |
| Code or tooling | A named implementation plus its tests or benchmark |
| Research | A named report or paper's methods section |
| Deck or document | A specific real artifact with a comparable page count |

## Command templates

Choose the applicable branch and adapt it to the goal. Write 120–180 words in plain sentences, with no headings or bullets inside the command. Put the bar's concrete URL, product, repository, title, or artifact name directly in the command.

### Visual

```text
/loop goal Build [VISUAL GOAL].

The bar is [BAR]. Obtain the real reference first. Capture it and our output at the same viewports, states, and scale so they can be compared directly.

Split the work into the smallest independently judgeable visual pieces. On each iteration, run builders for every unbuilt or losing piece as parallel Pi subagents. After they finish, run separate harsh critics with fresh context. Each critic inspects the actual captures side by side with labels removed, chooses which is better, and names the single biggest remaining gap. Verdicts are binary; praise and scores are irrelevant.

At the end of each iteration, call `loop_control` with `next` while any piece loses, summarizing the remaining gaps. Call it with `done` only when every piece wins blind and every measurable requirement passes.
```

### Non-visual

```text
/loop goal [WRITE OR BUILD NON-VISUAL GOAL].

The bar is [BAR]. Obtain the exact reference artifact first and compare against it directly, not against a description. Normalize format, length, inputs, and environment where applicable; for code or tooling, also run the reference's tests or benchmark.

Split the work into the smallest independently judgeable pieces. On each iteration, run builders for every unbuilt or losing piece as parallel Pi subagents. After they finish, run separate harsh critics with fresh context. Each critic compares the actual artifacts blind, chooses which is better, and names the single biggest remaining gap. Verdicts are binary; praise and scores are irrelevant.

At the end of each iteration, call `loop_control` with `next` while any piece loses, summarizing the remaining gaps. Call it with `done` only when every piece wins blind and every measurable requirement passes.
```

Keep requested constraints and necessary tool names. Let the running agent choose architecture, file layout, decomposition, and stack unless the user specified them.

## Completion guardrails

Reject a generated command unless:

- One top-level `/loop goal` owns the whole gauntlet; it contains no nested `/loop` commands.
- Builders and critics are separate Pi subagents, and each critic starts with fresh context after its builder finishes.
- Critics inspect real output against the fetched bar and return a blind, harsh, binary verdict.
- The only successful exit is every piece beating the bar and every measurable requirement passing. There is no pass or round limit.

## Pi loop semantics

`/loop goal <description>` combines goal definition and open-ended looping in one Pi command. `loop_control` with `next` advances to another iteration, while `done` exits. Pi injects the loop state into every iteration and displays progress in its loop widget. The user can abort with `/loop-stop` or `Ctrl+Shift+X`.
