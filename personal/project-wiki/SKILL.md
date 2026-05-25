---
name: project-wiki
description: >-
  Use after completing a significant task — new features, models, roles,
  refactors, or integrations. Checks the project wiki for gaps or stale
  entries related to the work done, proposes targeted additions or updates,
  and writes only after user approval.
---

# Maintaining the Project Wiki

`docs/wiki/` is the source of truth for *how things work* (models,
schemas, workflows, business rules, intent). `MEMORY.md` holds project-wide
conventions; the wiki holds everything else.

## When to trigger

**At task start (read-only):** when a task touches a feature, model, or
integration, check for a matching entry. Treat it as authoritative context;
flag missing or stale entries.

**After a task changed functionality:**
- New feature, model, role, or integration
- Refactor, rename, or restructure of domain concepts
- Changed behavior of an existing feature
- Roadmap-worthy milestone (append to current year's roadmap)
- Deprecation or removal (mark superseded or delete + unlink)

**Do NOT trigger** for bug fixes, typos, config changes, dependency bumps,
test-only changes, formatting, or work already fully covered.

## Workflow

1. Review what the task changed (you already have this from context).
2. Read `docs/wiki/index.md` for current structure.
3. For each affected area: entry exists? Needs updating? Or would a new
   entry meaningfully help a future agent?
4. Propose to the user in 2-3 sentences; if nothing qualifies, stop.
5. Wait for approval, then write or update the entry and its parent
   `index.md`.

## Scope discipline

- **Only document what you touched.** Do not audit the wiki.
- **Use context already in your session.** If writing requires reading 10+
  new files, skip it.
- **A missing entry beats a shallow one.** Skip rather than stub.
- **Never invent paths, columns, or behavior.** Reference only what's
  verifiable in the codebase.
- **Target:** under 2 minutes to read, replaces 10+ file reads.

## Structure

`docs/wiki/` is a tree rooted at `index.md`. Each subdirectory is a
stable namespace with its own `index.md` listing direct children only.
Sub-namespaces are allowed (e.g. `backend/admins/roles.md`).

Recommended top-level namespaces (create only those that apply):

- `preface.md` — brief project context/history
- `roadmap/` — one file per calendar year + `index.md` (reverse-chrono)
- `backend/` — server-side concerns
- `frontend/` — client-facing flows and components
- `api/` — public/internal interfaces, contracts, versioning
- `models/` — domain models, schemas, associations, invariants
- `third-party-services/` — one file per external integration

Add others (`infrastructure/`, `security/`, etc.) when a coherent cluster
warrants it.

## Entry shape

1. **Breadcrumb** — first line: `[Back to <parent>](./index.md)`.
2. **Title** — single `#` heading naming the feature/model/system.
3. **Intent** — 1–3 sentences on what it is and why. Business meaning
   first, implementation second.
4. **Primary code reference** — file path on its own line if the entry
   centers on a single file.
5. **Body** — `##` sections such as *Database schema*, *Models and
   relationships*, *Workflow*, *Where it is used*, *Edge cases*,
   *Adding a new X*. Include only what genuinely applies.

Use tables for columns/statuses/enums; fenced code blocks for short
examples. Link to source instead of mirroring it.

**Include:** schema, relationships, scopes/methods with purpose,
consumption points, extension recipes, non-obvious business rules.

**Exclude:** prose an agent can infer from code, project-wide conventions
(those live in `MEMORY.md`), aspirational notes, multi-paragraph intros.

## Linking

- **Relative markdown links** only — no absolute paths or URLs. Cross-
  namespace: `../frontend/wizard.md`.
- **First mention of any entity with its own entry must link to it.**
  Subsequent mentions in the same section may go unlinked.
- **Code paths** are inline backticks (`app/models/order.rb`), not markdown
  links.
- **Indexes list direct children only.**
- **Every page opens with a back-link** to its parent index.

## Red flags

| Thought | Action |
|---------|--------|
| "Let me also document X while I'm here" | Only document what you touched. |
| "I should explore that model more thoroughly" | Use context you already have. |
| "This needs a full architecture overview" | Write the minimum useful entry. |
| "Let me read 15 files to write a complete picture" | If it needs that much research, skip it. |
| "I'll add a quick stub for now" | Stubs waste tokens on read. Skip or write properly. |
| "I'll invent a plausible file path" | Never. Only reference verifiable paths. |
