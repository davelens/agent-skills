# Adyen Docs

Build and verify Adyen integrations against a **local offline mirror** of
`docs.adyen.com`, using the official API Explorer for exact endpoint contracts.
Guide pages are unversioned rolling docs; Adyen APIs have explicit versions such
as Checkout API v72. Ground integration steps, field names, webhook events,
payment-method requirements, and test values in those sources rather than
memory.

## Mirror

Resolve `bin/sync-adyen-docs` against this skill's directory.

```bash
MIRROR="$("$SKILL_DIR/bin/sync-adyen-docs" --path)"
```

If absent, run the script without arguments, then resolve `--path` again. It
downloads Adyen's native `llms.txt`/`llms-full.txt` Markdown exports, splits the
corpus into one file per page, and refreshes `INDEX.md`. A normal sync adds new
pages; use `--force` when existing pages may be stale.

Read `$MIRROR/INDEX.md` first. It is Adyen's own hierarchical page catalog with
descriptions and local links. Search it by product and task, then read only the
pages needed.

## Lookup

1. **Route through `INDEX.md`.** Search task terms and nearby headings until
   every requested flow has a relevant page.
   - Checkout, Drop-in, Components, API-only → `online-payments/**`
   - Cards, wallets, bank methods, BNPL → `payment-methods/**`
   - Event delivery and verification → pages containing `webhook`
   - Terminals and Terminal API → `point-of-sale/**`
   - Onboarding, split payments, balance accounts → `platforms/**`
   - Cards and authorizations → `issuing/**`
   - Credentials, API URLs, idempotency, testing → `development-resources/**`
   - Risk rules and RevenueProtect → `risk-management/**`
2. **Read the complete flow.** Account for prerequisites,
   server and client steps, redirects/additional actions, asynchronous webhook
   state, testing, and go-live requirements. Completion: every stage relevant
   to the request is backed by a page read from the mirror.
3. **Pin the API contract.** Follow the guide's API Explorer link or open
   `https://docs.adyen.com/api-explorer/<API>/<version>/...` when exact endpoint
   request/response schemas are needed. Use the integration's existing version;
   use `latest` only when choosing a version for a new integration. Verify exact
   property names, required fields, enums, headers, and endpoint URLs before
   writing code.
4. **Apply security boundaries.** Keep API and HMAC keys server-side. Browser
   and app code receives only the client key. Verify webhook HMAC signatures
   using the documented method before changing payment state.

## Verification

Before finishing, check the implementation against the selected pages for:

- test versus live API URL and live URL prefix;
- API version and required authentication header;
- minor-unit amounts and three-letter currency codes;
- `reference`/`pspReference` handling and idempotency where supported;
- redirect or `action` handling for asynchronous payment flows;
- webhook HMAC verification, acknowledgement, event ordering, and retries;
- payment-method, country, currency, capture, and recurring-payment constraints.

If a page is missing, sync again. For a newly changed live page, append `.md` to
its canonical docs URL and fetch that native Markdown page directly.
