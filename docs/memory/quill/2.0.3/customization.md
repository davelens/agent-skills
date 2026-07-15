---
url: https://quilljs.com/docs/customization/
title: Customization - Quill Rich Text Editor
words: 1090
---
Customization

Quill was designed with customization and extension in mind. This is achieved by implementing a small editor core exposed by a granular, well defined API. The core is augmented by modules, using the same APIs you have access to.

In general, common customizations are handled in configurations, user interfaces by Themes and CSS, functionality by modules, and editor contents by Parchment.

[](#configurations)Configurations

Quill favors Code over Configuration™, but for very common needs, especially where the equivalent code would be lengthy or complex, Quill provides configuration options. This would be a good first place to look to determine if you even need to implement any custom functionality.

Two of the most powerful options is modules and theme. You can drastically change or expand what Quill can and does do by simply adding or removing individual modules or using a different theme.

[](#themes)Themes

Quill officially supports a standard toolbar theme Snow and a floating tooltip theme Bubble. Since Quill is not confined within an iframe like many legacy editors, many visual modifications can be made with just CSS, using one of the existing themes.

If you would like to drastically change UI interactions, you can omit the theme configuration option, which will give you an unstyled Quill editor. You do still need to include a minimal stylesheet that, for example, makes sure spaces render in all browsers and ordered lists are appropriately numbered.

```html

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/[email protected]/dist/quill.core.css" />
```

From there you can implement and attach your own UI elements like custom dropdowns or tooltips. The last section of Cloning Medium with Parchment provides an example of this in action.

[](#modules)Modules

Quill is designed with a modular architecture composed of a small editing core, surrounded by modules that augment its functionality. Some of this functionality is quite integral to editing, such as the History module, which manages undo and redo. Because all modules use the same public API exposed to the developer, even interchanging core modules is possible, when necessary.

Like Quill's core itself, many modules expose additional configuration options and APIs. Before deciding to replace a module, take a look at its documentation. Often your desired customization is already implemented as a configuration or API call.

Otherwise, if you would like to drastically change functionality an existing module already covers, you can simply not include it—or explicitly exclude it when a theme includes it by default—and implement the functionality to your liking external to Quill, using the same API the default module uses.

```
const quill = new Quill('#editor', {
  modules: {
    toolbar: false    // Snow includes toolbar by default
  },
  theme: 'snow'
});
```

Run Code

A few modules—Clipboard, Keyboard, and History—need to be included as core functionality depend on the APIs they provide. For example, even though undo and redo is basic, expected, editor functionality, the native browser behavior handling of this is inconsistent and unpredictable. The History module bridges the gap by implementing its own undo manager and exposing undo() and redo() as APIs.

Nevertheless, staying true to Quill modular design, you can still drastically change the way undo and redo—or any other core functionality—works by implementing your own undo manager to replace the History module. As long as you implement the same API interface, Quill will happily use your replacement module. This is most easily done by inheriting from the existing module, and overwriting the methods you want to change. Take a look at the modules documentation for a very simple example of overwriting the core Clipboard module.

Finally, you may want to add functionality not provided by existing modules. In this case, it may be convenient to organize this as a Quill module, which the Building A Custom Module guide covers. Of course, it is certainly valid to just keep this logic separate from Quill, in your application code instead.

[](#content-and-formatting)Content and Formatting

Quill allows modification and extension of the contents and formats that it understands through its document model Parchment. Content and formats are represented in Parchment as either Blots or Attributors, which roughly correspond to Nodes or Attributes in the DOM.

[](#class-vs-inline)Class vs Inline

Quill uses classes, instead of inline style attributes, when possible, but both are implemented for you to pick and choose. A live example of this is implemented as a Playground snippet.

```js

const ColorClass = Quill.import('attributors/class/color');
const SizeStyle = Quill.import('attributors/style/size');
Quill.register(ColorClass, true);
Quill.register(SizeStyle, true);


// Initialize as you would normally
const quill = new Quill('#editor', {
  modules: {
    toolbar: true,
  },
  theme: 'snow',
});
```

[](#customizing-attributors)Customizing Attributors

In addition to choosing the particular Attributor, you can also customize existing ones. Here is an example of the font whitelist to add additional fonts.

```js

const FontAttributor = Quill.import('attributors/class/font');
FontAttributor.whitelist = [
  'sofia',
  'slabo',
  'roboto',
  'inconsolata',
  'ubuntu',
];
Quill.register(FontAttributor, true);
```

Note you still need to add styling for these classes into your CSS files.

```html

<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet" />
<style>
  .ql-font-roboto {
    font-family: 'Roboto', sans-serif;
  }
</style>
```

[](#customizing-blots)Customizing Blots

Formats represented by Blots can also be customized. Here is how you would change the DOM Node used to represent bold formatting.

```
const Bold = Quill.import('formats/bold');
Bold.tagName = 'B';   // Quill uses <strong> by default
Quill.register(Bold, true);

// Initialize as you would normally
const quill = new Quill('#editor', {
  modules: {
    toolbar: true
  },
  theme: 'snow'
});

const Delta = Quill.import('delta');
quill.setContents(
  new Delta()
    .insert('Rendered with <b>!', { bold: true })
    .insert('\n')
);
```

Run Code

[](#extending-blots)Extending Blots

You can also extend existing formats. Here is a quick ES6 implementation of a list item that does not permit formatting its contents. Code blocks are implemented in exactly this way.

```js

const ListItem = Quill.import('formats/list/item');


class PlainListItem extends ListItem {
  formatAt(index, length, name, value) {
    if (name === 'list') {
      // Allow changing or removing list format
      super.formatAt(name, value);
    }
    // Otherwise ignore
  }
}


Quill.register(PlainListItem, true);


// Initialize as you would normally
const quill = new Quill('#editor', {
  modules: {
    toolbar: true,
  },
  theme: 'snow',
});
```

You can view a list of Blots and Attributors available by calling console.log(Quill.imports);. Direct modification of this object is not supported. Use Quill.register instead.

A complete reference on Parchment, Blots and Attributors can be found on Parchment's own README. For an in-depth walkthrough, take a look at Cloning Medium with Parchment, which starts with Quill understanding just plain text, to adding all of the formats Medium supports. Most of the time, you will not have to build formats from scratch since most are already implemented in Quill, but it is still useful to understanding how Quill works at this deeper level.
