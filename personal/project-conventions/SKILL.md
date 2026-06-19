---
name: project-conventions
description: Global defaults for any project
---

# Project Conventions

Defaults. Project-specific conventions (coding standards, branching, etc.)
live in `./docs/memory/`.

## Doc homes

Where each kind of doc lives. Create only those that apply. Rules per home
live in the owning skill, not here.

| Path | Holds | Owner |
|------|-------|-------|
| `./CONTEXT.md` | domain glossary (ubiquitous language) | `grill-with-docs` |
| `./docs/adr/` | decision records (why we chose X) | `grill-with-docs` |
| `./docs/briefs/` | agent briefs / task prompts (intent *before* build) | user |
| `./docs/memory/` | living project-wide facts, constraints, conventions | `project-memory` |
| `./docs/wiki/` | how features/models work *now* | `project-wiki` |

## Rules

- `AGENTS.md`, `CLAUDE.md`, and `./docs/memory/` may contradict any individual rules
- Perform required session-start setup silently; do not mention or explain it unless asked
- Always answer in english
- Spaces, not tabs (where applicable)
- Blank lines contain only newline character (no trailing spaces/tabs)
- Comments in sentence case, not all-caps
- Bash section headers may use simple decorative borders
- Never `git push` without asking
- Never write to `.claude/` or `.opencode/`.
- Do not overwrite, revert, or remove user changes unless explicitly requested
- Edits inside the project root are always allowed; ask before editing anything outside it
- Never run destructive commands (e.g. `rm -rf`) against paths outside the project root
- Before installing packages or running install scripts:
  - Verify point of origin
  - Check official registry page
  - Check repository ownership
  - Review maintainer history
  - Check package name similarity/typosquatting risk
  - Check recent suspicious releases
  - Verify package integrity/signature/checksum when available
  - Ask user if provenance is unclear
