---
name: search-git-history
description: Recover history from a git repo or GitHub project — when a file/symbol was added or removed, who changed what, why a PR landed. Use when the user asks "when was X removed/added", "who changed Y", "history of Z", or any commit-log / blame / PR forensics question. Covers both local `git` and GitHub via `gh` CLI.
---

# search-git-history

History forensics on git repos and GitHub projects. Current code search (grep, ripgrep, `ketch code`) shows what *is*. This skill shows what *was* and *why it changed*.

## When to Use

- "When was `<symbol|file>` removed/added/renamed?"
- "Who last touched this line / why?"
- "What PR introduced this change?"
- "Find all commits matching topic X in repo Y"
- Recovering rationale missing from current code (commit messages, PR bodies, issue threads)

Do NOT use for searching current code state — use `ketch code` or `rg` instead.

## Quick Recipes

### Find when a path was deleted

```bash
# Clone shallow-free (need full history)
git clone --quiet https://github.com/<owner>/<repo>.git /tmp/<repo>
cd /tmp/<repo>

# Glob path across all branches, only deletions
git log --all --diff-filter=D --oneline -- '*<path-fragment>*'

# Inspect the killing commit
git show --stat --format="%h %ai %an%n%n%s%n%n%b" <sha>
```

`--diff-filter` codes: `A` added, `D` deleted, `M` modified, `R` renamed, `C` copied.

### Find when a path was first added

```bash
git log --all --diff-filter=A --oneline --follow -- <path>
```

`--follow` traces across renames (single path only).

### Find commits touching a symbol (pickaxe)

```bash
# Commits where the literal string was added/removed
git log -S '<literal>' --oneline -- '*.ts'

# Same but regex
git log -G '<regex>' --oneline
```

### Blame a line range

```bash
git blame -L <start>,<end> <file>
git log -L <start>,<end>:<file>     # full history of that range
```

### Find PR that introduced a commit (GitHub)

```bash
gh pr list --search "<sha>" --state merged --repo <owner>/<repo>
# Or directly:
gh api "repos/<owner>/<repo>/commits/<sha>/pulls" --jq '.[].html_url'
```

### Show PR with body, comments, files

```bash
gh pr view <num> --repo <owner>/<repo> --comments
gh pr diff <num> --repo <owner>/<repo>
```

### List PRs by topic / label / author

```bash
gh pr list --repo <owner>/<repo> --search "removing legacy" --state all
gh pr list --repo <owner>/<repo> --label breaking-change --state merged
gh pr list --repo <owner>/<repo> --author <user> --state all --limit 50
```

### Issues touching a topic

```bash
gh issue list --repo <owner>/<repo> --search "<terms>" --state all
```

## Workflow for "when was X removed?"

1. Clone repo to `/tmp/<repo>` (full history, not shallow).
2. `git log --all --diff-filter=D --oneline -- '*X*'` → get sha.
3. `git show --stat <sha>` → confirm scope, get author + date.
4. Map sha → PR via `gh api repos/.../commits/<sha>/pulls`.
5. `gh pr view <num> --comments` → recover rationale.
6. Report: when, who, PR number, motivation summary, what else dropped in same commit.

## Gotchas

- **Shallow clones miss history.** Default `git clone` is full; do not pass `--depth`.
- **Force-pushed branches:** `git log --all` covers refs you have; if upstream rewrote history, fetch `refs/pull/*/head` via `git fetch origin '+refs/pull/*/head:refs/remotes/origin/pr/*'` to inspect closed PRs.
- **`--follow` only takes one path.** For renames across multiple files, use pickaxe (`-S`/`-G`) instead.
- **`gh` needs auth.** `gh auth status` to verify. Public-repo reads work without scopes; PR comments may need them.
- **Date in commit ≠ merge date.** `%ai` is author date, `%ci` is committer date; PR merge timestamp comes from `gh pr view --json mergedAt`.

## Format Cheatsheet (`--format` / `--pretty`)

```
%h   short sha       %s   subject
%H   full sha        %b   body
%an  author name     %ai  author date ISO
%ae  author email    %ci  commit date ISO
```

Useful one-liner:
```bash
git log --format='%h %ai %an  %s' --all -- <path>
```
