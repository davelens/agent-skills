# AGENTS.md

## Memory
Record durable, project-wide context in `./MEMORY.md`: hard constraints
(compliance, platforms, invariants), naming/versioning conventions,
operational assumptions, repeated user/team preferences.

Exclude feature-specific behavior (models, schemas, workflows — those
belong in the wiki), debugging notes, logs, TODOs, speculation, and secrets.
Supersede stale notes rather than accumulating them.

### Session start
- Do not use tokens to display reasoning for startup instructions
- Load `caveman` skill
- Read `./MEMORY.md` if exists; create it otherwise
  Use template; all within `<replace>` are placeholders. Adopt their style:
  ```markdown
  # MEMORY.md

  ## Project Overview

  <replace>One-line description of project.</replace>

  ## Coding Standards

  ### All files

  - Blank lines contain only newline character (no trailing spaces/tabs)
  - Single quotes for strings unless double quotes necessary

  ```
- Load `dev-project-wiki` skill if `./docs/wiki` exists
- Load `git-commit` skill
