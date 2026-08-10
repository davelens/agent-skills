---
url: https://quilljs.com/docs/configuration/
title: Configuration - Quill Rich Text Editor
words: 489
---
Configuration

Quill allows several ways to customize it to suit your needs. This section is dedicated to tweaking existing functionality. See the Modules section for adding new functionality and the Themes section for styling.

[](#container)Container

Quill requires a container where the editor will be appended. You can pass in either a CSS selector or a DOM object.

```javascript

const quill = new Quill('#editor');  // First matching element will be used
```

```javascript

const container = document.getElementById('editor');
const quill = new Quill(container);
```

If the container is not empty, Quill will initialize with the existing contents.

[](#options)Options

To configure Quill, pass in an options object:

```
const options = {
  debug: 'info',
  modules: {
    toolbar: true,
  },
  placeholder: 'Compose an epic...',
  theme: 'snow'
};
const quill = new Quill('#editor', options);
```

Run Code

The following keys are recognized:

[](#bounds)bounds

Default: document.body

DOM Element or a CSS selector for a DOM Element, within which the editor's ui elements (i.e. tooltips, etc.) should be confined. Currently, it only considers left and right boundaries.

[](#debug)debug

Default: warn

Shortcut for debug. Note debug is a static method and will affect other instances of Quill editors on the page. Only warning and error messages are enabled by default.

[](#formats)formats

Default: null

A list of formats that are recognized and can exist within the editor contents.

By default, all formats that are defined in the Quill library are allowed. To restrict formatting to a smaller list, pass in an array of the format names to support.

You can create brand new formats or more fully customize the content using Registries. Specifying a registry option will ignore this formats option.

index.htmlindex.js

```
const Parchment = Quill.import('parchment');

const quill = new Quill('#editor', {
  formats: ['italic'],
});

const Delta = Quill.import('delta');
quill.setContents(
  new Delta()
    .insert('Only ')
    .insert('italic', { italic: true })
    .insert(' is allowed. ')
    .insert('Bold', { bold: true })
    .insert(' is not.')
);
```

Hide Result

[](#placeholder)placeholder

Default: None

Placeholder text to show when editor is empty.

```
const options = {
  placeholder: 'Hello, World!',
  theme: 'snow'
};
const quill = new Quill('#editor', options);
```

Run Code

[](#readonly)readOnly

Default: false

Whether to instantiate the editor to read-only mode.

```
const options = {
  readOnly: true,
  modules: {
    toolbar: null
  },
  theme: 'snow'
};
const quill = new Quill('#editor', options);
const Delta = Quill.import('delta');
quill.setContents(
  new Delta()
    .insert('Hello, ')
    .insert('World', { bold: true })
    .insert('\n')
);
```

Run Code

[](#registry)registry

Default: null

By default all formats defined by Quill are supported in the editor contents through a shared registry between editor instances. Use formats to restrict formatting for simple use cases and registry for greater customization. Specifying this registry option will ignore the formatting option. Learn more about Registries.

[](#theme)theme

Name of theme to use. The builtin options are "bubble" or "snow". An invalid or falsy value will load a default minimal theme. Note the theme's specific stylesheet still needs to be included manually. See Themes for more information.
