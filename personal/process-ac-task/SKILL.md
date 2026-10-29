---
name: process-ac-task
description: Read and process an ActiveCollab task by ID, including its comments and attachments. Use when the user says "process", "investigate", "look at", or "figure out" an AC task, or points at a specific comment (#N) on one.
---

# Process an AC task

The task is the brief. Usually it is a client request in Dutch, often forwarded from an e-mail. This skill is read-only on the ActiveCollab side: it never posts comments or changes task status.

## 1. Read the task in one call

```bash
ac-tui --task <task id>
```

This refreshes the task from the API and prints its name, HTML body, every comment oldest first as `## Comment #N by <author>, <date>`, and each attachment as `- <name>: <local path>`. When the user says "comment #N", they mean that number in this output.

- `task ... not in cache`: run `ac-tui --sync <project id>` (look up the project via `search-activecollab-history` if unknown), then retry.
- `refresh failed; showing cached data`: continue, but tell the user that the comments may be stale.

Read the attachments from the printed paths. Read images directly. Extract `.docx`/`.xlsx` (ZIP archives) into a scratch `tmp/ac-<task id>/` directory inside the project; keep the cache files untouched.

**Done:** every requirement from the body and the relevant comment range (through later corrections, not only the comment the user named) is listed.

## 2. Recover history

Run `git log --all -i --grep "AC-<task id>"` for earlier work on the same task. When the user doubts an earlier decision or the brief contradicts current behaviour, search older tasks and comments with `search-activecollab-history` before changing anything.

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
