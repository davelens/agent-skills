---
url: https://quilljs.com/docs/modules/syntax/
title: Syntax Highlighter Module - Quill Rich Text Editor
words: 208
---
Syntax Highlighter Module

The Syntax Module enhances the Code Block format by automatically detecting and applying syntax highlighting. The excellent highlight.js library is used as a dependency to parse and tokenize code blocks.

In general, you may configure highlight.js as needed. However, Quill expects and requires the useBR option to be false if you are using highlight.js &lt; v11.

Quill supports highlight.js v9.12.0 and later.

[](#usage)Usage

```
<!-- Include your favorite highlight.js stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/atom-one-dark.min.css" rel="stylesheet">

<!-- Include the highlight.js library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.snow.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.js"></script>

<div id="editor"></div>

<script>
const quill = new Quill('#editor', {
  modules: {
    syntax: true,              // Include syntax module
    toolbar: [['code-block']]  // Include button in toolbar
  },
  theme: 'snow'
});

const Delta = Quill.import('delta');
quill.setContents(
  new Delta()
    .insert('const language = "JavaScript";')
    .insert('\n', { 'code-block': 'javascript' })
    .insert('console.log("I love " + language + "!");')
    .insert('\n', { 'code-block': 'javascript' })
);
</script>
```

Hide Result

[](#use-npm-package)Use npm Package

If you install highlight.js as an npm package and don't want to expose it to window, you need to pass it to syntax module as an option:

```js

import Quill from 'quill';
import hljs from 'highlight.js';


const quill = new Quill('#editor', {
  modules: {
    syntax: { hljs },
  },
});
```
