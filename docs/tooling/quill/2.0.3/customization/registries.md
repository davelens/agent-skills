---
url: https://quilljs.com/docs/customization/registries/
title: Registries - Quill Rich Text Editor
words: 272
---
Registries

Registries allow multiple editors with different formats to coexist on the same page.

If you register a format with Quill.register(), the format will be registered to a global registry, which will be used by all Quill instances.

However, in some cases, you might want to have multiple registries, so that different Quill instances can have different formats. For example, you might want to have a Quill instance that only supports bold and italic, and another Quill instance that supports bold, italic, and underline.

[](#usage)Usage

To create a Quill with a custom registry, you can pass in a registry object to the Quill constructor:

```js

const registry = new Parchment.Registry();


// Register the formats that you need for the editor with `registry.register()`.
// We will cover this in more detail in the next section.


const quill = new Quill('#editor', {
  registry,
  // ...other options
})
```

[](#register-formats)Register Formats

A custom registry doesn't come with any formats by default. You should register the formats that you need with registry.register(). There are some essential formats that you will need to register in order to have a functional editor:

index.htmlindex.js

```
<!-- Include stylesheet -->
<link href="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.snow.css" rel="stylesheet" />
<div id="editor">
</div>
<!-- Include the Quill library -->
<script src="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.js"></script>
<script src="/index.js"></script>
```

Hide Result

Note

You may have noticed that the format buttons on the toolbar above doesn't work. This is because we haven't registered any of the corresponding formats yet.

The toolbar module doesn't detect whether a format is available or not, so it will always show the buttons. Follow this guide to learn more about how to customize the toolbar.
