---
url: https://quilljs.com/docs/delta/
title: Delta - Quill Rich Text Editor
words: 832
---
Delta

Deltas are a simple, yet expressive format that can be used to describe Quill's contents and changes. The format is a strict subset of JSON, is human readable, and easily parsible by machines. Deltas can describe any Quill document, includes all text and formatting information, without the ambiguity and complexity of HTML.

Note

Don't be confused by its name Delta—Deltas represents both documents and changes to documents. If you think of Deltas as the instructions from going from one document to another, the way Deltas represent a document is by expressing the instructions starting from an empty document.

Deltas are implemented as a separate standalone library, allowing its use outside of Quill. It is suitable for Operational Transform and can be used in realtime, Google Docs like applications. For a more in depth explanation behind Deltas, see Designing the Delta Format.

Note

It is not recommended to construct Deltas by hand—rather use the chainable insert(), delete(), and retain() methods to create new Deltas. You can use import() to access Delta from Quill.

[](#document)Document

The Delta format is almost entirely self-explanatory—the example below describes the string "Gandalf the Grey" where "Gandalf" is bolded and "Grey" is colored #cccccc.

```javascript

{
  ops: [
    { insert: 'Gandalf', attributes: { bold: true } },
    { insert: ' the ' },
    { insert: 'Grey', attributes: { color: '#cccccc' } }
  ]
}
```

As its name would imply, describing content is actually a special case for Deltas. The above example is more specifically instructions to insert a bolded string "Gandalf", an unformatted string " the ", followed by the string "Grey" colored #cccccc. When Deltas are used to describe content, it can be thought of as the content that would be created if the Delta was applied to an empty document.

Since Deltas are a data format, there is no inherent meaning to the values of attribute keypairs. For example, there is nothing in the Delta format that dictates color value must be in hex—this is a choice that Quill makes, and can be modified if desired with Parchment.

[](#embeds)Embeds

For non-text content such as images or formulas, the insert key can be an object. The object should have one key, which will be used to determine its type. This is the blotName if you are building custom content with Parchment. Like text, embeds can still have an attributes key to describe formatting to be applied to the embed. All embeds have a length of one.

```javascript

{
  ops: [{
    // An image link
    insert: {
      image: 'https://quilljs.com/assets/images/icon.png'
    },
    attributes: {
      link: 'https://quilljs.com'
    }
  }]
}
```

[](#line-formatting)Line Formatting

Attributes associated with a newline character describes formatting for that line.

```javascript

{
  ops: [
    { insert: 'The Two Towers' },
    { insert: '\n', attributes: { header: 1 } },
    { insert: 'Aragorn sped on up the hill.\n' }
  ]
}
```

All Quill documents must end with a newline character, even if there is no formatting applied to the last line. This way, you will always have a character position to apply line formatting to.

Many line formats are exclusive. For example Quill does not allow a line to simultaneously be both a header and a list, despite being possible to represent in the Delta format.

[](#changes)Changes

When you register a listener for Quill's text-change event, one of the arguments you will get is a Delta describing what changed. In addition to insert operations, this Delta might also have delete or retain operations.

[](#delete)Delete

The delete operation instructs exactly what it implies: delete the next number of characters.

```javascript

{
  ops: [
    { delete: 10 } // Delete the next 10 characters
  ]
}
```

Since delete operations do not include what was deleted, a Delta is not reversible.

[](#retain)Retain

A retain operation simply means keep the next number of characters, without modification. If attributes is specified, it still means keep those characters, but apply the formatting specified by the attributes object. A null value for an attributes key is used to specify format removal.

Starting with the above "Gandalf the Grey" example:

```javascript

// {
//   ops: [
//     { insert: 'Gandalf', attributes: { bold: true } },
//     { insert: ' the ' },
//     { insert: 'Grey', attributes: { color: '#cccccc' } }
//   ]
// }


{
  ops: [
    // Unbold and italicize "Gandalf"
    { retain: 7, attributes: { bold: null, italic: true } },


    // Keep " the " as is
    { retain: 5 },


    // Insert "White" formatted with color #fff
    { insert: 'White', attributes: { color: '#fff' } },


    // Delete "Grey"
    { delete: 4 }
  ]
}
```

Note that a Delta's instructions always starts at the beginning of the document. And because of plain retain operations, we never need to specify an index for a delete or insert operation.

[](#playground)Playground

Play around with Quill and take a look at how its content and changes look. Open your developer console for another view into the Deltas.

Show Code
