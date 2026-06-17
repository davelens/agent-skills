---
name: bootstrap-5
description: Look up and apply Bootstrap 5.3 markup, components, utilities, forms, layout (grid/flex), and customization (Sass/CSS variables/color modes) from a local offline mirror of the official docs. Use when building or styling UI with Bootstrap, when the user says "use Bootstrap 5.3 to build X", or when a Bootstrap class, component, utility, or option needs to be looked up or verified.
---

# Bootstrap 5.3

Build and verify Bootstrap UI against a **local offline mirror** of the official
docs (`getbootstrap.com/docs/5.3`), pinned at **v5.3.8**. Always ground
component markup, class names, and JS data-attributes in the mirror — do not
guess class names from memory.

## Mirror location

The mirror lives in **one** canonical place and is read from there **regardless
of which project you are working in** — projects never keep their own copy. Do
not hardcode its path; the helper script owns the location and resolves it
through its own symlinks, so it stays correct even if the repo moves.

The script is in **this skill's own `bin/` directory** — resolve `bin/sync-bootstrap-docs`
against this skill's location (shown in the skill header), e.g.
`"$SKILL_DIR/bin/sync-bootstrap-docs"`.

1. **Locate the mirror** (no network):
   ```
   MIRROR="$("$SKILL_DIR/bin/sync-bootstrap-docs" --path)"
   ```
   Prints the newest mirrored version dir (e.g. `.../docs/memory/bootstrap/5.3.8`),
   or exits non-zero if nothing is mirrored yet.
2. **If that failed** (docs absent) **or you want the latest**, run it with no
   args to sync — it resolves the latest release, scrapes into the canonical
   repo, and regenerates `INDEX.md` (idempotent; skips if already present).
   Then re-run `--path` to get `$MIRROR`.

One markdown file per doc page, grouped by the official nav. Each file keeps the
source `url`/`title` in frontmatter. Memory entry: `docs/memory/bootstrap.md`.

**Start here:** read `$MIRROR/INDEX.md` — a navigation index listing every page
with its purpose and top-level section anchors. Use it to route a request to the
one file to read, instead of guessing a path. All file paths below are relative
to `$MIRROR`.

## Workflow

1. **Map the request to a page**, then read that one file (see catalogue below).
   - "card with header/footer" → `components/card.md`
   - "make 3 columns responsive" → `layout/grid.md` (+ `layout/columns.md`)
   - "center a flex row / align items" → `utilities/flex.md`
   - "input with validation feedback" → `forms/validation.md` (+ `forms/form-control.md`)
   - "margin/padding spacing classes" → `utilities/spacing.md`
   - "dark mode" → `customize/color-modes.md`
   - "override the primary color / theme" → `customize/sass.md`, `customize/css-variables.md`, `customize/options.md`
   - JS behaviour (toggle/methods/events) → the component's own page (e.g. `components/modal.md`).
2. **Copy real markup** from the page. Match its exact class names, required
   wrapper structure, and `data-bs-*` attributes / ARIA roles.
3. **Verify** anything uncertain against the file before answering — never
   invent utility class names (spacing scale `0–5`, breakpoints
   `sm md lg xl xxl`, etc. are defined in the mirror).

## Page catalogue

- **getting-started/**: accessibility, browsers-devices, contents, download, introduction, javascript, parcel, rfs, rtl, vite, webpack
- **customize/**: color, color-modes, components, css-variables, optimize, options, overview, sass
- **layout/**: breakpoints, columns, containers, css-grid, grid, gutters, utilities, z-index
- **content/**: figures, images, reboot, tables, typography
- **forms/**: checks-radios, floating-labels, form-control, input-group, layout, overview, range, select, validation
- **components/**: accordion, alerts, badge, breadcrumb, button-group, buttons, card, carousel, close-button, collapse, dropdowns, list-group, modal, navbar, navs-tabs, offcanvas, pagination, placeholders, popovers, progress, scrollspy, spinners, toasts, tooltips
- **helpers/**: clearfix, color-background, colored-links, focus-ring, icon-link, position, ratio, stacks, stretched-link, text-truncation, vertical-rule, visually-hidden
- **utilities/**: api, background, borders, colors, display, flex, float, interactions, link, object-fit, opacity, overflow, position, shadows, sizing, spacing, text, vertical-align, visibility, z-index

## Notes

- Components with JS (modal, dropdown, collapse, offcanvas, carousel, toast,
  tooltip, popover, scrollspy, tabs) need `bootstrap.bundle.js` and the
  `data-bs-*` toggles shown on their page.
- A page not in the mirror, or a different version: fall back to
  `ketch scrape https://getbootstrap.com/docs/5.3/<section>/<slug>/ --select main --trim`.
- On a new Bootstrap release, re-scrape into a new `docs/memory/bootstrap/<version>/`
  folder and update the index table in `docs/memory/bootstrap.md`.
