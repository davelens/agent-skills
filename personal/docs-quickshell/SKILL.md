---
name: docs-quickshell
description: Look up and apply Quickshell QML types, properties, signals, functions, and guides (bars/panels, widgets, lockscreens, Wayland layershell, Hyprland/I3 integration, system services) from a local offline mirror of the official docs. Use when building or debugging a Quickshell config/shell, when the user says "use Quickshell to build X", or when a Quickshell type, property, signal, or import needs to be looked up or verified.
---

# Quickshell

Build and verify Quickshell configs against a **local offline mirror** of the
official docs (`quickshell.org/docs`). Quickshell is a QtQuick/QML toolkit for
building desktop shells (bars, widgets, lockscreens, launchers) on Wayland and
X11. Always ground type names, properties, signals, functions, and enum values
in the mirror — do not guess API surface from memory.

## Mirror location

The mirror lives in **one** canonical place and is read from there **regardless
of which project you are working in** — projects never keep their own copy. Do
not hardcode its path; the helper script owns the location and resolves it
through its own symlinks, so it stays correct even if the repo moves.

The script is in **this skill's own `bin/` directory** — resolve
`bin/sync-quickshell-docs` against this skill's location (shown in the skill
header), e.g. `"$SKILL_DIR/bin/sync-quickshell-docs"`.

1. **Locate the mirror** (no network):
   ```
   MIRROR="$("$SKILL_DIR/bin/sync-quickshell-docs" --path)"
   ```
   Prints the newest mirrored version dir (e.g. `.../docs/memory/quickshell/0.3.0`),
   or exits non-zero if nothing is mirrored yet.
2. **If that failed** (docs absent) **or you want the latest**, run it with no
   args to sync — it discovers the latest docs version and its full page list
   live from the site's `sitemap.xml`, scrapes into the canonical repo, and
   regenerates `INDEX.md` (idempotent; skips pages already present). Use
   `--force` to re-scrape everything. Then re-run `--path` to get `$MIRROR`.

One markdown file per doc page: guides under `guide/<slug>.md`, type references
under `types/<Module>/<Type>.md` with a module overview at
`types/<Module>/index.md`. Each file keeps the source `url`/`title` in
frontmatter. Memory entry: `docs/memory/quickshell.md`.

**Start here:** read `$MIRROR/INDEX.md` — a navigation index listing every type
grouped by QML module with its one-line purpose, plus a guides table. Use it to
route a request to the one file to read, instead of guessing a path. All file
paths below are relative to `$MIRROR`.

## Workflow

1. **Map the request to a page**, then read that one file.
   - "make a bar/panel" → `guide/introduction.md` + `types/Quickshell/PanelWindow.md`
   - "run a command / read its output" → `types/Quickshell.Io/Process.md`
   - "layer shell / overlay / anchors on Wayland" → `types/Quickshell.Wayland/WlrLayershell.md`
   - "Hyprland workspaces/monitors/events" → `types/Quickshell.Hyprland/*.md`
   - "system tray" → `types/Quickshell.Services.SystemTray/*.md`
   - "notifications daemon" → `types/Quickshell.Services.Notifications/*.md`
   - "audio/volume (PipeWire)" → `types/Quickshell.Services.Pipewire/*.md`
   - "battery/power" → `types/Quickshell.Services.UPower/*.md`
   - "media players (MPRIS)" → `types/Quickshell.Services.Mpris/*.md`
   - "lockscreen" → `types/Quickshell.Wayland/WlSessionLock.md`
   - "what property/signal does X have" → that type's own file.
   - QML syntax, properties, signals, bindings → `guide/qml-language.md`
   - sizing/positioning items → `guide/size-position.md`
   - singletons, pragmas, config structure → `guide/advanced.md`
2. **Copy real API surface** from the page. Match exact property names, types,
   defaults, `readonly` markers, signal names, function signatures, and the QML
   example. Each type page states its base type and required `import`.
3. **Verify** anything uncertain against the file before answering — never
   invent a property, enum variant, or signal name. If a type or property is
   missing from the mirror, re-sync; a newer docs version may exist.

## Notes

- Import the module shown on the type's page (e.g. `import Quickshell.Io`);
  type pages state the module in their frontmatter title and file path.
- `Process.command` is **not** a shell: pass argv as separate list elements,
  or `["sh", "-c", "..."]` for shell syntax.
- Configs live in `~/.config/quickshell/shell.qml` (or a named subfolder,
  picked with `qs -c <name>`); see `guide/introduction.md`.
- A page not in the mirror, or to confirm against the live site: fall back to
  `ketch scrape https://quickshell.org/docs/<version>/... --select .docs-content --trim`.
- The version and page list are discovered from `sitemap.xml` on each sync, so
  a plain re-run picks up new docs versions; prior versions are kept.
