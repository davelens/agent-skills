#!/usr/bin/env bash
set -euo pipefail

SELF="$(readlink -f "${BASH_SOURCE[0]}")"
SCRIPT_DIR="$(cd "$(dirname "$SELF")" && pwd)"

# ── Parse arguments ─────────────────────────────────────────────
# Single source of truth for the bin/ helpers: each dispatches here so no
# path (lockfile, skills dir) is ever declared twice.
MODE=install
for arg in "$@"; do
  case "$arg" in
  install)
    MODE=install
    ;;
  update | -u | --update)
    MODE=update
    ;;
  reset)
    MODE=reset
    ;;
  list)
    MODE=list
    ;;
  -h | --help)
    cat <<'USAGE'
Usage: setup.sh [command]

Installs skills from the per-agent manifests, symlinks personal skills,
and builds the per-agent skill views.

Commands:
  install        Install/link everything (default).
  update, -u     Re-fetch managed (remote) skills to their latest versions.
                 Personal skills in personal/ are symlinked and never touched.
  reset          Wipe the central skills dir and the lockfile.
  list           List globally installed skills.
  -h, --help     Show this help and exit.
USAGE
    exit 0
    ;;
  *)
    echo "ERROR: Unknown argument '$arg' (see --help)." >&2
    exit 1
    ;;
  esac
done

UPDATE=false
[[ "$MODE" == update ]] && UPDATE=true

AGENTS=(pi claude opencode)
AGENT_SKILLS_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/agents/skills"
LEGACY_AGENT_SKILLS_DIR="$HOME/.agents/skills"
CLAUDE_CONFIG_DIR="${CLAUDE_CONFIG_DIR:-${XDG_CONFIG_HOME:-$HOME/.config}/claude}"
SKILLS_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
SKILLS_STATE_DIR="$SKILLS_STATE_HOME/skills"
SKILLS_LOCK="$SKILLS_STATE_DIR/.skill-lock.json"

# ── Filesystem helpers ──────────────────────────────────
# Point DEST at SRC as an idempotent symlink, creating DEST's parent as
# needed. This is the single owner of the "safely link" policy that used to
# be re-decided at every call site.
#   --keep-real-dir  leave a real (non-symlink) directory at DEST untouched
#                    and return 1 so the caller can log its own message.
ensure_symlink() {
  local keep_real_dir=false
  if [[ "${1:-}" == --keep-real-dir ]]; then
    keep_real_dir=true
    shift
  fi
  local src="$1" dest="$2"

  if [[ "$keep_real_dir" == true && -d "$dest" && ! -L "$dest" ]]; then
    return 1
  fi

  mkdir -p "$(dirname "$dest")"
  ln -sfn "$src" "$dest"
}

