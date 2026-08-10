---
url: https://getbootstrap.com/docs/5.3/helpers/vertical-rule/
title: Vertical rule · Bootstrap v5.3
words: 173
---
Added in v5.1 View on GitHub

Vertical rule

Use the custom vertical rule helper to create vertical dividers like the <hr> element.

On this page On this page

* * *

- How it works
- Example
- With stacks
- CSS
  
  - Sass variables

How it works[](#how-it-works)

Vertical rules are inspired by the <hr> element, allowing you to create vertical dividers in common layouts. They’re styled just like <hr> elements:

- They’re 1px wide
- They have min-height of 1em
- Their color is set via currentColor and opacity

Customize them with additional styles as needed.

Example[](#example)

html

```html
<div class="vr"></div>
```

Vertical rules scale their height in flex layouts:

html

```html
<div class="d-flex" style="height: 200px;">
  <div class="vr"></div>
</div>
```

With stacks[](#with-stacks)

They can also be used in stacks:

First item

Second item

Third item

html

```html
<div class="hstack gap-3">
  <div class="p-2">First item</div>
  <div class="p-2 ms-auto">Second item</div>
  <div class="vr"></div>
  <div class="p-2">Third item</div>
</div>
```

CSS[](#css)

Sass variables[](#sass-variables)

Customize the vertical rule Sass variable to change its width.

scss/\variables.scss

```scss
$vr-border-width:             var(--#{$prefix}border-width);
```
