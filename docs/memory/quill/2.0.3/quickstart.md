---
url: https://quilljs.com/docs/quickstart/
title: Quickstart - Quill Rich Text Editor
words: 148
---
Quickstart

The best way to get started is to try a simple example. Quill is initialized with a DOM element to contain the editor. The contents of that element will become the initial contents of Quill.

```
<!-- Include stylesheet -->
<link href="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.snow.css" rel="stylesheet" />

<!-- Create the editor container -->
<div id="editor">
  <p>Hello World!</p>
  <p>Some initial <strong>bold</strong> text</p>
  <p><br /></p>
</div>

<!-- Include the Quill library -->
<script src="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
  const quill = new Quill('#editor', {
    theme: 'snow'
  });
</script>
```

Run Code

And that's all there is to it!

[](#next-steps)Next Steps

The real magic of Quill comes in its flexibility and extensibility. You can get an idea of what is possible by playing around with the demos throughout this site or head straight to the Interactive Playground. For an in-depth walkthrough, take a look at How to Customize Quill.
