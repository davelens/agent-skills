# Adyen Docs Mirror

Local offline mirror of the official Adyen documentation (`docs.adyen.com`).
Backs the `docs-adyen` skill (`personal/docs-adyen/`).

## Layout

| Path | Contents |
|------|----------|
| `docs/tooling/adyen/INDEX.md` | Adyen's hierarchical page catalog with descriptions and local links |
| `docs/tooling/adyen/<section>/**/<page>.md` | One native Markdown file per docs page |
| `docs/tooling/adyen/home.md` | Documentation home page |

## Convention

- Guide docs are unversioned rolling documentation, so there is one mirror.
  Individual APIs remain explicitly versioned in their endpoint URLs and live
  API Explorer pages; API Explorer content is outside this mirror.
- Adyen publishes native Markdown: `llms.txt` is the page catalog,
  `llms-full.txt` is the concatenated corpus, and each docs URL supports a
  `.md` suffix.
- `personal/docs-adyen/bin/sync-adyen-docs` downloads the two exports, splits
  the corpus into page files, and rewrites `INDEX.md` links to the local mirror.
- A normal sync adds missing pages and refreshes the index. `--force` refreshes
  every page. `personal/docs-adyen/bin/check-adyen-docs` exercises corpus
  parsing and checks mirror completeness.
