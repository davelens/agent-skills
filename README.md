# agent-skills

Centralized manifest and authoring space for the agent skills I use across
projects — markdown-based instructions an LLM loads on-demand to handle
specific tasks.

Everything installs to `~/.config/agents/skills` (XDG-respecting) and is
exposed to any client that reads from there, including Claude Code (via a
symlink) and opencode.

## Layout

| Path         | Purpose                                                |
|--------------|--------------------------------------------------------|
| `setup.sh`   | Bootstrap: installs and links everything.              |
| `skills.txt` | Third-party skills manifest (`owner/repo@skill-name`). |
| `personal/`  | My own skills, symlinked into the central dir.         |
| `bin/`       | `list` / `update` / `reset` helpers.                   |
| `AGENTS.md`  | Agent-level conventions (memory + wiki).               |

## Requirements

- Node.js with `npx` on `PATH`. Any source works — distro package,
  [`mise`](https://mise.jdx.dev/), `nvm`, etc.
- `jq` on `PATH` (used by `setup.sh` to skip already-installed skills).

## Setup

```bash
git clone https://github.com/davelens/agent-skills
cd agent-skills
./setup.sh
```

The script:

1. Installs every entry from `skills.txt` via `npx skills add -g` into
   `~/.config/agents/skills`. The lockfile lands under
   `~/.local/state/skills/`.
2. Symlinks each `personal/<name>/` directory into the same target so
   edits to `SKILL.md` files take effect immediately.
3. Symlinks `bin/` into the dotfiles utilities directory so
   `u skills <cmd>` resolves.
4. If Claude Code is installed, symlinks its skills directory at
   `~/.config/claude/skills` to the central one.

## Daily use

| Command         | What it does                                      |
|-----------------|---------------------------------------------------|
| `skills list`   | List globally installed skills.                   |
| `skills update` | Update pinned skills against the lockfile.        |
| `skills reset`  | Wipe `~/.config/agents/skills` and the lockfile.  |

`list` and `update` work around `npx skills`' hardcoded `~/.agents/skills`
path by temporarily symlinking through an XDG-friendly location.

## Adding a personal skill

1. Create `personal/<skill-name>/SKILL.md` with YAML frontmatter
   describing when the skill applies.
2. Re-run `./setup.sh` once to create the symlink — subsequent edits to
   the file take effect immediately.

Conventions for writing skill files come from the upstream
`writing-skills` skill — load it from inside an agent session.

## Agent conventions

`AGENTS.md` defines what belongs in `MEMORY.md` (durable, project-wide
context) versus a project's wiki under `documents/wiki/` (feature-specific
docs). It is read at the start of any agent task and points at the
`dev-project-wiki` skill for wiki maintenance details.
