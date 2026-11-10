# agent-skills

Centralized manifest and authoring space for the agent skills I use across
projects — markdown-based instructions an LLM loads on-demand to handle
specific tasks.

Everything installs to `~/.config/agents/skills` (XDG-respecting). Each
agent reads from its own symlinked view under that directory, so installed
skills stay centralized while visibility stays agent-specific.

I'm a big fan of Matt Pocock's approach to agentic coding, so a subset of his
skills are represented here.

## Layout

| Path                  | Purpose                                                         |
|-----------------------|-----------------------------------------------------------------|
| `setup.sh`            | Bootstrap: installs and links everything.                       |
| `skills.<agent>.txt`  | Per-agent skills manifests for `pi`, `claude`, and `opencode`.  |
| `personal/`           | My own skills, symlinked into the central dir.                  |
| `bin/`                | `list` / `update` / `reset` helpers.                            |
| `AGENTS.md`           | Agent-level conventions (memory + wiki).                        |

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

1. Installs every third-party entry from `skills.pi.txt`,
   `skills.claude.txt`, and `skills.opencode.txt` via `npx skills add -g`
   into `~/.config/agents/skills`. The lockfile lands under
   `~/.local/state/skills/`.
2. Symlinks each `personal/<name>/` directory into the central target so
   edits to `SKILL.md` files take effect immediately.
3. Creates per-agent skill views at `~/.config/agents/skills/pi`,
   `~/.config/agents/skills/claude`, and
   `~/.config/agents/skills/opencode`, containing symlinks to only the
   skills listed in each agent's manifest.
4. Symlinks `bin/` into the dotfiles utilities directory so
   `u skills <cmd>` resolves.
5. If Claude Code is installed, symlinks its skills directory at
   `~/.config/claude/skills` to `~/.config/agents/skills/claude`.

Manifest entries are either third-party install refs such as
`owner/repo@skill-name`, or personal skill refs prefixed with `personal/`,
such as `personal/project-memory`.

## Daily use

| Command         | What it does                                      |
|-----------------|---------------------------------------------------|
| `skills list`   | List globally installed skills.                   |
| `skills update` | Update pinned skills against the lockfile.        |
| `skills reset`  | Wipe `~/.config/agents/skills` and the lockfile.  |

All three dispatch to `setup.sh` so paths (skills dir, lockfile) are
defined once. `list` temporarily symlinks the central dir into an
OpenCode-shaped location so `npx skills list` tags OpenCode in its output.

## Intended workflow for development tasks

The default should be how Matt Pocock explains it:

1. `grill-with-docs` or `wayfinder` to determine scope and requirements
2. `to-spec` to save made decisions 
3. `to-tickets` to convert decisions into todos
4. `implement` to start work
5. `code-review` to match the work against the spec, or catch any bugs

## Preparing a Pi goal

Invoke `/skill:prepare-goal` with the goal you want to prepare. The
[prepare-goal skill](personal/prepare-goal/SKILL.md) uses your named,
fetchable, directly comparable reference, or offers two or three concrete
candidates. It drafts a finite acceptance checklist with exact checks and
pass conditions that compare against the actual reference.

You explicitly approve the reference and checklist together before it
returns a paste-ready `/goal` command in a fenced block. It prepares the
command only; execution and lifecycle controls belong to Pi's `/goal`
extension.

## Planning large work in slices

`/skill:kickoff` turns a software migration or a medium-sized goal into a
plan of slices, each small enough for one `/goal` run, and writes the first
brief. `/skill:next-slice` resumes the plan in any later session: it reads
the plan's `Next:` line and the briefs' `## Outcome` lines, writes the next
brief and copies its `/goal` command. The text after `/skill:<name>` is the
ask.

### Starting a migration

Run it from the target repository (it may be empty) and describe the port:

```text
/skill:kickoff Port ~/Repositories/blimp/oximo (Rails 8, MySQL) to Phoenix + PostgreSQL.
Functional parity ~100%, visual ≥95%, Bootstrap 5.3, no Tailwind. Backend first, then frontend.
A copy runs on :3020 with a fresh dump and may serve as the oracle.
```

1. It reads the repository, classifies the ask as a **migration** and finds
   what it can by looking: the source commit, databases and versions.
2. It asks **one round of questions**, its recommendation first: the pin,
   the oracle and its allowed requests, structural or data parity,
   namespaces and their order, decision delegation.
3. It scouts the source and proposes the roadmap: bootstrap, then per
   namespace analysis → parity harness → cards → closure, then QA and
   final reconciliation.
4. **You approve** the roadmap or ask for changes.
5. It writes `docs/briefs/initial.md`, `docs/memory/*`,
   `docs/migration/{roadmap,status}.md`, a map stub per namespace and the
   `AGENTS.md` lines.
6. It writes the first brief (e.g. `docs/briefs/boot01-goal.md`) and puts
   `/goal docs/briefs/boot01-goal.md` on the clipboard.

### Starting a medium goal

```text
/skill:kickoff Add multi-currency pricing to the webshop: EUR/GBP, per-customer currency,
invoices in the customer's currency. Compare against Adyen's currency docs.
```

The same flow with fewer questions (the definition of done, the reference,
out of scope, delegation, systems not to touch). It writes 2–8 slices to
`docs/briefs/multi-currency-plan.md` and the first brief
`multi-currency-01-goal.md`, with its `/goal` on the clipboard. An ask that
fits one `/goal` run gets that single brief and no plan.

### The loop after kickoff

```text
/goal docs/briefs/<first>-goal.md      # paste from clipboard; runs until done/blocked
/skill:git-commit                      # commit the slice (kickoff/next-slice never commit)
/skill:next-slice                      # writes the next brief, copies its /goal
/goal docs/briefs/<next>-goal.md
…
```

Each finished slice moves the plan's `Next:` line, so a fresh session needs
only `/skill:next-slice`. With several open plans, name one:
`/skill:next-slice multi-currency`.

`/plan-loop [plan] [--max N]` (the `plan-loop` extension in `pi-config`)
runs that loop unattended, each phase in a new session, and commits every
slice. It waits when a goal is blocked, no brief was written or the commit
is missing; `/plan-loop step` retries and `/plan-loop stop` ends it.

## Adding a personal skill

1. Create `personal/<skill-name>/SKILL.md` with YAML frontmatter
   describing when the skill applies.
2. Re-run `./setup.sh` once to create the symlink — subsequent edits to
   the file take effect immediately.

Conventions for writing skill files come from the upstream
`writing-skills` skill — load it from inside an agent session.

## Agent conventions

`AGENTS.md` defines what belongs in `MEMORY.md` (durable, project-wide
context) versus a project's wiki under `docs/wiki/` (feature-specific
docs). It is read at the start of any agent task and points at the
`project-wiki` skill for wiki maintenance details.
