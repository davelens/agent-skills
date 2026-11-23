# Path of Achra Wiki

Answer Path of Achra questions against a **local offline mirror** of the
community wiki (`pathofachra.wiki.gg`). Ground mechanics, stats, classes,
cultures, religions, powers, items, and enemies in the mirror. Do not guess
from memory: values change between game versions.

## Mirror location

The mirror lives in **one** canonical place and is read from there **regardless
of which project you are working in**. Do not hardcode its path; the helper
script owns the location and resolves it through its own symlinks.

The script is in **this skill's own `bin/` directory**: resolve
`bin/sync-pathofachra-docs` against this skill's location, e.g.
`"$SKILL_DIR/bin/sync-pathofachra-docs"`.

1. **Locate the mirror** (no network):
   ```
   MIRROR="$("$SKILL_DIR/bin/sync-pathofachra-docs" --path)"
   ```
   Prints the mirror dir (`.../docs/tooling/pathofachra`), or exits non-zero
   if nothing is mirrored yet.
2. **If that failed, or you need a refresh**, run the script without
   arguments. The wiki is small (~40 pages, under a minute). A plain re-run
   adds missing pages only; `--force` re-scrapes everything.

One markdown file per main-namespace article, in one flat directory. File name
= wiki title with spaces as `_` and `/` as `%2F` (`Prince_in_Red.md`).
Each file keeps the source `url`/`title` in frontmatter. Redirects are not
mirrored; search for the canonical title.

Two exceptions, both built by the sync script:

- **Items:** `Items.md` is an index with one table per slot (key stats per
  item). Each item has its own file in `items/` (`items/Lapis_Glaive.md`)
  with stats, resistances and effects.
- **Enemies:** `Enemies.md` is an index with one table per enemy pool (life,
  speed, damage, resistances). Each enemy has its own file in `enemies/`.
  Enemies with a dedicated wiki page keep that page there
  (`enemies/Withered_Imp.md`); the others are built from the tables in
  `Nemesis.md` and `Guardians.md`, which list ability names only.

## Workflow

1. **Find the article.** `ls "$MIRROR"` or `rg -i '<term>' "$MIRROR/INDEX.md"`.
   If no title matches, use `rg -il '<term>' "$MIRROR"` to find articles that
   mention it.
2. **Read that one file.** `Stats.md`, `Damage.md`, and `Effects.md` explain
   the mechanics; `Class.md`, `Culture.md`, `Religion.md`, and `Powers.md`
   cover character build options. For an item, read `items/<Item_Name>.md`;
   for an enemy, `enemies/<Enemy_Name>.md`. Use `Items.md` and `Enemies.md`
   to compare by slot or by pool.

## Notes

- The wiki is incomplete: many game concepts have no article. Say so when the
  mirror has no answer instead of guessing.
- Images are dropped; icon links stay as empty `[](/wiki/File:...)` links.
