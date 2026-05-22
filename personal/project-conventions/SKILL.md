---
name: project-conventions
description: List of conventions and assumptions to make for any project
---

# Project conventions and assumptions

## Instructions
- Use skill at session start
- Respect conventions defined in AGENTS.md or CLAUDE.md that contradict any of the ones defined below

## Quick Reference
- Blank lines must be truly empty.
- Use spaces, not tabs, unless project guidance says otherwise.
- Comments use normal sentence case, not all-caps.
- Bash section headers may use simple decorative borders.
- When commits are part of the workflow, make proper git commits per finished todo item.
- Never `git push` without asking.
- Do not write to `.claude` or `.opencode`.
- Superpowers plans go in `docs/adr`

## Common Mistakes
- Overriding defined conventions in AGENTS.md
- Writing files in tool-specific hidden directories
- Using tabs where project conventions require spaces
- Writing all-caps comments
- Ignoring project document-location conventions
- `git push` without asking.