# Make DIR hold only wanted symlinks: drop any symlink that is dead (target
# gone) or whose name is absent from the WANTED set (passed by name).
# LABEL is an optional prefix for the log lines (e.g. "pi/").
sweep_symlinks() {
  local dir="$1"
  local -n wanted="$2"
  local label="${3:-}"
  local entry name

  for entry in "$dir"/*; do
    [[ -L "$entry" ]] || continue
    name="$(basename "$entry")"
    if [[ ! -e "$entry" ]]; then
      unlink "$entry"
      echo "- Removed dead symlink ${label}${name}"
    elif [[ -z "${wanted[$name]:-}" ]]; then
      unlink "$entry"
      echo "- Removed stale ${label}${name}"
    fi
  done
}

# ── reset / list short-circuit before the install flow ──────────
if [[ "$MODE" == reset ]]; then
  echo "Resetting installed skills and lockfile"
  [[ -d "$AGENT_SKILLS_DIR" ]] && rm -rf "${AGENT_SKILLS_DIR:?}"/*
  [[ -f "$SKILLS_LOCK" ]] && rm -f "$SKILLS_LOCK"
  echo "Done."
  exit 0
fi

if [[ "$MODE" == list ]]; then
  # `npx skills list -g` only tags OpenCode in its output when it can see an
  # OpenCode-shaped skills dir, so link the central dir in for the duration.
  OPENCODE_SKILLS_LINK="${XDG_CONFIG_HOME:-$HOME/.config}/opencode/skills"
  ensure_symlink "$AGENT_SKILLS_DIR" "$OPENCODE_SKILLS_LINK"
  npx skills list -g
  rm -f "$OPENCODE_SKILLS_LINK"
  exit 0
fi

# ── Check that npx and jq are available ─────────────────────────
if ! command -v npx &>/dev/null; then
  echo "ERROR: npx not found on PATH. Install Node.js (e.g. via mise, nvm, or your distro's package manager)." >&2
  exit 1
fi

if ! command -v jq &>/dev/null; then
  echo "ERROR: jq not found on PATH. Install jq via your distro's package manager." >&2
  exit 1
fi

# ── Install skills from per-agent manifests ─────────────────────
if [[ "$UPDATE" == true ]]; then
  echo "Updating skills from per-agent manifests"
else
  echo "Installing skills from per-agent manifests"
fi
mkdir -p "$AGENT_SKILLS_DIR" "$SKILLS_STATE_DIR"
cd "$SCRIPT_DIR"

TMP_SKILLS_HOME="$(mktemp -d)"
cleanup_tmp_skills_home() {
  rm -rf "$TMP_SKILLS_HOME"
}
trap cleanup_tmp_skills_home EXIT

skill_in_lockfile() {
  # $1 = full manifest line, e.g. "anthropics/skills@frontend-design"
  local name="${1##*@}"
  local source="${1%@*}"
  [[ -f "$SKILLS_LOCK" ]] || return 1
  jq -e --arg n "$name" --arg s "$source" \
    '.skills[$n].source == $s' "$SKILLS_LOCK" >/dev/null 2>&1
}

manifest_path() {
  local agent="$1"
  echo "$SCRIPT_DIR/skills.$agent.txt"
}

skill_name_from_line() {
  local line="$1"
  if [[ "$line" == *@* ]]; then
    echo "${line##*@}"
  elif [[ "$line" == personal/* ]]; then
    echo "${line#personal/}"
  else
    echo "$line"
  fi
}

is_install_ref() {
  local line="$1"
  [[ "$line" == *@* ]]
}

# The single seam over `npx skills add` — the only impure, network-touching
# step. Fetches REF into the throwaway HOME and echoes the path to the
# installed skill directory, or warns and returns non-zero. If a test
# adapter is ever wanted, this is the one function to substitute.
fetch_skill_ref() {
  local line="$1" skill_name
  skill_name="$(skill_name_from_line "$line")"

  if ! HOME="$TMP_SKILLS_HOME" XDG_STATE_HOME="$SKILLS_STATE_HOME" npx skills add "$line" -g -a universal --yes >/dev/null 2>&1 </dev/null; then
    echo "WARNING: Failed to install '$line'" >&2
    return 1
  fi

  local dir="$TMP_SKILLS_HOME/.agents/skills/$skill_name"
  if [[ ! -d "$dir" ]]; then
    echo "WARNING: Installed skill '$skill_name' was not found at $dir" >&2
    return 1
  fi

  echo "$dir"
}

install_skill_ref() {
  local line="$1"

  # Parse skill name: 'owner/repo@skill-name' -> 'skill-name'
  skill_name="$(skill_name_from_line "$line")"
  target="$AGENT_SKILLS_DIR/$skill_name"

  # Never clobber a personal skill (symlink into personal/) with a remote one.
  if [[ -L "$target" ]]; then
    echo "- $skill_name is a personal symlink, skipping."
    return 0
  fi

  # Fast path: target installed and lockfile already knows about it.
  # Bypassed with --update so we re-fetch the latest version.
  if [[ "$UPDATE" != true ]] && [[ -e "$target" ]] && skill_in_lockfile "$line"; then
    echo "- $skill_name already installed, skipping."
    return 0
  fi

  if [[ "$UPDATE" == true && -e "$target" ]]; then
    echo "- checking $line"
  else
    echo "- $line"
  fi

  installed_skill_dir="$(fetch_skill_ref "$line")" || return 0

  if [[ ! -e "$target" ]]; then
    mv "$installed_skill_dir" "$target"
    echo "- $skill_name -> $target"
  elif [[ "$UPDATE" == true ]]; then
    # Only replace when the freshly fetched copy actually differs.
    if diff -rq "$installed_skill_dir" "$target" >/dev/null 2>&1; then
      echo "- $skill_name unchanged."
    else
      rm -rf "$target"
      mv "$installed_skill_dir" "$target"
      echo "- $skill_name updated -> $target"
    fi
  else
    echo "- $skill_name already installed, skipping move."
  fi
}

declare -A seen_skill_refs=()
declare -A wanted_skill_names=()

for agent in "${AGENTS[@]}"; do
  manifest="$(manifest_path "$agent")"
  if [[ ! -f "$manifest" ]]; then
    echo "WARNING: Missing manifest $manifest" >&2
    continue
  fi

  while IFS= read -r line || [[ -n "$line" ]]; do
    [[ -z "$line" || "$line" == \#* ]] && continue

    skill_name="$(skill_name_from_line "$line")"
    wanted_skill_names[$skill_name]=1

    is_install_ref "$line" || continue
    [[ -n "${seen_skill_refs[$line]:-}" ]] && continue
    seen_skill_refs[$line]=1
    install_skill_ref "$line"
  done <"$manifest"
done

# ── Clean up local install artifacts ────────────────────────────
rm -rf "$SCRIPT_DIR/.agents" "$SCRIPT_DIR/.claude"

# ── Symlink personal skills ─────────────────────────────────────
echo ""
echo "Symlinking personal skills"

PERSONAL_SKILLS_DIR="$SCRIPT_DIR/personal"
if [[ -d "$PERSONAL_SKILLS_DIR" ]]; then
  for skill_dir in "$PERSONAL_SKILLS_DIR"/*/; do
    [[ -d "$skill_dir" ]] || continue
    skill_dir="${skill_dir%/}"
    skill_name="$(basename "$skill_dir")"
    wanted_skill_names[$skill_name]=1
    target="$AGENT_SKILLS_DIR/$skill_name"
    if ensure_symlink --keep-real-dir "$skill_dir" "$target"; then
      echo "- Symlinked $skill_name -> $skill_dir"
    else
      echo "- $skill_name already exists as directory, skipping."
    fi
  done
else
  echo "No personal skills directory found at $PERSONAL_SKILLS_DIR, skipping symlinks."
fi

# ── Remove skills no longer managed by manifests ────────────────
prune_stale_managed_skills() {
  echo ""
  echo "Pruning stale managed skills"

  if [[ -f "$SKILLS_LOCK" ]]; then
    for entry in "$AGENT_SKILLS_DIR"/*; do
      [[ -e "$entry" || -L "$entry" ]] || continue
      skill_name="$(basename "$entry")"

      for agent in "${AGENTS[@]}"; do
        [[ "$skill_name" == "$agent" ]] && continue 2
      done

      [[ -n "${wanted_skill_names[$skill_name]:-}" ]] && continue

      if jq -e --arg n "$skill_name" '.skills[$n] != null' "$SKILLS_LOCK" >/dev/null 2>&1; then
        rm -rf "$entry"
        echo "- Removed stale managed skill $skill_name"
      fi
    done

    wanted_json="$(printf '%s\n' "${!wanted_skill_names[@]}" | jq -R . | jq -s 'map(select(length > 0))')"
    tmp_lock="$(mktemp)"
    jq --argjson wanted "$wanted_json" \
      '.skills |= with_entries(select(.key as $k | $wanted | index($k)))' \
      "$SKILLS_LOCK" >"$tmp_lock"
    mv "$tmp_lock" "$SKILLS_LOCK"
  fi
}

sweep_legacy_agent_skills() {
  [[ -d "$LEGACY_AGENT_SKILLS_DIR" ]] || return 0

  echo ""
  echo "Sweeping legacy skills in $LEGACY_AGENT_SKILLS_DIR"

  for entry in "$LEGACY_AGENT_SKILLS_DIR"/*; do
    [[ -e "$entry" || -L "$entry" ]] || continue
    skill_name="$(basename "$entry")"
    rm -rf "$entry"
    echo "- Removed legacy skill $skill_name"
  done

  rmdir "$LEGACY_AGENT_SKILLS_DIR" "$HOME/.agents" 2>/dev/null || true
}

prune_stale_managed_skills
sweep_legacy_agent_skills

# ── Create per-agent skill views ─────────────────────────────────
echo ""
echo "Creating per-agent skill directories"

sync_agent_skills() {
  local agent="$1"
  local manifest="$2"
  local profile_dir="$AGENT_SKILLS_DIR/$agent"
  declare -A wanted_skills=()

  mkdir -p "$profile_dir"

  while IFS= read -r line || [[ -n "$line" ]]; do
    [[ -z "$line" || "$line" == \#* ]] && continue

    skill_name="$(skill_name_from_line "$line")"
    wanted_skills[$skill_name]=1
    source="$AGENT_SKILLS_DIR/$skill_name"
    target="$profile_dir/$skill_name"

    if [[ -e "$source" || -L "$source" ]]; then
      ensure_symlink "../$skill_name" "$target"
      echo "- $agent/$skill_name -> ../$skill_name"
    else
      echo "WARNING: $agent manifest references missing skill '$skill_name'" >&2
    fi
  done <"$manifest"

  sweep_symlinks "$profile_dir" wanted_skills "$agent/"
}

for agent in "${AGENTS[@]}"; do
  manifest="$(manifest_path "$agent")"
  if [[ -f "$manifest" ]]; then
    sync_agent_skills "$agent" "$manifest"
  fi
done

# ── Symlink skills utilities to dotfiles ────────────────────────
echo ""
echo "Symlinking binaries to dotfiles to enable \`u skills\`"

SKILLS_BIN_DIR="$SCRIPT_DIR/bin"
DOTFILES_UTILITIES_DIR="${DOTFILES_REPO_HOME:-$HOME/Repositories/davelens/dotfiles}/bin/utilities"
DOTFILES_SKILLS_UTILITY="$DOTFILES_UTILITIES_DIR/skills"

if [[ -d "$SKILLS_BIN_DIR" ]]; then
  ensure_symlink "$SKILLS_BIN_DIR" "$DOTFILES_SKILLS_UTILITY"
  echo "- skills -> $SKILLS_BIN_DIR"
else
  echo "No skills bin directory found at $SKILLS_BIN_DIR, skipping utility symlink."
fi

# ── Expose centralized skills to Claude Code ────────────────────

if [[ -d "$CLAUDE_CONFIG_DIR" || -L "$CLAUDE_CONFIG_DIR" ]]; then
  CLAUDE_SKILLS_DIR="$CLAUDE_CONFIG_DIR/skills"
  CLAUDE_AGENT_SKILLS_DIR="$AGENT_SKILLS_DIR/claude"

  echo ""
  echo "Claude installed; symlinking skills to $CLAUDE_SKILLS_DIR"

  if [[ -e "$CLAUDE_SKILLS_DIR" && ! -L "$CLAUDE_SKILLS_DIR" ]]; then
    # Real directory in the way — replace only if it holds nothing but symlinks.
    can_replace=true
    for entry in "$CLAUDE_SKILLS_DIR"/* "$CLAUDE_SKILLS_DIR"/.[!.]* "$CLAUDE_SKILLS_DIR"/..?*; do
      [[ -e "$entry" || -L "$entry" ]] || continue
      if [[ ! -L "$entry" ]]; then
        can_replace=false
        break
      fi
    done

    if [[ "$can_replace" == true ]]; then
      for entry in "$CLAUDE_SKILLS_DIR"/* "$CLAUDE_SKILLS_DIR"/.[!.]* "$CLAUDE_SKILLS_DIR"/..?*; do
        [[ -e "$entry" || -L "$entry" ]] || continue
        unlink "$entry"
      done
      rmdir "$CLAUDE_SKILLS_DIR"
      ensure_symlink "$CLAUDE_AGENT_SKILLS_DIR" "$CLAUDE_SKILLS_DIR"
    else
      echo "Claude skills directory exists at $CLAUDE_SKILLS_DIR, leaving it unchanged."
    fi
  else
    ensure_symlink "$CLAUDE_AGENT_SKILLS_DIR" "$CLAUDE_SKILLS_DIR"
  fi
else
  echo "Claude config directory not found at $CLAUDE_CONFIG_DIR, skipping."
fi

# ── Sweep dead symlinks in skills root ──────────────────────────
echo ""
echo "Sweeping dead symlinks in $AGENT_SKILLS_DIR"

sweep_symlinks "$AGENT_SKILLS_DIR" wanted_skill_names

echo ""
echo "Done."
