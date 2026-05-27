---
name: project-wiki
description: Use after a task changes a feature, model, role, integration, or domain concept. Checks `docs/wiki/` for gaps or stale entries; proposes targeted updates and writes only after user approval.
---

# Project Wiki

`docs/wiki/` = source of truth for *how things work* (models, schemas,
workflows, business rules, intent). Project-wide conventions live in
`docs/memory/`; everything else lives here.

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
4. On approval: write/update entry + parent `index.md`.

## Scope rules

- Only document what you touched.
- Use context already in session. Needs 10+ new file reads → skip.
- Missing entry beats shallow stub.
- Never invent paths/columns/behavior. Verifiable only.
- Target: <2min read, replaces 10+ file reads.

## Structure

Tree rooted at `index.md`. Each subdir = stable namespace with own
`index.md` listing direct children only. Sub-namespaces allowed
(`backend/admins/roles.md`).

Top-level (create only those that apply): `preface.md`, `roadmap/` (one
file per year, reverse-chrono), `backend/`, `frontend/`, `api/`,
`models/`, `third-party-services/`. Others (`infrastructure/`,
`security/`) when cluster warrants.

## Entry shape

1. Breadcrumb: `[Back to <parent>](./index.md)`
2. Title: single `#` naming feature/model/system
3. Intent: 1–3 sentences. Business meaning first, implementation second.
4. Primary code reference: file path on own line if entry centers on one file.
5. Body: `##` sections — *Database schema*, *Models and relationships*,
   *Workflow*, *Where it is used*, *Edge cases*, *Adding a new X*. Only
   what applies.

Tables for columns/enums. Fenced code for short examples. Link to source,
don't mirror.

**Include:** schema, relationships, scopes/methods with purpose,
consumption points, extension recipes, non-obvious business rules.

**Exclude:** prose inferable from code, project-wide conventions
(→ `docs/memory/`), aspirations, long intros.

## Linking

- Relative markdown links only. Cross-namespace: `../frontend/wizard.md`.
- First mention of entity with own entry → link. Later mentions in same section may go unlinked.
- Code paths in inline backticks, not links.
- Indexes list direct children only.
- Every page opens with back-link to parent index.
