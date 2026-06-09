---
name: project-conventions
description: Global defaults for any project. Load at session start.
---

# Project Conventions

Defaults. Project-specific conventions (coding standards, branching, etc.)
live in `./docs/memory/`.

## Rules

- `AGENTS.md`, `CLAUDE.md`, and `./docs/memory/` override any rule here.
- Perform required session-start setup silently; do not mention or explain it unless asked
- Always answer in english
- Always read these memory files when present:
  - `./docs/memory/architecture.md` 
  - `./docs/memory/coding-standards.md`
- Blank lines contain only newline character (no trailing spaces/tabs)
- Spaces, not tabs
- Comments in sentence case, not all-caps
- Bash section headers may use simple decorative borders
- Commit per finished todo when commits are workflow.
- Never `git push` without asking
- Never write to `.claude/` or `.opencode/`.
- Superpowers plans → `docs/adr/`.
- do not overwrite, revert, or remove user changes unless explicitly requested
- Before installing packages or running install scripts:
  - Verify point of origin
  - Check official registry page
  - Check repository ownership
  - Review maintainer history
  - Check package name similarity/typosquatting risk
  - Check recent suspicious releases
  - Verify package integrity/signature/checksum when available
  - Ask user if provenance is unclear
