---
name: project-conventions
description: Global defaults for any project. Load at session start. Project's `AGENTS.md`, `CLAUDE.md`, or `./docs/memory/` overrides these.
---

# Project Conventions

Defaults. Project-specific conventions (coding standards, branching, etc.)
live in `./docs/memory/` and override these.

## Rules

- Blank lines truly empty (no trailing whitespace).
- Spaces, not tabs.
- Comments in sentence case, not all-caps.
- Bash section headers may use simple decorative borders.
- Commit per finished todo when commits are workflow.
- Never `git push` without asking.
- Never write to `.claude/` or `.opencode/`.
- Superpowers plans → `docs/adr/`.
