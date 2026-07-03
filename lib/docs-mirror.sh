#!/usr/bin/env bash
#
# docs-mirror.sh — shared plumbing for the docs-* skill sync scripts
# (docs-bootstrap, docs-teamleader, docs-quickshell). Sourced, not executed.
#
# Each sync script resolves its own REPO_ROOT (needed to locate this file),
# then `source "$REPO_ROOT/lib/docs-mirror.sh"`. Site-specific logic — version
# and page discovery, URL->file mapping, INDEX.md generation — stays in the
# individual scripts; only the common plumbing lives here.
#
# Callers set: DM_SELECT (ketch --select value); optionally DM_MAX_CHARS.
#
# Provides:
#   dm_parse_args "$@"                -> sets DM_MODE (sync|force|path), DM_FORCE
#   dm_require CMD...                 -> exit 1 if any command missing from PATH
#   dm_print_path_versioned DIR NAME  -> print newest DIR/*/ (sort -V) & exit 0;
#                                        exit 1 if none exist
#   dm_print_path_single MIRROR NAME  -> print MIRROR if it holds an INDEX.md &
#                                        exit 0; exit 1 otherwise
#   dm_scrape URL OUT LABEL           -> ketch-scrape URL into OUT. Skips when
#                                        OUT already exists (unless DM_FORCE=1),
#                                        honours DM_SELECT/DM_MAX_CHARS, prints
#                                        LABEL + byte size on success, removes
#                                        OUT and warns on failure (return 1).

DM_MAX_CHARS="${DM_MAX_CHARS:-60000}"

dm_parse_args() {
  DM_MODE="sync"; DM_FORCE=0
  case "${1:-}" in
    --force) DM_MODE="force"; DM_FORCE=1 ;;
    --path)  DM_MODE="path" ;;
    "")      ;;
    *) echo "Unknown argument: $1" >&2; exit 2 ;;
  esac
}

dm_require() {
  local cmd
  for cmd in "$@"; do
    command -v "$cmd" >/dev/null 2>&1 || { echo "ERROR: '$cmd' not found on PATH." >&2; exit 1; }
  done
}

dm_print_path_versioned() { # mirror_root name
  local root="$1" name="$2" newest
  newest="$(ls -d "$root"/*/ 2>/dev/null | sort -V | tail -n1 || true)"
  [[ -n "$newest" ]] || { echo "No $name docs mirrored under $root" >&2; exit 1; }
  echo "${newest%/}"
  exit 0
}

dm_print_path_single() { # mirror name
  local mirror="$1" name="$2"
  [[ -f "$mirror/INDEX.md" ]] || { echo "No $name docs mirrored under $mirror" >&2; exit 1; }
  echo "$mirror"
  exit 0
}

dm_scrape() { # url out label
  local url="$1" out="$2" label="$3"
  if [[ ${DM_FORCE:-0} -eq 0 && -s "$out" ]]; then return 0; fi
  mkdir -p "$(dirname "$out")"
  if ketch scrape "$url" --select "$DM_SELECT" --trim --max-chars "$DM_MAX_CHARS" > "$out" 2>/dev/null && [[ -s "$out" ]]; then
    printf '  %-56s %7sb\n' "$label" "$(wc -c < "$out")"
  else
    rm -f "$out"; echo "  FAILED: $url" >&2; return 1
  fi
}
