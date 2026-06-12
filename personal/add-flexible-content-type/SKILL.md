---
name: add-flexible-content-type
description: Add a new content type (widget) to the Raamwinkel flexible-content CMS page-builder. Use when adding, scaffolding, or registering a new flexible content widget/type (e.g. FlexibleButton, FlexibleAccordion) in the raamwinkel/chassisshop Rails app, or when the user mentions flexible content, FlexibleRow/FlexibleColumn widgets, or the backend/flexible namespace.
---

# Add a Flexible Content Type

Flexible content is Raamwinkel's CMS page-builder: stacked `FlexibleRow`s ->
`FlexibleColumn`s -> a polymorphic typed widget. Each widget type is its own
table/model that includes `Raamwinkel::FlexibleContentType`.

**There is no registry.** A widget is wired by convention plus **three
hard-coded lists that MUST stay in sync** (step 8 — the main footgun).

Naming: replace `Foo`/`foo`/`foos` throughout with the new type
(`FlexibleFoo`, `foo`, `foos`). `content_type` = class name underscored minus the
`flexible_` prefix (`FlexibleFoo` -> `"foo"`); it drives partial names, route
helpers, and render dispatch.

Architecture background: `docs/wiki/backend/flexible-content.md`.
Copy-paste code for every step: [REFERENCE.md](REFERENCE.md).

## Workflow

Do the steps in order. Each is small. See REFERENCE.md for the exact code.

1. **Migration** — create `flexible_foos` (+ `t.timestamps`). Run with
   `utility rails migrate`.
2. **Model** — `app/models/flexible_foo.rb`: `include Raamwinkel::FlexibleContentType`.
3. **Decorator** — `app/decorators/flexible_foo_decorator.rb`: `delegate_all`.
   Required; both render loops and the columns controller call `.decorate`.
4. **Controller** — `app/controllers/backend/flexible/foos_controller.rb`:
   `include Backend::ContentTypeController`, declare `model` + `allowed_params`.
5. **Route** — add `resources :foos, only: %i[edit update]` inside the existing
   `namespace :flexible do` block in `config/routes.rb`.
6. **Views** — backend editor `backend/flexible/foos/edit.html.erb`, backend
   preview `backend/flexible/_foo.html.erb`, frontend render
   `frontend/flexible/_foo.html.erb`. Both partials' local is `object` (decorated).
7. **i18n** — add `b.foo` label to `nl_backend.yml`, then copy to
   `tech_backend.yml` and translate in `fr_backend.yml` (alphabetized; FR uses
   `"..."`). Add any `b.msg.*` strings referenced in views.
8. **Register in ALL THREE lists** (must match each other, same order):
   - `content_type_options` in
     `app/controllers/backend/flexible/rows/columns_controller.rb`
   - the `%w(...)` array in `app/views/backend/flexible/_rows.html.erb`
   - the `%w(...)` array in `app/views/frontend/flexible/_rows.html.erb`
   Miss one and the widget can't be created or won't render.
   `DuplicateLocale` needs NO change — it clones widgets generically.
9. **Verify** — `utility rails migrate` then `bin/test -u`. Then manually: open a
   page translation editor, add a column, pick **Foo** from the dropdown, save,
   confirm backend preview + frontend render appear.

## Edge cases

- Backend previews emit `col-xs-*`; frontend omits xs and the breakpoints JS
  forces xs/sm to width 12.
- Deleting a host cascades page -> rows -> columns -> widgets via
  `dependent: :destroy`.
- Reference widgets by complexity: simplest = `FlexibleQuote` / `FlexibleText`;
  asset-backed = `FlexiblePicture` / `FlexibleCard` (add `belongs_to :asset` and
  `t.references :asset`); derived presentation = `FlexibleVideo` (embed URL logic
  lives in its decorator).
