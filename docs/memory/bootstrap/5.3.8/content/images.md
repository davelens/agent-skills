---
url: https://getbootstrap.com/docs/5.3/content/images/
title: Images · Bootstrap v5.3
words: 270
---
View on GitHub

Images

Documentation and examples for opting images into responsive behavior (so they never become wider than their parent) and add lightweight styles to them—all via classes.

On this page On this page

* * *

- Responsive images
- Image thumbnails
- Aligning images
- Picture
- CSS
  
  - Sass variables

Responsive images[](#responsive-images)

Images in Bootstrap are made responsive with .img-fluid. This applies max-width: 100%; and height: auto; to the image so that it scales with the parent width.

PlaceholderResponsive image

html

```html
<img src="..." class="img-fluid" alt="...">
```

Image thumbnails[](#image-thumbnails)

In addition to our border-radius utilities, you can use .img-thumbnail to give an image a rounded 1px border appearance.

A generic square placeholder image with a white border around it, making it resemble a photograph taken with an old instant camera200x200

html

```html
<img src="..." class="img-thumbnail" alt="...">
```

Aligning images[](#aligning-images)

Align images with the helper float classes or text alignment classes. block-level images can be centered using the .mx-auto margin utility class.

Placeholder200x200 Placeholder200x200

html

```html
<img src="..." class="rounded float-start" alt="...">
<img src="..." class="rounded float-end" alt="...">
```

Placeholder200x200

html

```html
<img src="..." class="rounded mx-auto d-block" alt="...">
```

Placeholder200x200

html

```html
<div class="text-center">
  <img src="..." class="rounded" alt="...">
</div>
```

Picture[](#picture)

If you are using the <picture> element to specify multiple <source> elements for a specific <img>, make sure to add the .img-* classes to the <img> and not to the <picture> tag.

```html
<picture>
  <source srcset="..." type="image/svg+xml">
  <img src="..." class="img-fluid img-thumbnail" alt="...">
</picture>
```

CSS[](#css)

Sass variables[](#sass-variables)

Variables are available for image thumbnails.

scss/\variables.scss

```scss
$thumbnail-padding:                 .25rem;
$thumbnail-bg:                      var(--#{$prefix}body-bg);
$thumbnail-border-width:            var(--#{$prefix}border-width);
$thumbnail-border-color:            var(--#{$prefix}border-color);
$thumbnail-border-radius:           var(--#{$prefix}border-radius);
$thumbnail-box-shadow:              var(--#{$prefix}box-shadow-sm);
```
