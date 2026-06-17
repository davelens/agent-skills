---
url: https://getbootstrap.com/docs/5.3/helpers/color-background/
title: Color and background · Bootstrap v5.3
words: 378
---
Added in v5.2 View on GitHub

Color and background

Set a background color with contrasting foreground color.

On this page On this page

* * *

- Overview
- With components

Overview[](#overview)

Color and background helpers combine the power of our .text- utilities and .bg- utilities in one class. Using our Sass color-contrast() function, we automatically determine a contrasting color for a particular background-color.

Heads up! There’s currently no support for a CSS-native color-contrast function, so we use our own via Sass. This means that customizing our theme colors via CSS variables may cause color contrast issues with these utilities.

Primary with contrasting color

Secondary with contrasting color

Success with contrasting color

Danger with contrasting color

Warning with contrasting color

Info with contrasting color

Light with contrasting color

Dark with contrasting color

html

```html
<div class="text-bg-primary p-3">Primary with contrasting color</div>
<div class="text-bg-secondary p-3">Secondary with contrasting color</div>
<div class="text-bg-success p-3">Success with contrasting color</div>
<div class="text-bg-danger p-3">Danger with contrasting color</div>
<div class="text-bg-warning p-3">Warning with contrasting color</div>
<div class="text-bg-info p-3">Info with contrasting color</div>
<div class="text-bg-light p-3">Light with contrasting color</div>
<div class="text-bg-dark p-3">Dark with contrasting color</div>
```

Accessibility tip: Using color to add meaning only provides a visual indication, which will not be conveyed to users of assistive technologies like screen readers. Please ensure the meaning is obvious from the content itself (e.g., the visible text with a sufficient color contrast) or is included through alternative means, such as additional text hidden with the .visually-hidden class.

With components[](#with-components)

Use them in place of combined .text- and .bg- classes, like on badges:

Primary Info

html

```html
<span class="badge text-bg-primary">Primary</span>
<span class="badge text-bg-info">Info</span>
```

Or on cards:

Header

Some quick example text to build on the card title and make up the bulk of the card’s content.

Header

Some quick example text to build on the card title and make up the bulk of the card’s content.

html

```html
<div class="card text-bg-primary mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>
  </div>
</div>
<div class="card text-bg-info mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>
  </div>
</div>
```
