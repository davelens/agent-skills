---
url: https://getbootstrap.com/docs/5.3/utilities/z-index/
title: Z-index · Bootstrap v5.3
words: 281
---
Added in v5.3 View on GitHub

Z-index

Use our low-level z-index utilities to quickly change the stack level of an element or component.

On this page On this page

* * *

- Example
- Overlays
- Component approach
- CSS
  
  - Sass maps
  - Sass utilities API

Example[](#example)

Use z-index utilities to stack elements on top of one another. Requires a position value other than static, which can be set with custom styles or using our position utilities.

We call these “low-level” z-index utilities because of their default values of -1 through 3, which we use for the layout of overlapping components. High-level z-index values are used for overlay components like modals and tooltips.

z-3

z-2

z-1

z-0

z-n1

html

```html
<div class="z-3 position-absolute p-5 rounded-3"><span>z-3</span></div>
<div class="z-2 position-absolute p-5 rounded-3"><span>z-2</span></div>
<div class="z-1 position-absolute p-5 rounded-3"><span>z-1</span></div>
<div class="z-0 position-absolute p-5 rounded-3"><span>z-0</span></div>
<div class="z-n1 position-absolute p-5 rounded-3"><span>z-n1</span></div>
```

Overlays[](#overlays)

Bootstrap overlay components—dropdown, modal, offcanvas, popover, toast, and tooltip—all have their own z-index values to ensure a usable experience with competing “layers” of an interface.

Read about them in the z-index layout page.

Component approach[](#component-approach)

On some components, we use our low-level z-index values to manage repeating elements that overlap one another (like buttons in a button group or items in a list group).

Learn about our z-index approach.

CSS[](#css)

Sass maps[](#sass-maps)

Customize this Sass map to change the available values and generated utilities.

scss/\variables.scss

```scss
$zindex-levels: (
  n1: -1,
  0: 0,
  1: 1,
  2: 2,
  3: 3
);
```

Sass utilities API[](#sass-utilities-api)

Position utilities are declared in our utilities API in scss/_utilities.scss. Learn how to use the utilities API.

scss/\utilities.scss

```scss
"z-index": (
  property: z-index,
  class: z,
  values: $zindex-levels,
)
```
