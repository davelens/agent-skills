# AGENTS.md

## Memory
Maintain durable project knowledge in `./MEMORY.md`.

Only record high-signal, long-lived information such as:
- Hard constraints (compliance, platforms, invariants)
- Naming/versioning conventions
- Operational assumptions
- Repeated user/team preferences

Do NOT include:
- Feature-specific documentation (models, schemas, how systems work) — that
  belongs in the project wiki at `documents/wiki/`
- Architectural decisions tied to a specific feature — use the wiki
- Temporary debugging details, logs, or TODOs
- Speculation or uncertain notes
- Secrets or credentials

**Rule of thumb:** MEMORY.md is for project-wide conventions and constraints
that apply everywhere. If the information describes how a specific feature or
system works, it belongs in the wiki instead.

Keep entries concise, factual, and organized under stable headings.
When decisions change, update or mark prior notes as superseded rather than
accumulating noise.
After completing work, consider whether new durable knowledge should be added
to MEMORY.md or whether a wiki entry is more appropriate.

### Startup
At the start of any task, read `./MEMORY.md` to understand persistent constraints,
decisions, and conventions before making changes or recommendations.

## Project Wiki
Maintain feature-specific documentation in `./documents/wiki/` as a tree of
markdown files. The wiki is the source of truth for *how things work*: models,
schemas, workflows, business rules, intent, and the reasoning behind a
feature. Its primary purpose is to let any LLM (or developer) link a feature's
code to its business logic and intent, so that future requests can be answered
with full context instead of guesswork.

MEMORY.md is for project-wide conventions. The wiki is for everything else.

### Structure
The wiki is organized as a navigable tree rooted at
`./documents/wiki/index.md`. Each subdirectory represents a stable top-level
namespace and contains its own `index.md` that lists the entries beneath it.

Recommended top-level namespaces (create only those that apply to the project):

- `preface.md` — short historical/contextual intro to the project
- `roadmap/` — one file per calendar year (e.g. `2026.md`, `2025.md`) plus an
  `index.md` linking them in reverse-chronological order
- `backend/` — server-side concerns (controllers, jobs, admin tooling)
- `frontend/` — client-facing flows, pages, components
- `api/` — public/internal HTTP or RPC interfaces, contracts, versioning
- `models/` — domain models, schemas, associations, and invariants
- `third-party-services/` — external integrations (one file per provider)
- Additional namespaces (e.g. `price-calculations/`, `infrastructure/`,
  `security/`) may be added when a coherent cluster of entries warrants it

A namespace may itself contain sub-namespaces (e.g.
`backend/admins/roles.md`). Each directory must have an `index.md` listing
its entries.

### Entry conventions
Every entry follows a predictable shape so it stays LLM- and human-readable:

1. **Breadcrumb** — first line links back to the parent index, e.g.
   `[Back to backend index](./index.md)`.
2. **Title** — a single `#` heading naming the feature, model, or system.
3. **Intent paragraph** — 1–3 sentences stating what this thing is and why it
   exists. Lead with the business meaning, not the implementation.
4. **Primary code reference** — if the entry centers on a file, mention its
   path on its own line (e.g. `app/models/order.rb`) so an LLM can jump
   straight to source.
5. **Body** — organized under `##` sections such as *Database schema*,
   *Models and relationships*, *Workflow*, *Where it is used*, *Edge cases*,
   *Adding a new X*. Use whichever sections genuinely apply; do not pad.
6. **Tables** for tabular data (columns, statuses, enums, role matrices).
   Fenced code blocks for association sketches, method signatures, or short
   examples. Keep code snippets minimal — link to source instead of mirroring
   it.

### Linking rules
Interlinking is what turns the wiki into a graph an LLM can traverse. Apply
these rules consistently:

- **Relative markdown links** only (e.g. `[Factories](./factories.md)`),
  never absolute paths or URLs to local files.
- **First mention of any entity** that has its own entry must be linked to
  that entry. Subsequent mentions in the same section may go unlinked for
  readability.
- **Cross-namespace references** use the appropriate relative path
  (`../frontend/wizard.md`, `../../models/order.md`).
- **Code paths** are written inline as backticked paths
  (`app/forms/backend/admin_form.rb`) — they are not markdown links, but they
  are precise enough for an LLM or editor to open.
- **Every index** lists its direct children only; deeper entries are reached
  by descending through their own index.

### When to write or update
After completing significant work — new features, models, roles, refactors,
or integrations — evaluate whether the wiki needs to change:

- New durable feature, model, or integration → add a new entry under the
  appropriate namespace and link it from that namespace's `index.md`.
- Existing entry's behavior changed → update the affected sections and add
  any new links.
- A roadmap-worthy milestone landed → append it to the current year's
  roadmap file.
- Deprecation or removal → mark the relevant sections as superseded or
  delete the entry and remove its index link.

Propose changes before writing; only commit wiki edits after the user
approves the scope. Never invent file paths, table columns, or behavior that
isn't verifiable in the codebase.

### Startup
When a task touches a feature, model, or integration, check
`./documents/wiki/` for a matching entry before making changes. If one
exists, treat it as authoritative context. If one is missing or stale, flag
it so it can be added or updated as part of the work.

