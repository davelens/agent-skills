# Reference: Flexible Content Type code templates

Copy-paste templates for each step in [SKILL.md](SKILL.md). Replace
`Foo`/`foo`/`foos` with the new type name. Drop the `asset` lines unless the
widget references an image.

## 1. Migration — `db/migrate/<timestamp>_create_flexible_foos.rb`

```ruby
class CreateFlexibleFoos < ActiveRecord::Migration[8.1]
  def change
    create_table :flexible_foos do |t|
      t.string :title
      t.text :content
      # t.references :asset  # if the widget picks an image (see Picture/Card)

      t.timestamps
    end
  end
end
```

`create_table` is reversible by default. If you add conditional logic, use
explicit `up`/`down` with `if_exists: true` in `down`. Run with
`utility rails migrate`.

## 2. Model — `app/models/flexible_foo.rb`

```ruby
class FlexibleFoo < ApplicationRecord
  include Raamwinkel::FlexibleContentType
  # belongs_to :asset  # only if the widget references an asset
end
```

The concern (`app/models/concerns/raamwinkel/flexible_content_type.rb`) provides
`content_type`, `content_type_is?`, `column`, `parent`, and an `after_save` that
touches the owning column to bust the row fragment cache.

## 3. Decorator — `app/decorators/flexible_foo_decorator.rb`

```ruby
class FlexibleFooDecorator < ApplicationDecorator
  delegate_all
  # Presentation helpers go here; the frontend partial renders the decorated
  # object. See FlexibleVideoDecorator / FlexibleTextDecorator for examples.
end
```

## 4. Controller — `app/controllers/backend/flexible/foos_controller.rb`

```ruby
class Backend::Flexible::FoosController < Backend::BaseController
  include Backend::ContentTypeController

  layout 'backend/bs5/no_layout'
  before_action :simple_form_bs5

  model FlexibleFoo
  allowed_params :title, :content
end
```

`Backend::ContentTypeController` supplies `find_model` (sets a decorated
`@model`) and `update` (renders `backend/bs5/saved_with_refresh` on success,
`:edit` on validation error). You only declare `model` and `allowed_params`.
`simple_form_bs5` is required for the BS5 `form-control` wrapper.

## 5. Route — `config/routes.rb`

Find the `namespace :flexible do` block (it already contains
`resources :texts/:videos/:quotes/:cards` and a `resources :pictures` block).
Add alongside them:

```ruby
resources :foos, only: %i[edit update]
```

If the widget needs extra steps (like Picture's `link_or_upload`), add a `member`
block.

## 6a. Backend editor — `app/views/backend/flexible/foos/edit.html.erb`

Renders as a Lity modal popup.

```erb
<div class="container-fluid pt-3">
  <%= simple_form_for [:backend, @model] do |f| %>
    <div class="row">
      <div class="col-12">
        <%= f.input :title, as: :string %>
        <%= f.input :content, as: :text %>
      </div>
    </div>

    <%= render 'backend/bs5/form_actions', cancel_url: '#', cancel_data: { lity_force_close: true } %>
  <% end %>
</div>
```

## 6b. Backend preview — `app/views/backend/flexible/_foo.html.erb`

Local is `object` (the decorated widget).

```erb
<% if object.content.present? %>
  <div><%= object.content.html_safe %></div>
<% else %>
  <p class="text-muted mb-0"><%= t 'b.msg.flexible_content_no_foo_present' %></p>
<% end %>
```

## 6c. Frontend render — `app/views/frontend/flexible/_foo.html.erb`

Local is `object` (decorated).

```erb
<% if object.content.present? %>
  <div class="flexible-foo"><%= object.content.html_safe %></div>
<% end %>
```

## 7. i18n

Picker label lives under the top-level `b:` namespace, alphabetized. Edit `nl`,
copy to `tech`, translate in `fr` (see `docs/memory/development-notes.md`):

- `config/locales/nl_backend.yml` -> `foo: Foo`
- `config/locales/tech_backend.yml` -> `foo: Foo`
- `config/locales/fr_backend.yml` -> `foo: Foo` (use `"..."` if value has an apostrophe)

Add any new `b.msg.*` strings referenced in views to the same three files. Form
input labels (if needed) go in `*_models.yml` under `activemodel.attributes`.

## 8. The three sync lists

### Backend picker

`content_type_options` in
`app/controllers/backend/flexible/rows/columns_controller.rb`. Add a tuple:

```ruby
[t('b.foo'), 'FlexibleFoo']
```

### Backend render loop

`app/views/backend/flexible/_rows.html.erb` — currently:

```erb
<% %w(text picture video quote card).each do |content_type| %>
```

Add `foo` to the array.

### Frontend render loop

`app/views/frontend/flexible/_rows.html.erb` — currently:

```erb
<% %w(picture text video quote card).each do |content_type| %>
```

Add `foo` to the array.
