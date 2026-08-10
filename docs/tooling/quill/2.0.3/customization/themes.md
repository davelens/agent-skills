---
url: https://quilljs.com/docs/customization/themes/
title: Themes - Quill Rich Text Editor
words: 162
---
Themes

Themes allow you to easily make your editor look good with minimal effort. Quill features two officially supported themes: Snow and Bubble.

[](#usage)Usage

```html

<!-- Add the theme's stylesheet -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.bubble.css" />


<script src="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.js"></script>
<script>
  const quill = new Quill('#editor', {
    theme: 'bubble', // Specify theme in configuration
  });
</script>
```

[](#bubble)Bubble

Bubble is a simple tooltip based theme.

Show Code

Standalone

[](#snow)Snow

Snow is a clean, flat toolbar theme.

Show Code

Standalone

[](#customization)Customization

Themes primarily control the visual look of Quill through its CSS stylesheet, and many changes can easily be made by overriding these rules. This is easiest to do, as with any other web application, by simply using your browser developer console to inspect the elements to view the rules affecting them.

Many other customizations can be done through the respective modules. For example, the toolbar is perhaps the most visible user interface, but much of the customization is done through the Toolbar module.
