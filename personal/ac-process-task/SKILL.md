---
name: ac-process-task
description: Process an ActiveCollab (AC) task by ID by answering, implementing or reporting each requirement. Use when the user says "process", "investigate" or "figure out" an AC task, or points at a comment (#N) on one.
---

# Process an AC task

This skill is read-only on the ActiveCollab side: it never posts comments or changes task status.

## 1. Read the task

Read it with the `ac-read-task` skill. **Done:** its requirement list and earlier commits are in hand.

## 2. Check doubted decisions

When the user doubts an earlier decision or the brief contradicts current behaviour, search older tasks and comments with `ac-search-history` before changing anything.

## 3. Act on each requirement

Classify each listed requirement:

- **Question/investigation**: answer it with evidence (code, local data, git history).
- **Change**: implement it following the project's memory and conventions (branching, migrations, tests, commit trailer).
- **Unclear or out of scope**: ask, or report it as open.

**Done:** every requirement from step 1 is marked done, answered, or open, and the report back says which.

## Client reply

When the user asks for a client reply, write it per the project's client-communication conventions as plain text (no Markdown) to `tmp/client-reply.md`, then copy it to the user's clipboard:

```bash
if [ -n "$TMUX" ]; then tmux load-buffer -w tmp/client-reply.md; else wl-copy < tmp/client-reply.md; fi
```

`tmux load-buffer -w` reaches the clipboard of the terminal the user is attached from, including over SSH. Tell the user it is on their clipboard, and show the reply as a plain paragraph, not a blockquote.
