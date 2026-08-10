# Docs Tooling

Offline third-party documentation mirrors used by the personal `docs-*` skills.
Mirror content lives here instead of `docs/memory/`, which is reserved for
concise project-wide facts and conventions.

## Mirrors

- [Bootstrap](bootstrap.md) — versioned; current mirror: 5.3.8.
- [Quill](quill.md) — versioned; current mirror: 2.0.3.
- [Quickshell](quickshell.md) — versioned; current mirror: 0.3.0.
- [Teamleader Focus API](teamleader.md) — unversioned API docs.
- [Void Linux Handbook](void.md) — unversioned rolling handbook.

Each `personal/docs-<product>/bin/sync-<product>-docs` script owns discovery,
scraping, and `INDEX.md` generation. Shared helpers live in
`lib/docs-mirror.sh`.
