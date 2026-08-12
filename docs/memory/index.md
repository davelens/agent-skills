# Memory Index

## Project Overview

Centralized manifest and authoring space for markdown-based agent skills installed to `~/.config/agents/skills`.

## Conventions

- **docs-reference skill**: offline third-party docs mirrors and their metadata live under [`docs/tooling/`](../tooling/index.md), outside project memory. Versioned mirrors: Bootstrap, Quill, Quickshell. Unversioned mirrors: Adyen, Teamleader, Void.
- Shared sync plumbing (arg parsing, dep check, `--path` resolution, the `ketch` scrape wrapper) lives in **`lib/docs-mirror.sh`** at the repo root, sourced by each sync script. It sits at the root, *not* under `personal/`, because `setup.sh` symlinks every `personal/*/` as a skill — a lib there would become a bogus `lib` skill. Site-specific bits (version/page discovery, URL→file mapping, `INDEX.md` generation) stay per-script.
