---
name: project-memory
description: Use when project stores durable context in `./docs/memory/`, or when user asks to remember/save/note a project-wide fact
---

# Durable Memory

## Layout
`./docs/memory/index.md` + linked subsections (`<urlized-name>.md`).
Read `index.md` at task start; load subsections only when relevant.
Read `architecture.md` and `coding-standards.md` eagerly when present (baseline).
Create `index.md` if missing.

## Belongs in memory
High-signal, long-lived, project-wide:
- hard constraints, invariants, platforms, compliance
- naming/versioning conventions
- operational assumptions
- repeated user/team preferences

## Doesn't belong
- feature-specific behavior, schemas → wiki
- system walkthroughs → wiki
- decision records (why we chose X) → `docs/adr/`
- debugging notes, logs, TODOs, speculation
- secrets, credentials

## Rule of thumb
Applies everywhere → memory. Explains specific feature → wiki (load `project-wiki`).

## Adding memory
- Update most-specific existing subsection first.
- New file only if no fit; link from `index.md`.
- Concise, factual. Supersede stale notes — never append contradictions.
