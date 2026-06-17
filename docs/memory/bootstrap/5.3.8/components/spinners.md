---
url: https://getbootstrap.com/docs/5.3/components/spinners/
title: Spinners · Bootstrap v5.3
words: 902
---
View on GitHub

Spinners

Indicate the loading state of a component or page with Bootstrap spinners, built entirely with HTML, CSS, and no JavaScript.

On this page On this page

* * *

- About
- Border spinner
  
  - Colors
- Growing spinner
- Alignment
  
  - Margin
  - Placement
    
    - Flex
    - Floats
    - Text align
- Size
- Buttons
- CSS
  
  - Variables
  - Sass variables
  - Keyframes

About[](#about)

Bootstrap “spinners” can be used to show the loading state in your projects. They’re built only with HTML and CSS, meaning you don’t need any JavaScript to create them. You will, however, need some custom JavaScript to toggle their visibility. Their appearance, alignment, and sizing can be easily customized with our amazing utility classes.

For accessibility purposes, each loader here includes role="status" and a nested <span class="visually-hidden">Loading...</span>.

The animation effect of this component is dependent on the prefers-reduced-motion media query. See the reduced motion section of our accessibility documentation.

Border spinner[](#border-spinner)

Use the border spinners for a lightweight loading indicator.

Loading...

html

```html
<div class="spinner-border" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
```

Colors[](#colors)

The border spinner uses currentColor for its border-color, meaning you can customize the color with text color utilities. You can use any of our text color utilities on the standard spinner.

Loading...

Loading...

Loading...

Loading...

Loading...

Loading...

Loading...

Loading...

html

```html
<div class="spinner-border text-primary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-secondary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-success" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-danger" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-warning" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-info" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-light" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-border text-dark" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
```

Why not use border-color utilities? Each border spinner specifies a transparent border for at least one side, so .border-{color} utilities would override that.

Growing spinner[](#growing-spinner)

If you don’t fancy a border spinner, switch to the grow spinner. While it doesn’t technically spin, it does repeatedly grow!

Loading...

html

```html
<div class="spinner-grow" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
```

Once again, this spinner is built with currentColor, so you can easily change its appearance with text color utilities. Here it is in blue, along with the supported variants.

Loading...

Loading...

Loading...

Loading...

Loading...

Loading...

Loading...

Loading...

html

```html
<div class="spinner-grow text-primary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-secondary" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-success" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-danger" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-warning" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-info" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-light" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow text-dark" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
```

Alignment[](#alignment)

Spinners in Bootstrap are built with rems, currentColor, and display: inline-flex. This means they can easily be resized, recolored, and quickly aligned.

Margin[](#margin)

Use margin utilities like .m-5 for easy spacing.

Loading...

html

```html
<div class="spinner-border m-5" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
```

Placement[](#placement)

Use flexbox utilities, float utilities, or text alignment utilities to place spinners exactly where you need them in any situation.

Flex[](#flex)

Loading...

html

```html
<div class="d-flex justify-content-center">
  <div class="spinner-border" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</div>
```

Loading...

html

```html
<div class="d-flex align-items-center">
  <strong role="status">Loading...</strong>
  <div class="spinner-border ms-auto" aria-hidden="true"></div>
</div>
```

Floats[](#floats)

Loading...

html

```html
<div class="clearfix">
  <div class="spinner-border float-end" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</div>
```

Text align[](#text-align)

Loading...

html

```html
<div class="text-center">
  <div class="spinner-border" role="status">
    <span class="visually-hidden">Loading...</span>
  </div>
</div>
```

Size[](#size)

Add .spinner-border-sm and .spinner-grow-sm to make a smaller spinner that can quickly be used within other components.

Loading...

Loading...

html

```html
<div class="spinner-border spinner-border-sm" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow spinner-grow-sm" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
```

Or, use custom CSS or inline styles to change the dimensions as needed.

Loading...

Loading...

html

```html
<div class="spinner-border" style="width: 3rem; height: 3rem;" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
<div class="spinner-grow" style="width: 3rem; height: 3rem;" role="status">
  <span class="visually-hidden">Loading...</span>
</div>
```

Buttons[](#buttons)

Use spinners within buttons to indicate an action is currently processing or taking place. You may also swap the text out of the spinner element and utilize button text as needed.

Loading... Loading...

html

```html
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
  <span class="visually-hidden" role="status">Loading...</span>
</button>
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-border spinner-border-sm" aria-hidden="true"></span>
  <span role="status">Loading...</span>
</button>
```

Loading... Loading...

html

```html
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-grow spinner-grow-sm" aria-hidden="true"></span>
  <span class="visually-hidden" role="status">Loading...</span>
</button>
<button class="btn btn-primary" type="button" disabled>
  <span class="spinner-grow spinner-grow-sm" aria-hidden="true"></span>
  <span role="status">Loading...</span>
</button>
```

CSS[](#css)

Variables[](#variables)

Added in v5.2.0

As part of Bootstrap’s evolving CSS variables approach, spinners now use local CSS variables on .spinner-border and .spinner-grow for enhanced real-time customization. Values for the CSS variables are set via Sass, so Sass customization is still supported, too.

Border spinner variables:

scss/\spinners.scss

```scss
--#{$prefix}spinner-width: #{$spinner-width};
--#{$prefix}spinner-height: #{$spinner-height};
--#{$prefix}spinner-vertical-align: #{$spinner-vertical-align};
--#{$prefix}spinner-border-width: #{$spinner-border-width};
--#{$prefix}spinner-animation-speed: #{$spinner-animation-speed};
--#{$prefix}spinner-animation-name: spinner-border;
```

Growing spinner variables:

scss/\spinners.scss

```scss
--#{$prefix}spinner-width: #{$spinner-width};
--#{$prefix}spinner-height: #{$spinner-height};
--#{$prefix}spinner-vertical-align: #{$spinner-vertical-align};
--#{$prefix}spinner-animation-speed: #{$spinner-animation-speed};
--#{$prefix}spinner-animation-name: spinner-grow;
```

For both spinners, small spinner modifier classes are used to update the values of these CSS variables as needed. For example, the .spinner-border-sm class does the following:

scss/\spinners.scss

```scss
--#{$prefix}spinner-width: #{$spinner-width-sm};
--#{$prefix}spinner-height: #{$spinner-height-sm};
--#{$prefix}spinner-border-width: #{$spinner-border-width-sm};
```

Sass variables[](#sass-variables)

scss/\variables.scss

```scss
$spinner-width:           2rem;
$spinner-height:          $spinner-width;
$spinner-vertical-align:  -.125em;
$spinner-border-width:    .25em;
$spinner-animation-speed: .75s;

$spinner-width-sm:        1rem;
$spinner-height-sm:       $spinner-width-sm;
$spinner-border-width-sm: .2em;
```

Keyframes[](#keyframes)

Used for creating the CSS animations for our spinners. Included in scss/_spinners.scss.

scss/\spinners.scss

```scss
@keyframes spinner-border {
  to { transform: rotate(360deg) #{"/* rtl:ignore */"}; }
}
```

scss/\spinners.scss

```scss
@keyframes spinner-grow {
  0% {
    transform: scale(0);
  }
  50% {
    opacity: 1;
    transform: none;
  }
}
```
