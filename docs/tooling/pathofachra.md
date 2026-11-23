# Path of Achra Wiki Mirror

Local offline mirror of the Path of Achra community wiki
(`pathofachra.wiki.gg`), scraped to clean markdown with `ketch`. Backs
`personal/docs-reference/references/pathofachra.md`.

## Location

| Path | Pages |
|------|-------|
| `docs/tooling/pathofachra/` | ~40 |

The wiki is a rolling **MediaWiki**, so there is one mirror directory.

## Layout

| Path | Contents |
|------|----------|
| `INDEX.md` | Every article title with its file, sorted by title |
| `<Title>.md` | One file per main-namespace article, flat. Spaces become `_`, `/` becomes `%2F` |

## Convention

- The article list comes from the MediaWiki API (`list=allpages`, namespace 0,
  redirects excluded) on each sync of
  `personal/docs-reference/bin/sync-pathofachra-docs`. New articles are picked
  up without editing the script.
- Content selector is **`.mw-parser-output`**. Source:
  `https://pathofachra.wiki.gg/wiki/<Title>`.
- The sync is sequential with a 1 s delay (`PATHOFACHRA_DELAY`) and a 60 s
  back-off (`PATHOFACHRA_BACKOFF`). Existing pages are skipped; `--force`
  re-scrapes everything.
