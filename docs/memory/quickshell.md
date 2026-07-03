# Quickshell Docs Mirror

Local offline mirror of the official Quickshell docs (`quickshell.org/docs`),
scraped to clean markdown with `ketch`. Backs the `quickshell` skill
(`personal/quickshell/`).

## Versions

| Version | Path | Pages |
|---------|------|-------|
| 0.3.0 (latest) | `docs/memory/quickshell/0.3.0/` | 175 |

To navigate a version, read its `INDEX.md` first (types grouped by QML module
with one-line purpose, plus a guides table).

## Layout (per version)

| Path | Contents |
|------|----------|
| `INDEX.md` | Navigation index: types by module + guides table |
| `guide/<slug>.md` | Narrative docs: introduction, qml-language, size-position, advanced, faq, install-setup, distribution |
| `types/<Module>/<Type>.md` | One file per QML type (full property/function/signal reference) |
| `types/<Module>/index.md` | Module overview listing its types |

## Convention

- Docs are versioned in the URL (`docs/v0.3.0/...`); mirror dirs use the bare
  version (`0.3.0`). Latest version and page list are discovered live from
  `sitemap.xml` on each sync of `bin/sync-quickshell-docs`.
- Source: `https://quickshell.org/docs/v<version>/<section>/<slug>/`, scraped
  with `--select .docs-content`.
- On a new release: re-run the sync — it scrapes into a new version folder and
  regenerates its `INDEX.md`; add a row above; keep prior versions.
