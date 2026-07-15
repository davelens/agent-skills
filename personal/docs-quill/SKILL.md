---
name: docs-quill
description: Look up and apply Quill 2 rich-text editor APIs, Delta operations, formats, modules (toolbar, keyboard, history, clipboard, syntax), themes, registries, and Parchment customization from a local offline mirror of the official docs. Use when building, configuring, extending, upgrading, or debugging a Quill editor, or when a Quill method, event, option, format, Delta shape, or module behavior needs verification.
---

# Quill 2

Build and verify Quill editors against a **local offline mirror** of the
official docs (`quilljs.com/docs`), pinned by stable release. Always ground API
method signatures, event arguments, source values, Delta shapes, format names,
module options, and extension hooks in the mirror — do not guess from memory or
silently apply Quill 1.x behavior to Quill 2.

## Mirror location

The mirror lives in **one** canonical place and is read from there **regardless
of which project you are working in** — projects never keep their own copy. Do
not hardcode its path; the helper script owns the location and resolves it
through its own symlinks, so it stays correct even if the repo moves.

The script is in **this skill's own `bin/` directory** — resolve
`bin/sync-quill-docs` against this skill's location (shown in the skill header),
e.g. `"$SKILL_DIR/bin/sync-quill-docs"`.

1. **Locate the mirror** (no network):
   ```
   MIRROR="$("$SKILL_DIR/bin/sync-quill-docs" --path)"
   ```
   Prints the newest mirrored version dir (e.g. `.../docs/memory/quill/2.0.3`),
   or exits non-zero if nothing is mirrored yet.
2. **If that failed** (docs absent) **or you want the latest**, run it with no
   args to sync. It resolves the latest stable GitHub release, discovers docs
   pages from that release's source tree, scrapes the official site into the
   canonical repo, and regenerates `INDEX.md`. Existing pages are skipped;
   use `--force` to re-scrape all pages. Then re-run `--path`.

One markdown file per official docs page, preserving source `url` and `title`
in frontmatter. Memory entry: `docs/memory/quill.md`.

**Start here:** read `$MIRROR/INDEX.md`. It gives quick routing plus every page
grouped as start, core reference, modules, customization, or guides. Read only
the relevant files. Paths below are relative to `$MIRROR`.

## Workflow

1. **Map request to smallest relevant page set.**
   - install/import/CDN/basic editor → `installation.md`, `quickstart.md`
   - constructor options, container, theme, modules, placeholder, read-only → `configuration.md`
   - `getContents`, `setContents`, text/format/selection methods → `api.md`
   - `text-change`, `selection-change`, `editor-change` events → `api.md`
   - Delta documents/changes, embeds, line attributes → `delta.md`
   - built-in inline/block/embed formats → `formats.md`
   - toolbar controls/handlers → `modules/toolbar.md`
   - key bindings/context/propagation → `modules/keyboard.md`
   - undo/redo stack → `modules/history.md`
   - pasted HTML and matchers → `modules/clipboard.md`
   - syntax highlighting → `modules/syntax.md`
   - Snow/Bubble or CSS styling → `customization/themes.md`
   - per-editor format isolation → `customization/registries.md`
   - custom module → `guides/building-a-custom-module.md`
   - custom blot/format/Parchment → `guides/cloning-medium-with-parchment.md`
   - migrate 1.3 to 2.0 → `upgrading-to-2-0.md`
2. **Copy exact API surface and constraints.** Match method overload, argument
   order, return type, event arguments, source (`user`, `api`, or `silent`),
   format key, module option, and Delta operation shape.
3. **Verify version-sensitive behavior.** Check `upgrading-to-2-0.md` when code
   or third-party examples may target Quill 1.x.

## Important invariants

- Quill's canonical content model is **Delta**, not arbitrary HTML. Use
  `getSemanticHTML()` only when HTML output is specifically required.
- Quill documents end with a newline. Many line formats attach to that newline;
  account for it in lengths, ranges, and Deltas.
- `source: "silent"` suppresses events and can break undo-stack expectations.
  Prefer `"api"` unless suppression is intentional and verified.
- Delta operations are ordered `insert`, `delete`, and `retain` instructions.
  Do not hand-build complex Deltas when the documented Delta builder or Quill
  API expresses the operation safely.
- Clipboard matchers interpret pasted HTML in post-order. Treat pasted HTML as
  untrusted input and follow project sanitization/security requirements.
- Toolbar HTML controls require documented classes and values. A configured
  format must also be allowed by the editor's `formats` configuration when that
  allowlist is present.
- Quill 2 supports custom registries for editor-local formats. Global
  `Quill.register()` changes the shared registry; choose scope deliberately.

## Notes

- Quill APIs use zero-based indexes and lengths over the editor's document
  model, including embeds and the terminal newline where documented.
- `getText()` omits non-string embeds; use `getContents()` when exact editor
  state matters.
- Theme CSS must be loaded separately from Quill JavaScript. `snow` and
  `bubble` behavior and required styles are documented in
  `customization/themes.md` and `quickstart.md`.
- For a page missing from the mirror, re-sync first. To confirm live content,
  use `ketch scrape https://quilljs.com/docs/<path>/ --select article --trim`.
