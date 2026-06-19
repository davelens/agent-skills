# Entry Format

How to write/update a `docs/wiki/` entry. Read when creating or editing one.

## Structure

Tree rooted at `index.md`. Each subdir = stable namespace with own
`index.md` listing direct children only. Sub-namespaces allowed
(`backend/admins/roles.md`).

Top-level (create only those that apply):
- `preface.md` — brief project context/history
- `roadmap/` — one file per calendar year + `index.md` (reverse-chrono)
- `backend/` — server-side concerns
- `frontend/` — client flows and components
- `api/` — public/internal interfaces, contracts, versioning
- `models/` — domain models, schemas, associations, invariants
- `third-party-services/` — one file per external integration

Add others (`infrastructure/`, `security/`) when cluster warrants.

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
