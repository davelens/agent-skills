---
name: project-memory
description: Use when project stores durable context in `./docs/memory/`, or when user asks to remember/save/note a project-wide fact
---

# Durable Memory

## Layout
`./docs/memory/index.md` + linked subsections (`<urlized-name>.md`).
Read `index.md` at task start; load subsections only when relevant.
Create `index.md` if missing.

## Belongs in memory
High-signal, long-lived, project-wide:
- hard constraints, invariants, platforms, compliance
- naming/versioning conventions
- operational assumptions
- repeated user/team preferences
- architecture decisions

## Doesn't belong
- feature-specific behavior, schemas → `./docs/wiki/`
- system walkthroughs → wiki
- debugging notes, logs, TODOs, speculation
- secrets, credentials

## Rule of thumb
Applies everywhere → memory. Explains specific feature → wiki.

## Adding memory
- Update most-specific existing subsection first.
- New file only if no fit; link from `index.md`.
- Concise, factual. Supersede stale notes — never append contradictions.

## Safety
No overwrite/revert/remove user changes unless asked.
