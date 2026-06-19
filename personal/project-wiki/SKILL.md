---
name: project-wiki
description: Use after a task changes a feature, model, role, integration, or domain concept. Checks `docs/wiki/` for gaps or stale entries; proposes targeted updates and writes only after user approval.
---

# Project Wiki

`docs/wiki/` = source of truth for *how things work* (models, schemas,
workflows, business rules, intent).

## When to trigger

**Task start (read-only):** if task touches a feature/model/integration,
read matching entry. Flag missing/stale.

**After functional change:** new feature/model/role/integration, refactor
or rename of domain concepts, changed behavior, roadmap milestone (append
to current year), deprecation/removal.

**Skip:** bug fixes, typos, config, dep bumps, tests-only, formatting,
work already covered.

## Workflow

1. Read `docs/wiki/index.md`.
2. For each affected area: exists? stale? would new entry help future agent?
3. Propose to user in 2-3 sentences. Nothing qualifies → stop.
4. On approval: write/update entry + parent `index.md`, per
   [ENTRY-FORMAT.md](./ENTRY-FORMAT.md).

## Scope rules

- Only document what you touched.
- Use context already in session. Needs 10+ new file reads → skip.
- Missing entry beats shallow stub.
- Never invent paths/columns/behavior. Verifiable only.
- Target: <2min read, replaces 10+ file reads.

Structure, entry shape, and linking rules → [ENTRY-FORMAT.md](./ENTRY-FORMAT.md).
Read it before writing or updating any entry.
