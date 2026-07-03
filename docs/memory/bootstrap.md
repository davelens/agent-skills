# Bootstrap Docs Mirror

Local offline mirror of the official Bootstrap docs, scraped to clean markdown with `ketch`. Backs the `docs-bootstrap` skill (`personal/docs-bootstrap/`).

## Versions

| Version | Path | Pages |
|---------|------|-------|
| 5.3.8 (latest 5.3.x) | `docs/memory/bootstrap/5.3.8/` | 97 |

To navigate a version, read its `INDEX.md` first (per-page purpose, section anchors, quick-routing table).

## Convention

- Pin docs by exact patch version (`5.3.8`), not a floating `5.3`.
- Source: `https://getbootstrap.com/docs/5.3/<section>/<slug>/`.
- On a new release: re-scrape into a new version folder, regenerate its `INDEX.md`, add a row above; keep prior versions.
