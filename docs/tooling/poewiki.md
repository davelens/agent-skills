# PoE Wiki Mirror

Local offline mirror of part of the Path of Exile community wiki
(`poewiki.net`): bosses, game mechanics, content systems, the passive skill
tree, and skill gems. Scraped to clean markdown with `ketch`. Backs
`personal/docs-reference/references/poewiki.md`.

## Location

| Path | Pages |
|------|-------|
| `docs/tooling/poewiki/` | ~4,500 (gitignored) |

The wiki is a rolling **MediaWiki**, so there is one mirror directory. It is
gitignored because of its size; run the sync to create it.

## Layout

| Path | Contents |
|------|----------|
| `INDEX.md` | Every article title with its file, sorted by title. Grep it; do not read it whole |
| `<Title>.md` | One file per main-namespace article, flat. Spaces become `_`, `/` becomes `%2F` |

## Convention

- The article list comes from wiki categories (MediaWiki API) on each sync of
  `personal/docs-reference/bin/sync-poewiki-docs`: `Bosses`, `Boss monsters`,
  `Game mechanics`, `Challenge leagues`, `Passive skills`, `Ascendancy`,
  `Ascendancy classes`, `Character classes`, plus `Skill gems` and
  `Support gems`. Pages in `Base items` or `Derived items` are dropped unless
  they are gems; `Prophecies` and removed mechanics/passives are skipped. Edit
  `INCLUDE`/`EXCLUDE` in the script to change the scope. A sync deletes mirrored
  pages that fall out of scope.
- Content selector is **`.mw-parser-output`**. Source:
  `https://www.poewiki.net/wiki/<Title>`.
- The site is behind Cloudflare and returns 429 on bursts. The sync is
  sequential with a 2 s delay (`POEWIKI_DELAY`) and a 120 s back-off
  (`POEWIKI_BACKOFF`), so a full sync takes about 3-4 hours. It is resumable:
  existing pages are skipped; `--force` re-scrapes everything.
