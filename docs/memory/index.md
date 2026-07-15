# Memory Index

## Project Overview

Centralized manifest and authoring space for markdown-based agent skills installed to `~/.config/agents/skills`.

## Conventions

- **docs-* skill family**: `docs-bootstrap`, `docs-quill`, `docs-quickshell`, `docs-teamleader`, `docs-void` share one base+purpose — offline docs mirrors under `docs/memory/<product>/`, each with a `bin/sync-<product>-docs` entry point. Some are versioned (bootstrap, quill, quickshell), some unversioned single mirrors (teamleader, void).
- Shared sync plumbing (arg parsing, dep check, `--path` resolution, the `ketch` scrape wrapper) lives in **`lib/docs-mirror.sh`** at the repo root, sourced by each sync script. It sits at the root, *not* under `personal/`, because `setup.sh` symlinks every `personal/*/` as a skill — a lib there would become a bogus `lib` skill. Site-specific bits (version/page discovery, URL→file mapping, `INDEX.md` generation) stay per-script.

## Subsections

- [Bootstrap Docs Mirror](bootstrap.md) — offline markdown mirror of official Bootstrap docs, pinned by version (current: 5.3.8). Backs the `docs-bootstrap` skill.
- [Quill Docs Mirror](quill.md) — offline markdown mirror of the official Quill rich-text editor docs, pinned by version (current: 2.0.3). Backs the `docs-quill` skill.
- [Quickshell Docs Mirror](quickshell.md) — offline markdown mirror of the official Quickshell docs, pinned by version (current: 0.3.0). Backs the `docs-quickshell` skill.
- [Teamleader Focus API Docs Mirror](teamleader.md) — offline markdown mirror of the official Teamleader Focus API docs (360 endpoints + guides). Backs the `docs-teamleader` skill.
- [Void Linux Handbook Mirror](void.md) — offline markdown mirror of the official Void Linux Handbook (85 pages, mdBook, unversioned). Backs the `docs-void` skill.
