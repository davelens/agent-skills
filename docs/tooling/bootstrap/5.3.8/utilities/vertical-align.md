---
url: https://getbootstrap.com/docs/5.3/utilities/vertical-align/
title: Vertical alignment · Bootstrap v5.3
words: 160
---
View on GitHub

Vertical alignment

Easily change the vertical alignment of inline, inline-block, inline-table, and table cell elements.

Change the alignment of elements with the vertical-alignment utilities. Please note that vertical-align only affects inline, inline-block, inline-table, and table cell elements.

Choose from .align-baseline, .align-top, .align-middle, .align-bottom, .align-text-bottom, and .align-text-top as needed.

To vertically center non-inline content (like <div>s and more), use our flex box utilities.

With inline elements:

baseline top middle bottom text-top text-bottom

html

```html
<span class="align-baseline">baseline</span>
<span class="align-top">top</span>
<span class="align-middle">middle</span>
<span class="align-bottom">bottom</span>
<span class="align-text-top">text-top</span>
<span class="align-text-bottom">text-bottom</span>
```

With table cells:

baseline top middle bottom text-top text-bottom

html

```html
<table style="height: 100px;">
  <tbody>
    <tr>
      <td class="align-baseline">baseline</td>
      <td class="align-top">top</td>
      <td class="align-middle">middle</td>
      <td class="align-bottom">bottom</td>
      <td class="align-text-top">text-top</td>
      <td class="align-text-bottom">text-bottom</td>
    </tr>
  </tbody>
</table>
```

CSS[](#css)

Sass utilities API[](#sass-utilities-api)

Vertical align utilities are declared in our utilities API in scss/_utilities.scss. Learn how to use the utilities API.

scss/\utilities.scss

```scss
"align": (
  property: vertical-align,
  class: align,
  values: baseline top middle bottom text-bottom text-top
),
```
