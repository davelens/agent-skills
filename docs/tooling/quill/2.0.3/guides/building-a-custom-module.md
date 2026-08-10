---
url: https://quilljs.com/docs/guides/building-a-custom-module/
title: Building a Custom Module - Quill Rich Text Editor
words: 337
---
Building a Custom Module

Quill's core strength as an editor is its rich API and powerful customization capabilities. As you implement functionality on top of Quill's API, it may be convenient to organize this as a module. For the purpose of this guide, we will walk through one way to build a word counter module, a commonly found feature in many word processors.

Note

Internally modules are how much of Quill's functionality is organized. You can overwrite these default modules by implementing your own and registering it with the same name.

[](#counting-words)Counting Words

At its core a word counter simply counts the number of words in the editor and displays this value in some UI. Thus we need to:

1. Listen for text changes in Quill.
2. Count the number of words.
3. Display this value.

Let's jump straight in with a complete example!

index.htmlindex.cssindex.js

```
<link href="/index.css" rel="stylesheet">

<div id="editor"></div>
<div id="counter">0</div>

<script src="/index.js"></script>
```

Hide Result

That's all it takes to add a custom module to Quill! A function can be registered as a module and it will be passed the corresponding Quill editor object along with any options.

[](#using-options)Using Options

Modules are passed an options object that can be used to fine tune the desired behavior. We can use this to accept a selector for the counter container instead of a hard-coded string. Let's also customize the counter to either count words or characters:

index.htmlindex.cssindex.js

```
<link href="/index.css" rel="stylesheet">

<div id="editor"></div>
<div id="counter">0</div>

<script src="/index.js"></script>
```

Hide Result

[](#constructors)Constructors

Since any function can be registered as a Quill module, we could have implemented our counter as an ES5 constructor or ES6 class. This allows us to access and utilize the module directly.

index.htmlindex.cssindex.js

```
<link href="/index.css" rel="stylesheet">

<div id="editor"></div>
<div id="counter">0</div>

<script src="/index.js"></script>
```

Hide Result

[](#wrapping-it-all-up)Wrapping It All Up

Now let's polish off the module in ES6 and fix a few pesky bugs. That's all there is to it!

index.htmlindex.cssindex.js

```
<link href="/index.css" rel="stylesheet">

<div id="editor"></div>
<div id="counter">0</div>

<script src="/index.js"></script>
```

Hide Result
