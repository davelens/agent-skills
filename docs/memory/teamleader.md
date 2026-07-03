# Teamleader Focus API Docs Mirror

Local offline mirror of the official Teamleader Focus API docs
(`developer.focus.teamleader.eu/docs`), scraped to clean markdown with `ketch`.
Backs the `docs-teamleader` skill (`personal/docs-teamleader/`).

## Layout

| Path | Contents |
|------|----------|
| `docs/memory/teamleader/INDEX.md` | Navigation index: endpoints grouped by business domain + guides table |
| `docs/memory/teamleader/api/<slug>.md` | One file per `resource.action` endpoint (360 pages) |
| `docs/memory/teamleader/guides/*.md` | Narrative docs: introduction, general-principles, authentication, sideloading, changelog |

To navigate, read `INDEX.md` first (per-endpoint purpose, grouped by domain,
plus a quick-routing guides table).

## Convention

- The API is **unversioned in the docs** (versioned via the `X-Api-Version`
  request header), so there is a single mirror — no version folders.
- Endpoint list is discovered live from `sitemap.xml` on each sync, so a plain
  re-run of `bin/sync-teamleader-docs` picks up newly added endpoints.
- Source: `https://developer.focus.teamleader.eu/docs/api/<slug>` and
  `.../docs/<guide>`.
- On a refresh: re-run the sync (use `--force` to re-scrape every page), which
  regenerates `INDEX.md`.
