# Void Linux Handbook Mirror

Local offline mirror of the official Void Linux Handbook (`docs.voidlinux.org`),
scraped to clean markdown with `ketch`. Backs the `docs-void` skill
(`personal/docs-void/`).

## Location

| Path | Pages |
|------|-------|
| `docs/memory/void/` | 85 |

The handbook is an **mdBook** and is **unversioned** (a single rolling
document), so there is one mirror directory. Read `INDEX.md` first — it
reproduces the handbook's full numbered table of contents, each page with a
one-line purpose.

## Layout

| Path | Contents |
|------|----------|
| `INDEX.md` | Navigation index: the whole numbered TOC, hierarchical, with per-page descriptions |
| `<section>/**/<page>.md` | One file per handbook page, mirroring the site's directory tree (`config/network/iwd.md`, `xbps/repositories/mirrors/changing.md`) |

## Convention

- Page list and section hierarchy are discovered live from the mdBook sidebar
  TOC (`<nav id="sidebar">` on the home page) on each sync of
  `bin/sync-void-docs` — new pages are picked up without editing the script.
- Content selector is **`main`** (mdBook's `#content` is the search wrapper,
  not the page body). URL→file: strip `.html`, add `.md`, keep the tree.
- Source: `https://docs.voidlinux.org/<path>.html`, scraped with `--select main`.
- To refresh: re-run the sync (idempotent; `--force` re-scrapes everything); it
  regenerates `INDEX.md`.
