# Path of Exile Wiki

Answer Path of Exile (PoE 1) questions against a **local offline mirror** of
part of the community wiki (`poewiki.net`), which Grinding Gear Games endorses
as the official wiki. The mirror holds only bosses and boss mechanics, game
mechanics, content systems (leagues, Atlas, Labyrinth, Pantheon), the passive
skill tree and ascendancies, and skill/support gems. Items, lore, maps, and
patch notes are not mirrored. Ground mechanics, numbers, boss abilities, and
gem stats in the mirror. Do not guess from memory:
values change between patches and leagues.

## Mirror location

The mirror lives in **one** canonical place and is read from there **regardless
of which project you are working in**. Do not hardcode its path; the helper
script owns the location and resolves it through its own symlinks.

The script is in **this skill's own `bin/` directory**: resolve
`bin/sync-poewiki-docs` against this skill's location, e.g.
`"$SKILL_DIR/bin/sync-poewiki-docs"`.

1. **Locate the mirror** (no network):
   ```
   MIRROR="$("$SKILL_DIR/bin/sync-poewiki-docs" --path)"
   ```
   Prints the mirror dir (`.../docs/tooling/poewiki`), or exits non-zero if
   nothing is mirrored yet.
2. **If that failed, or you need a refresh**, tell the user. Do not start a
   full sync yourself: it fetches ~4,500 pages at one request per ~2 s
   (about 3-4 hours). The sync is resumable; a plain re-run adds missing pages only.
   `--force` re-scrapes everything.

One markdown file per main-namespace article, in one flat directory. File name
= wiki title with spaces as `_` and `/` as `%2F` (`Headhunter.md`,
`Version_3.25.0.md`). Each file keeps the source `url`/`title` in frontmatter.
Redirects are not mirrored; search for the canonical title (e.g. `Labyrinth`
is `The_Lord's_Labyrinth.md`, `Pantheon` is `The_Pantheon.md`).

## Workflow

1. **Find the article.** `INDEX.md` lists every title (~4,500 lines): do not
   read it whole. Use `ls "$MIRROR" | grep -i '<term>'` or
   `rg -i '<term>' "$MIRROR/INDEX.md"`. If no title matches, use
   `rg -il '<term>' "$MIRROR"` to find articles that mention it.
2. **Read that one file.** Mechanics pages (`Life.md`, `Damage.md`,
   `Critical_strike.md`) explain the calculations; boss pages give abilities
   and fight phases; gem pages give stats per level.
3. **Check patch history** when the question is about a change: most gem and
   passive pages end with a "Version history" table. Patch-note pages are not
   mirrored; use the live wiki (`Version_X.Y.Z`) for those.

## Notes

- Content is PoE 1 only. PoE 2 is on a different wiki (`poe2wiki.net`).
- Hover tooltips are inlined: a linked item or gem name is followed directly
  by its stats (e.g. `Divine OrbDivine OrbStack Size: 20...`). This is the
  only item data in the mirror; for a full item page, use the live wiki. Treat the
  repeated name as the start of tooltip text, not page prose.
- Pages are truncated at 60,000 characters (ending in `[truncated]`). Large
  modifier tables on pages such as `Life.md` can be cut. For the full page, use
  `ketch scrape 'https://www.poewiki.net/wiki/<Title>' --select .mw-parser-output --trim`.
- The site uses Cloudflare and rate-limits bursts (HTTP 429). Do not fetch
  many live pages in quick succession.
