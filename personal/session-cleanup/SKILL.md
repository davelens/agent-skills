---
name: session-cleanup
description: Clean up Pi sessions for the current project by trashing trivial sessions and applying consistent Namespace > Area > Topic names. Use only when explicitly invoked with /skill:session-cleanup.
disable-model-invocation: true
---

# Session Cleanup

Clean unnamed Pi sessions belonging to the current working directory. Invocation explicitly authorizes naming and recoverably trashing unnamed sessions under that project's Pi session directory; do not ask for another confirmation.

## Helper

Use `<skill-directory>/bin/session-cleanup` for all inspection and mutation. Do not write ad hoc Python, parse JSONL with grep, or mutate session files directly.

The helper:

- resolves the session directory from `$PI_SESSION_FILE`
- touches only direct-child `.jsonl` files
- excludes every session whose latest `session_info.name` is non-empty
- strips injected `<skill>...</skill>` blocks and returns user text, assistant summaries, tool calls, and relevant paths
- guards mutations with file metadata and SHA-256
- never trashes the current session
- trashes with `trash`, `trash-put`, or `gio trash`, never `rm`
- appends and `fsync`s valid `session_info` records, then verifies names

Uncertainty always means keep.

## 1. Inspect

Run once:

```bash
<skill-directory>/bin/session-cleanup inspect
```

Use every entry in `unnamed`; entries already named are reported only in `named_excluded`. Inspect `user_texts`, `assistant_texts`, `tool_calls`, and the conversation's actual work—not its first message alone. Keep entries reported in `uncertain` unchanged.

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

Give every kept unnamed session a name, including the current session. Never replace an existing non-empty name.

## 4. Apply safely

Give every `unnamed` entry exactly one decision. Copy its inspection guards unchanged into the plan:

```json
{
  "trash": [
    {
      "file": "session.jsonl",
      "size": 123,
      "mtime_ns": 456,
      "sha256": "inspection digest",
      "reason": "greeting only"
    }
  ],
  "rename": [
    {
      "file": "current.jsonl",
      "size": 789,
      "mtime_ns": 101112,
      "sha256": "inspection digest",
      "name": "Backend > Orders > Fix invoice export"
    }
  ]
}
```

Pipe the plan into one command:

```bash
<skill-directory>/bin/session-cleanup apply <<'JSON'
<plan>
JSON
```

The helper trashes first, then renames. Non-current files must be byte-for-byte unchanged. Current-session transcript may have grown during classification, so the helper accepts append-only growth when the inspected prefix is unchanged. The current session's footer may show its old name until reload; persisted name still counts.

## 5. Report

Use the apply result to report:

- renamed count
- trashed count and one short reason per trashed session
- `uncertain_kept`, if any
- `not_removed` deletion candidates when no trash command was available
