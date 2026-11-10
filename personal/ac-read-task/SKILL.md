---
name: ac-read-task
description: Read an ActiveCollab (AC) task by ID through `ac-tui`, with its comments, subtasks, attachments and earlier commits. Use whenever work starts from an AC task ID.
---

# Read an AC task

The task is the brief. Usually it is a client request in Dutch, often forwarded from an e-mail. Reading is read-only on the ActiveCollab side: it never posts comments or changes task status.

## Steps

1. **Fetch the task and its subtasks.**

   ```bash
   ac-tui --task <task id>
   ac-tui --subtasks <task id>
   ```

   `--task` refreshes the task from the API and prints its name, HTML body, every comment oldest first as `## Comment #N by <author>, <date>`, and each attachment as `- <name>: <local path>`. When the user says "comment #N", they mean that number in this output. `--subtasks` prints a checklist, open first: `- [ ] <name> (<assignee>, due <date>)`.

   - `task ... not in cache`: run `ac-tui --sync <project id>` (look up the project with `ac-search-history` if unknown), then retry.
   - `refresh failed; showing cached data`: continue, and tell the user the comments and subtasks may be stale.

2. **Read the attachments** from the printed paths. Read images directly. Extract `.docx`/`.xlsx` (ZIP archives) into a scratch `tmp/ac-<task id>/` directory inside the project; keep the cache files untouched.

3. **Find earlier work**: `git log --all -i --grep "AC-<task id>"`.

**Done:** every requirement from the body, the relevant comment range (through later corrections, not only a comment the user named) and every open subtask is listed, and earlier commits for the task are named or confirmed absent.
