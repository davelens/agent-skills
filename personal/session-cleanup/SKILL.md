---
name: session-cleanup
description: Clean up Pi sessions for the current project by trashing trivial sessions and applying consistent Namespace > Area > Topic names. Use only when explicitly invoked with /skill:session-cleanup.
disable-model-invocation: true
---

# Session Cleanup

Clean Pi sessions belonging to the current working directory. Invocation explicitly authorizes renaming and recoverably trashing sessions under that project's Pi session directory; do not ask for another confirmation.

## Rules

- Resolve the session directory with `dirname "$PI_SESSION_FILE"`. Stop if `PI_SESSION_FILE` is unset or the directory does not exist.
- Touch only `.jsonl` files directly inside that exact directory.
- Never trash the current `$PI_SESSION_FILE`.
- Parse JSONL with Python's standard library. Do not treat grep output as the session record.
- Never use `rm`. Trash with the first available command: `trash`, `trash-put`, or `gio trash`. If none exists, keep candidates and report that deletion was skipped.
- If a file changes between classification and mutation, keep it. Uncertainty always means keep.

## 1. Inspect

For every session, collect:

- latest `session_info.name`, if present
- all user text after removing injected `<skill>...</skill>` blocks
- assistant text summaries
- tool-call names and relevant file paths
- file size and modification time for the change guard

Use the conversation's actual work, not its first message alone.

## 2. Classify trash

Trash only sessions with no useful request or project work:

- empty or whitespace-only sessions
- greetings or social acknowledgements only, such as `hi`, `hello`, `thanks`, or `bye`
- obvious connectivity/test chatter with no substantive answer or tool use
- an older session used only to invoke this cleanup skill

Keep a session when any user message asks a real question, gives a task, names a domain concept, or when tools performed project work. A one-word domain command such as `models` is meaningful. A final `thanks` does not make an earlier useful session trivial.

Cleanup-only sessions are the sole exception to the tool-use guard: an older run may contain tools that only inspected, named, or trashed Pi session files. Never apply this exception to the current session or to a run containing unrelated work.

## 3. Name kept sessions

Use:

```text
<Namespace> > <Area> > <Topic under 10 words>
```

- **Namespace:** Broad product or code surface, such as `Backend`, `Frontend`, `Redesign`, or `API`. Never use the repository or project name merely because the session belongs to it.
  1. Prefer an explicit namespace in the user's task or an accurate existing name.
  2. Otherwise infer it from dominant routes, paths, or domain (`/backend` and `app/controllers/backend` imply `Backend`).
  3. For delegated sessions, infer the original work namespace; never use `subagent-*` as the namespace.
  4. Emit the namespace only for genuinely project-wide work with no better namespace.
- **Area:** Most specific feature, module, package, or skill slug. Preserve real identifiers such as `docs-teamleader`.
- **Topic:** Concrete dominant task in fewer than 10 words. Use concise sentence case; omit punctuation and filler.

Keep an existing name only when it already matches this format and accurately describes the session. Give every other kept session a name, including the current session.

## 4. Apply safely

Trash classified files first. Recheck each candidate's size and modification time immediately before trashing.

Rename by appending one valid `session_info` JSON line; never rewrite conversation history. Re-read the file immediately before appending and use:

- a unique random 8-character lowercase hex `id`
- the latest entry ID as `parentId`, or `null` when none exists
- current UTC ISO timestamp ending in `Z`
- the chosen name

Flush and `fsync` each append. The current session's footer may show its old name until reload; persisted name still counts.

## 5. Verify and report

Reparse every remaining JSONL file. Confirm its latest `session_info` name matches the chosen name and its topic contains fewer than 10 words.

Report:

- renamed count
- trashed count and one short reason per trashed session
- uncertain sessions kept, if any
- deletion candidates not removed because no trash command was available
