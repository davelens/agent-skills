# AGENTS.md

## Memory
Record durable, project-wide context in `./MEMORY.md`: hard constraints
(compliance, platforms, invariants), naming/versioning conventions,
operational assumptions, repeated user/team preferences.

Exclude feature-specific behavior (models, schemas, workflows — those
belong in the wiki), debugging notes, TODOs, speculation, and secrets.
Supersede stale notes rather than accumulating them.

### Startup
Read `./MEMORY.md` at the start of any task.

## Project Wiki
`./documents/wiki/` holds feature-specific docs — the source of truth for
*how things work*. At the start of any task touching a feature, model, or
integration, check for a matching entry and treat it as authoritative
context; flag missing or stale ones. The `dev-project-wiki` skill owns
conventions and post-task maintenance.
