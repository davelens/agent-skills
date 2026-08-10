---
url: https://getbootstrap.com/docs/5.3/components/placeholders/
title: Placeholders · Bootstrap v5.3
words: 572
---
Added in v5.1 View on GitHub

Placeholders

Use loading placeholders (skeleton loaders) for your components or pages to indicate something may still be loading.

On this page On this page

* * *

- About
- Example
- How it works
  
  - Width
  - Color
  - Sizing
  - Animation
- CSS
  
  - Sass variables

About[](#about)

Placeholders can be used to enhance the experience of your application. They’re built only with HTML and CSS, meaning you don’t need any JavaScript to create them. You will, however, need some custom JavaScript to toggle their visibility. Their appearance, color, and sizing can be easily customized with our utility classes.

Example[](#example)

In the example below, we take a typical card component and recreate it with placeholders applied to create a “loading card”. Size and proportions are the same between the two.

Placeholder

Card title

Some quick example text to build on the card title and make up the bulk of the card’s content.

Go somewhere

Placeholder

[]()

```html
<div class="card">
  <img src="..." class="card-img-top" alt="...">

  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card’s content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>

<div class="card" aria-hidden="true">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title placeholder-glow">
      <span class="placeholder col-6"></span>
    </h5>
    <p class="card-text placeholder-glow">
      <span class="placeholder col-7"></span>
      <span class="placeholder col-4"></span>
      <span class="placeholder col-4"></span>
      <span class="placeholder col-6"></span>
      <span class="placeholder col-8"></span>
    </p>
    <a class="btn btn-primary disabled placeholder col-6" aria-disabled="true"></a>
  </div>
</div>
```

How it works[](#how-it-works)

Create placeholders with the .placeholder class and a grid column class (e.g., .col-6) to set the width. They can replace the text inside an element or be added as a modifier class to an existing component.

We apply additional styling to .btns via ::before to ensure the height is respected. You may extend this pattern for other situations as needed, or add a &nbsp; within the element to reflect the height when actual text is rendered in its place.

[]()

html

```html
<p aria-hidden="true">
  <span class="placeholder col-6"></span>
</p>

<a class="btn btn-primary disabled placeholder col-4" aria-disabled="true"></a>
```

The use of aria-hidden="true" only indicates that the element should be hidden to screen readers. The loading behavior of the placeholder depends on how authors will actually use the placeholder styles, how they plan to update things, etc. Some JavaScript code may be needed to swap the state of the placeholder and inform AT users of the update.

Width[](#width)

You can change the width through grid column classes, width utilities, or inline styles.

html

```html
<span class="placeholder col-6"></span>
<span class="placeholder w-75"></span>
<span class="placeholder" style="width: 25%;"></span>
```

Color[](#color)

By default, the placeholder uses currentColor. This can be overridden with a custom color or utility class.

html

```html
<span class="placeholder col-12"></span>

<span class="placeholder col-12 bg-primary"></span>
<span class="placeholder col-12 bg-secondary"></span>
<span class="placeholder col-12 bg-success"></span>
<span class="placeholder col-12 bg-danger"></span>
<span class="placeholder col-12 bg-warning"></span>
<span class="placeholder col-12 bg-info"></span>
<span class="placeholder col-12 bg-light"></span>
<span class="placeholder col-12 bg-dark"></span>
```

Sizing[](#sizing)

The size of .placeholders are based on the typographic style of the parent element. Customize them with sizing modifiers: .placeholder-lg, .placeholder-sm, or .placeholder-xs.

html

```html
<span class="placeholder col-12 placeholder-lg"></span>
<span class="placeholder col-12"></span>
<span class="placeholder col-12 placeholder-sm"></span>
<span class="placeholder col-12 placeholder-xs"></span>
```

Animation[](#animation)

Animate placeholders with .placeholder-glow or .placeholder-wave to better convey the perception of something being actively loaded.

html

```html
<p class="placeholder-glow">
  <span class="placeholder col-12"></span>
</p>

<p class="placeholder-wave">
  <span class="placeholder col-12"></span>
</p>
```

CSS[](#css)

Sass variables[](#sass-variables)

scss/\variables.scss

```scss
$placeholder-opacity-max:           .5;
$placeholder-opacity-min:           .2;
```
