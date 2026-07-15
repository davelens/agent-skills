# Quill Docs Mirror

Local offline mirror of the official Quill rich-text editor docs
(`quilljs.com/docs`), scraped to clean markdown with `ketch`. Backs the
`docs-quill` skill (`personal/docs-quill/`).

## Versions

| Version | Path | Pages |
|---------|------|-------|
| 2.0.3 (latest) | `docs/memory/quill/2.0.3/` | 20 |

Read a version's `INDEX.md` first. It routes common needs and lists all pages
grouped as start, core reference, modules, customization, and guides.

## Layout (per version)

| Path | Contents |
|------|----------|
| `INDEX.md` | Agent navigation index and quick routing |
| `*.md` | Quickstart, installation, configuration, API, Delta, formats, modules/customization overviews, and migration guide |
| `modules/*.md` | Toolbar, keyboard, history, clipboard, and syntax modules |
| `customization/*.md` | Themes and per-editor registries |
| `guides/*.md` | Delta design, custom modules, and custom formats with Parchment |

## Convention

- Latest stable version comes from `slab/quill` GitHub releases; mirror dirs
  use the bare version (`2.0.3`). The matching release tag's website source tree
  supplies the page list on each sync of `bin/sync-quill-docs`.
- Source pages use `https://quilljs.com/docs/<path>/`, scraped with
  `--select article`.
- On a new release: re-run the sync. It creates a version folder and regenerates
  `INDEX.md`; add the new row above and keep prior versions.
