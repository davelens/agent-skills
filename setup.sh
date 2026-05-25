#!/usr/bin/env bash
set -euo pipefail

ME=${BASH_SOURCE[0]/\.\//}
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENTS=(pi claude opencode)
AGENT_SKILLS_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/agents/skills"
CLAUDE_CONFIG_DIR="${CLAUDE_CONFIG_DIR:-${XDG_CONFIG_HOME:-$HOME/.config}/claude}"
SKILLS_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
SKILLS_STATE_DIR="$SKILLS_STATE_HOME/skills"

# ── Check that npx and jq are available ─────────────────────────
if ! command -v npx &>/dev/null; then
  echo "[$ME] ERROR: npx not found on PATH. Install Node.js (e.g. via mise, nvm, or your distro's package manager)." >&2
  exit 1
fi

if ! command -v jq &>/dev/null; then
  echo "[$ME] ERROR: jq not found on PATH. Install jq via your distro's package manager." >&2
  exit 1
fi

# ── Install skills from per-agent manifests ─────────────────────
echo "[$ME] Installing skills from per-agent manifests"
mkdir -p "$AGENT_SKILLS_DIR" "$SKILLS_STATE_DIR"
cd "$SCRIPT_DIR"

SKILLS_LOCK="$SKILLS_STATE_DIR/.skill-lock.json"

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

install_skill_ref() {
  local line="$1"

  # Parse skill name: 'owner/repo@skill-name' -> 'skill-name'
  skill_name="$(skill_name_from_line "$line")"
  target="$AGENT_SKILLS_DIR/$skill_name"

  # Fast path: target installed and lockfile already knows about it.
  if [[ -e "$target" || -L "$target" ]] && skill_in_lockfile "$line"; then
    echo "[$ME] - $skill_name already installed, skipping."
    return 0
  fi

  echo "[$ME] - $line"
  if ! HOME="$TMP_SKILLS_HOME" XDG_STATE_HOME="$SKILLS_STATE_HOME" npx skills add "$line" -g -a universal --yes >/dev/null 2>&1 </dev/null; then
    echo "[$ME] WARNING: Failed to install '$line'" >&2
    return 0
  fi

  installed_skill_dir="$TMP_SKILLS_HOME/.agents/skills/$skill_name"
  if [[ -e "$target" || -L "$target" ]]; then
    echo "[$ME] - $skill_name already installed, skipping move."
  elif [[ -d "$installed_skill_dir" ]]; then
    mv "$installed_skill_dir" "$target"
    echo "[$ME] - $skill_name -> $target"
  else
    echo "[$ME] WARNING: Installed skill '$skill_name' was not found at $installed_skill_dir" >&2
  fi
}

declare -A seen_skill_refs=()
for agent in "${AGENTS[@]}"; do
  manifest="$(manifest_path "$agent")"
  if [[ ! -f "$manifest" ]]; then
    echo "[$ME] WARNING: Missing manifest $manifest" >&2
    continue
  fi

  while IFS= read -r line || [[ -n "$line" ]]; do
    # Skip empty lines, comments, and local skill names.
    [[ -z "$line" || "$line" == \#* ]] && continue
    is_install_ref "$line" || continue
    [[ -n "${seen_skill_refs[$line]:-}" ]] && continue
    seen_skill_refs[$line]=1
    install_skill_ref "$line"
  done <"$manifest"
done

# ── Clean up local install artifacts ────────────────────────────
rm -rf "$SCRIPT_DIR/.agents" "$SCRIPT_DIR/.claude"

# ── Symlink personal skills ─────────────────────────────────────
echo "[$ME]"
echo "[$ME] Symlinking personal skills"

PERSONAL_SKILLS_DIR="$SCRIPT_DIR/personal"
if [[ -d "$PERSONAL_SKILLS_DIR" ]]; then
  for skill_dir in "$PERSONAL_SKILLS_DIR"/*/; do
    [[ -d "$skill_dir" ]] || continue
    skill_dir="${skill_dir%/}"
    skill_name="$(basename "$skill_dir")"
    target="$AGENT_SKILLS_DIR/$skill_name"
    if [[ -L "$target" && -e "$target" ]]; then
      echo "[$ME] - $skill_name already symlinked, skipping."
    elif [[ -d "$target" && ! -L "$target" ]]; then
      echo "[$ME] - $skill_name already exists as directory, skipping."
    else
      ln -sfn "$skill_dir" "$target"
      echo "[$ME] - Symlinked $skill_name -> $skill_dir"
    fi
  done
else
  echo "[$ME] No personal skills directory found at $PERSONAL_SKILLS_DIR, skipping symlinks."
fi

# ── Create per-agent skill views ─────────────────────────────────
echo "[$ME]"
echo "[$ME] Creating per-agent skill directories"

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
      ln -sfn "../$skill_name" "$target"
      echo "[$ME] - $agent/$skill_name -> ../$skill_name"
    else
      echo "[$ME] WARNING: $agent manifest references missing skill '$skill_name'" >&2
    fi
  done <"$manifest"

  for entry in "$profile_dir"/*; do
    [[ -e "$entry" || -L "$entry" ]] || continue
    skill_name="$(basename "$entry")"
    if [[ -L "$entry" && ! -e "$entry" ]]; then
      unlink "$entry"
      echo "[$ME] - Removed dead symlink $agent/$skill_name"
    elif [[ -L "$entry" && -z "${wanted_skills[$skill_name]:-}" ]]; then
      unlink "$entry"
      echo "[$ME] - Removed stale $agent/$skill_name"
    fi
  done
}

for agent in "${AGENTS[@]}"; do
  manifest="$(manifest_path "$agent")"
  if [[ -f "$manifest" ]]; then
    sync_agent_skills "$agent" "$manifest"
  fi
done

# ── Symlink skills utilities to dotfiles ────────────────────────
echo "[$ME]"
echo "[$ME] Symlinking binaries to dotfiles to enable \`u skills\`"

SKILLS_BIN_DIR="$SCRIPT_DIR/bin"
DOTFILES_UTILITIES_DIR="${DOTFILES_REPO_HOME:-$HOME/Repositories/davelens/dotfiles}/bin/utilities"
DOTFILES_SKILLS_UTILITY="$DOTFILES_UTILITIES_DIR/skills"

if [[ -d "$SKILLS_BIN_DIR" ]]; then
  mkdir -p "$DOTFILES_UTILITIES_DIR"
  ln -sfn "$SKILLS_BIN_DIR" "$DOTFILES_SKILLS_UTILITY"
  echo "[$ME] - skills -> $SKILLS_BIN_DIR"
else
  echo "[$ME] No skills bin directory found at $SKILLS_BIN_DIR, skipping utility symlink."
fi

# ── Expose centralized skills to Claude Code ────────────────────

if [[ -d "$CLAUDE_CONFIG_DIR" || -L "$CLAUDE_CONFIG_DIR" ]]; then
  CLAUDE_SKILLS_DIR="$CLAUDE_CONFIG_DIR/skills"
  CLAUDE_AGENT_SKILLS_DIR="$AGENT_SKILLS_DIR/claude"

  echo "[$ME]"
  echo "[$ME] Claude installed; symlinking skills to $CLAUDE_SKILLS_DIR"

  if [[ -L "$CLAUDE_SKILLS_DIR" ]]; then
    ln -sfn "$CLAUDE_AGENT_SKILLS_DIR" "$CLAUDE_SKILLS_DIR"
  elif [[ -e "$CLAUDE_SKILLS_DIR" ]]; then
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
      ln -s "$CLAUDE_AGENT_SKILLS_DIR" "$CLAUDE_SKILLS_DIR"
    else
      echo "[$ME] Claude skills directory exists at $CLAUDE_SKILLS_DIR, leaving it unchanged."
    fi
  else
    ln -s "$CLAUDE_AGENT_SKILLS_DIR" "$CLAUDE_SKILLS_DIR"
  fi
else
  echo "[$ME] Claude config directory not found at $CLAUDE_CONFIG_DIR, skipping."
fi

# ── Sweep dead symlinks in skills root ──────────────────────────
echo "[$ME]"
echo "[$ME] Sweeping dead symlinks in $AGENT_SKILLS_DIR"

for entry in "$AGENT_SKILLS_DIR"/*; do
  [[ -L "$entry" ]] || continue
  if [[ ! -e "$entry" ]]; then
    skill_name="$(basename "$entry")"
    unlink "$entry"
    echo "[$ME] - Removed dead symlink $skill_name"
  fi
done

echo "[$ME]"
echo "[$ME] Done."
