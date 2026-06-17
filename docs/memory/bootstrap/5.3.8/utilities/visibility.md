---
url: https://getbootstrap.com/docs/5.3/utilities/visibility/
title: Visibility · Bootstrap v5.3
words: 133
---
View on GitHub

Visibility

Control the visibility of elements, without modifying their display, with visibility utilities.

Set the visibility of elements with our visibility utilities. These utility classes do not modify the display value at all and do not affect layout – .invisible elements still take up space in the page.

Elements with the .invisible class will be hidden both visually and for assistive technology/screen reader users.

Apply .visible or .invisible as needed.

```html
<div class="visible">...</div>
<div class="invisible">...</div>
```

```scss
// Class
.visible {
  visibility: visible !important;
}
.invisible {
  visibility: hidden !important;
}
```

CSS[](#css)

Sass utilities API[](#sass-utilities-api)

Visibility utilities are declared in our utilities API in scss/_utilities.scss. Learn how to use the utilities API.

scss/\utilities.scss

```scss
"visibility": (
  property: visibility,
  class: null,
  values: (
    visible: visible,
    invisible: hidden,
  )
),
```
