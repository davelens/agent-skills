---
url: https://getbootstrap.com/docs/5.3/content/figures/
title: Figures · Bootstrap v5.3
words: 167
---
View on GitHub

Figures

Documentation and examples for displaying related images and text with the figure component in Bootstrap.

On this page On this page

* * *

- CSS
  
  - Sass variables

Anytime you need to display a piece of content—like an image with an optional caption, consider using a <figure>.

Use the included .figure, .figure-img and .figure-caption classes to provide some baseline styles for the HTML5 <figure> and <figcaption> elements. Images in figures have no explicit size, so be sure to add the .img-fluid class to your <img> to make it responsive.

Placeholder400x300

A caption for the above image.

html

```html
<figure class="figure">
  <img src="..." class="figure-img img-fluid rounded" alt="...">
  <figcaption class="figure-caption">A caption for the above image.</figcaption>
</figure>
```

Aligning the figure’s caption is easy with our text utilities.

Placeholder400x300

A caption for the above image.

html

```html
<figure class="figure">
  <img src="..." class="figure-img img-fluid rounded" alt="...">
  <figcaption class="figure-caption text-end">A caption for the above image.</figcaption>
</figure>
```

CSS[](#css)

Sass variables[](#sass-variables)

scss/\variables.scss

```scss
$figure-caption-font-size:          $small-font-size;
$figure-caption-color:              var(--#{$prefix}secondary-color);
```
