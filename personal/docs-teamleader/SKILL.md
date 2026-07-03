---
name: docs-teamleader
description: Look up and apply Teamleader Focus API endpoints, request bodies, filters, includes, OAuth 2 authentication, pagination, and conventions from a local offline mirror of the official developer docs. Use when integrating with the Teamleader Focus API, when the user says "use the Teamleader API to do X", or when an endpoint, field, filter, scope, or auth detail needs to be looked up or verified.
---

# Teamleader Focus API

Build and verify Teamleader Focus integrations against a **local offline
mirror** of the official docs (`developer.focus.teamleader.eu/docs`). Always
ground endpoint names, request-body fields, filters, possible values, and
`includes` in the mirror — do not guess field or filter names from memory.

The API is **RPC-style, not REST**: every call is
`POST https://api.focus.teamleader.eu/<resource>.<action>` with a JSON body
(e.g. `contacts.list`, `invoices.book`, `timers.start`). It is versioned through
the `X-Api-Version` request header, so the docs are unversioned and there is a
single mirror.

## Mirror location

The mirror lives in **one** canonical place and is read from there **regardless
of which project you are working in** — projects never keep their own copy. Do
not hardcode its path; the helper script owns the location and resolves it
through its own symlinks, so it stays correct even if the repo moves.

The script is in **this skill's own `bin/` directory** — resolve
`bin/sync-teamleader-docs` against this skill's location (shown in the skill
header), e.g. `"$SKILL_DIR/bin/sync-teamleader-docs"`.

1. **Locate the mirror** (no network):
   ```
   MIRROR="$("$SKILL_DIR/bin/sync-teamleader-docs" --path)"
   ```
   Prints the mirror dir (`.../docs/memory/teamleader`), or exits non-zero if
   nothing is mirrored yet.
2. **If that failed** (docs absent) **or you want a refresh**, run it with no
   args to sync — it discovers the current endpoint list live from the site's
   `sitemap.xml`, scrapes each page into the canonical repo, and regenerates
   `INDEX.md` (idempotent; skips pages already present). Use `--force` to
   re-scrape everything. Then re-run `--path` to get `$MIRROR`.

One markdown file per doc page. API endpoints under `api/<resource>-<action>.md`,
narrative guides under `guides/`. Each file keeps the source `url`/`title` in
frontmatter.

**Start here:** read `$MIRROR/INDEX.md` — a navigation index grouping every
endpoint by business domain (CRM, Deals, Invoicing, …) with its one-line
purpose, plus a guides table. Use it to route a request to the one file to read,
instead of guessing a path. All file paths below are relative to `$MIRROR`.

## Workflow

1. **Map the request to a page**, then read that one file.
   - "list/filter contacts" → `api/contacts-list.md`
   - "create a deal" → `api/deals-create.md`
   - "book / send an invoice" → `api/invoices-book.md`, `api/invoices-send.md`
   - "start/stop a timer" → `api/timers-start.md`, `api/timers-stop.md`
   - "what fields does X return / accept" → that endpoint's own file.
   - OAuth setup, tokens, refresh → `guides/authentication.md`
   - pagination, sorting, filtering, errors, rate limits → `guides/general-principles.md`
   - embedding related resources via `includes` → `guides/sideloading.md`
2. **Copy the real request body** from the page. Match exact field names,
   `required` markers, `Possible values`, nested object/array shapes, and the
   JSON example. Filters live under `filter`, paging under `page`
   (`size`/`number`), sorting under `sort`.
3. **Verify** anything uncertain against the file before answering — never
   invent a filter key, a sort field, an enum value, or an OAuth scope. If an
   endpoint or field is missing from the mirror, re-sync; the API may have added
   it.

## Authentication (summary)

OAuth 2 authorization-code grant. Register an integration on the Teamleader
Marketplace for a `client_id`/`client_secret` and select scopes.

1. Redirect user to `https://focus.teamleader.eu/oauth2/authorize` with
   `client_id`, `response_type=code`, `redirect_uri`, optional `state`.
2. Exchange the returned `code` (expires in 10 min, single use) at
   `https://focus.teamleader.eu/oauth2/access_token` for an `access_token` +
   `refresh_token`.
3. Call the API with `Authorization: Bearer <access_token>`. Refresh with the
   `refresh_token` when the token expires.

Read `guides/authentication.md` for exact parameters, content types, and the
refresh flow before writing auth code.

## Notes

- All requests are HTTPS POST with a JSON body, even reads (`*.list`,
  `*.info`). Empty-body calls still send `{}`.
- Many `*.list` endpoints support `filter`, `page` (`size`/`number`), `sort`,
  and an `includes` string for sideloading — check the endpoint file for which.
- A page not in the mirror, or to confirm against the live site: fall back to
  `ketch scrape https://developer.focus.teamleader.eu/docs/api/<slug> --select main --trim`.
- The endpoint list is discovered from `sitemap.xml` on each sync, so a plain
  re-run picks up newly added endpoints; no need to edit the script.
