---
name: docs-reference
description: Look up and apply official offline documentation for Adyen payments, Bootstrap 5.3, Quill 2, Quickshell QML, Teamleader Focus API, and Void Linux. Use when building, configuring, integrating, or debugging any of these products, or when an exact field, endpoint, class, command, option, property, or requirement needs verification.
---

# Official Docs Reference

Build and verify work against local mirrors of official third-party docs rather
than guessing from memory.

## Route

Read the matching reference completely before searching its mirror or changing
code. Read multiple references only when the request spans multiple products.

| Product | Reference | Sync helper |
|---------|-----------|-------------|
| Adyen | `references/adyen.md` | `bin/sync-adyen-docs` |
| Bootstrap | `references/bootstrap.md` | `bin/sync-bootstrap-docs` |
| Quill | `references/quill.md` | `bin/sync-quill-docs` |
| Quickshell | `references/quickshell.md` | `bin/sync-quickshell-docs` |
| Teamleader Focus | `references/teamleader.md` | `bin/sync-teamleader-docs` |
| Void Linux | `references/void.md` | `bin/sync-void-docs` |

Resolve all listed paths against this skill's directory. Each reference owns
its product-specific lookup workflow, invariants, verification, and fallback.
