---
url: https://quilljs.com/docs/api/
title: API - Quill Rich Text Editor
words: 3355
---
API

Content

- deleteText
- getContents
- getLength
- getText
- getSemanticHTML
- insertEmbed
- insertText
- setContents
- setText
- updateContents

Formatting

- format
- formatLine
- formatText
- getFormat
- removeFormat

Selection

- getBounds
- getSelection
- setSelection
- scrollSelectionIntoView

Editor

- blur
- focus
- disable
- enable
- hasFocus
- update
- scrollRectIntoView

Events

- text-change
- selection-change
- editor-change
- off
- on
- once

Model

- find
- getIndex
- getLeaf
- getLine
- getLines

Extension

- debug
- import
- register
- addContainer
- getModule

[](#content)Content

[](#deletetext)deleteText

Deletes text from the editor, returning a Delta representing the change. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

deleteText(index: number, length: number, source: string = 'api'): Delta
```

Example 1

```typescript

quill.deleteText(6, 4);
```

Example 2

```
const quill = new Quill('#editor', { theme: 'snow' });

document.querySelector('#deleteButton').addEventListener('click', () => {
  quill.deleteText(5, 7);
});
```

Run Code

[](#getcontents)getContents

Retrieves contents of the editor, with formatting data, represented by a Delta object.

Methods

```typescript

getContents(index: number = 0, length: number = remaining): Delta
```

Examples

```typescript

const delta = quill.getContents();
```

[](#getlength)getLength

Retrieves the length of the editor contents. Note even when Quill is empty, there is still a blank line represented by '\\n', so getLength will return 1.

Methods

```typescript

getLength(): number
```

Examples

```typescript

const length = quill.getLength();
```

[](#gettext)getText

Retrieves the string contents of the editor. Non-string content are omitted, so the returned string's length may be shorter than the editor's as returned by getLength. Note even when Quill is empty, there is still a blank line in the editor, so in these cases getText will return '\\n'.

The length parameter defaults to the length of the remaining document.

Methods

```typescript

getText(index: number = 0, length: number = remaining): string
```

Examples

```typescript

const text = quill.getText(0, 10);
```

[](#getsemantichtml)getSemanticHTML

Get the HTML representation of the editor contents. This method is useful for exporting the contents of the editor in a format that can be used in other applications.

The length parameter defaults to the length of the remaining document.

Methods

```typescript

getSemanticHTML(index: number = 0, length: number = remaining): string
```

Examples

```typescript

const html = quill.getSemanticHTML(0, 10);
```

[](#insertembed)insertEmbed

Insert embedded content into the editor, returning a Delta representing the change. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

insertEmbed(index: number, type: string, value: any, source: string = 'api'): Delta
```

Examples

```typescript

quill.insertEmbed(10, 'image', 'https://quilljs.com/images/cloud.png');
```

[](#inserttext)insertText

Inserts text into the editor, optionally with a specified format or multiple formats. Returns a Delta representing the change. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

insertText(index: number, text: string, source: string = 'api'): Delta
insertText(index: number, text: string, format: string, value: any,
           source: string = 'api'): Delta
insertText(index: number, text: string, formats: { [name: string]: any },
           source: string = 'api'): Delta
```

Examples

```typescript

quill.insertText(0, 'Hello', 'bold', true);


quill.insertText(5, 'Quill', {
  color: '#ffff00',
  italic: true,
});
```

[](#setcontents)setContents

Overwrites editor with given contents. Contents should end with a newline. Returns a Delta representing the change. This will be the same as the Delta passed in, if given Delta had no invalid operations. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

setContents(delta: Delta, source: string = 'api'): Delta
```

Examples

```typescript

quill.setContents([
  { insert: 'Hello ' },
  { insert: 'World!', attributes: { bold: true } },
  { insert: '\n' },
]);
```

[](#settext)setText

Sets contents of editor with given text, returning a Delta representing the change. Note Quill documents must end with a newline so one will be added for you if omitted. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

setText(text: string, source: string = 'api'): Delta
```

Examples

```typescript

quill.setText('Hello\n');
```

[](#updatecontents)updateContents

Applies Delta to editor contents, returning a Delta representing the change. These Deltas will be the same if the Delta passed in had no invalid operations. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

updateContents(delta: Delta, source: string = 'api'): Delta
```

Examples

```typescript

// Assuming editor currently contains [{ insert: 'Hello World!' }]
quill.updateContents(new Delta()
  .retain(6)                  // Keep 'Hello '
  .delete(5)                  // 'World' is deleted
  .insert('Quill')
  .retain(1, { bold: true })  // Apply bold to exclamation mark
);
// Editor should now be [
//  { insert: 'Hello Quill' },
//  { insert: '!', attributes: { bold: true} }
// ]
```

Note

This method updates the contents from the beginning, not from the current selection. Use Delta#retain(length: number) to skip the contents you wish to leave unchanged.

[](#formatting)Formatting

[](#format)format

Format text at user's current selection, returning a Delta representing the change. If the user's selection length is 0, i.e. it is a cursor, the format will be set active, so the next character the user types will have that formatting. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

format(name: string, value: any, source: string = 'api'): Delta
```

Examples

```typescript

quill.format('color', 'red');
quill.format('align', 'right');
```

[](#formatline)formatLine

Formats all lines in given range, returning a Delta representing the change. See formats for a list of available formats. Has no effect when called with inline formats. To remove formatting, pass false for the value argument. The user's selection may not be preserved. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

formatLine(index: number, length: number, source: string = 'api'): Delta
formatLine(index: number, length: number, format: string, value: any,
           source: string = 'api'): Delta
formatLine(index: number, length: number, formats: { [name: string]: any },
           source: string = 'api'): Delta
```

Examples

```typescript

quill.setText('Hello\nWorld!\n');


quill.formatLine(1, 2, 'align', 'right');   // right aligns the first line
quill.formatLine(4, 4, 'align', 'center');  // center aligns both lines
```

[](#formattext)formatText

Formats text in the editor, returning a Delta representing the change. For line level formats, such as text alignment, target the newline character or use the formatLine helper. See formats for a list of available formats. To remove formatting, pass false for the value argument. The user's selection may not be preserved. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

formatText(index: number, length: number, source: string = 'api'): Delta
formatText(index: number, length: number, format: string, value: any,
           source: string = 'api'): Delta
formatText(index: number, length: number, formats: { [name: string]: any },
           source: string = 'api'): Delta
```

Examples

```typescript

quill.setText('Hello\nWorld!\n');


quill.formatText(0, 5, 'bold', true);      // bolds 'hello'


quill.formatText(0, 5, {                   // unbolds 'hello' and set its color to blue
  'bold': false,
  'color': 'rgb(0, 0, 255)'
});


quill.formatText(5, 1, 'align', 'right');  // right aligns the 'hello' line
```

[](#getformat)getFormat

Retrieves common formatting of the text in the given range. For a format to be reported, all text within the range must have a truthy value. If there are different truthy values, an array with all truthy values will be reported. If no range is supplied, the user's current selection range is used. May be used to show which formats have been set on the cursor. If called with no arguments, the user's current selection range will be used.

Methods

```typescript

getFormat(range: Range = current): Record<string, unknown>
getFormat(index: number, length: number = 0): Record<string, unknown>
```

Examples

```typescript

quill.setText('Hello World!');
quill.formatText(0, 2, 'bold', true);
quill.formatText(1, 2, 'italic', true);
quill.getFormat(0, 2);   // { bold: true }
quill.getFormat(1, 1);   // { bold: true, italic: true }


quill.formatText(0, 2, 'color', 'red');
quill.formatText(2, 1, 'color', 'blue');
quill.getFormat(0, 3);   // { color: ['red', 'blue'] }


quill.setSelection(3);
quill.getFormat();       // { italic: true, color: 'blue' }


quill.format('strike', true);
quill.getFormat();       // { italic: true, color: 'blue', strike: true }


quill.formatLine(0, 1, 'align', 'right');
quill.getFormat();       // { italic: true, color: 'blue', strike: true,
                         //   align: 'right' }
```

[](#removeformat)removeFormat

Removes all formatting and embeds within given range, returning a Delta representing the change. Line formatting will be removed if any part of the line is included in the range. The user's selection may not be preserved. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.

Methods

```typescript

removeFormat(index: number, length: number, source: string = 'api'): Delta
```

Examples

```typescript

quill.setContents([
  { insert: 'Hello', { bold: true } },
  { insert: '\n', { align: 'center' } },
  { insert: { formula: 'x^2' } },
  { insert: '\n', { align: 'center' } },
  { insert: 'World', { italic: true }},
  { insert: '\n', { align: 'center' } }
]);


quill.removeFormat(3, 7);
// Editor contents are now
// [
//   { insert: 'Hel', { bold: true } },
//   { insert: 'lo\n\nWo' },
//   { insert: 'rld', { italic: true }},
//   { insert: '\n', { align: 'center' } }
// ]

```

[](#selection)Selection

[](#getbounds)getBounds

Retrieves the pixel position (relative to the editor container) and dimensions of a selection at a given location. The user's current selection need not be at that index. Useful for calculating where to place tooltips.

Methods

```typescript

getBounds(index: number, length: number = 0):
  { left: number, top: number, height: number, width: number }
```

Examples

```typescript

quill.setText('Hello\nWorld\n');
quill.getBounds(7); // Returns { height: 15, width: 0, left: 27, top: 31 }
```

[](#getselection)getSelection

Retrieves the user's selection range, optionally to focus the editor first. Otherwise null may be returned if editor does not have focus.

Methods

```typescript

getSelection(focus = false): { index: number, length: number }
```

Examples

```typescript

const range = quill.getSelection();
if (range) {
  if (range.length == 0) {
    console.log('User cursor is at index', range.index);
  } else {
    const text = quill.getText(range.index, range.length);
    console.log('User has highlighted: ', text);
  }
} else {
  console.log('User cursor is not in editor');
}
```

[](#setselection)setSelection

Sets user selection to given range, which will also focus the editor. Providing null as the selection range will blur the editor. Source may be "user", "api", or "silent".

Methods

```typescript

setSelection(index: number, length: number = 0, source: string = 'api')
setSelection(range: { index: number, length: number },
             source: string = 'api')
```

Examples

```typescript

quill.setSelection(0, 5);
```

[](#scrollselectionintoview)scrollSelectionIntoView

Scroll the current selection into the visible area. If the selection is already visible, no scrolling will occur.

Note

Quill calls this method automatically when setSelection is called, unless the source is "silent".

Methods

```typescript

scrollSelectionIntoView();
```

Examples

```typescript

quill.scrollSelectionIntoView();
```

[](#editor)Editor

[](#blur)blur

Removes focus from the editor.

Methods

```typescript

blur();
```

Examples

```typescript

quill.blur();
```

[](#disable)disable

Shorthand for enable(false).

[](#enable)enable

Set ability for user to edit, via input devices like the mouse or keyboard. Does not affect capabilities of API calls, when the source is "api" or "silent".

Methods

```typescript

enable(enabled: boolean = true);
```

Examples

```typescript

quill.enable();
quill.enable(false);   // Disables user input
```

[](#focus)focus

Focuses the editor and restores its last range.

Methods

```typescript

focus(options: { preventScroll?: boolean } = {});
```

Examples

```typescript

// Focus the editor, and scroll the selection into view
quill.focus();


// Focus the editor, but don't scroll
quill.focus({ preventScroll: true });
```

[](#hasfocus)hasFocus

Checks if editor has focus. Note focus on toolbar, tooltips, does not count as the editor.

Methods

```typescript

hasFocus(): boolean
```

Examples

```typescript

quill.hasFocus();
```

[](#update)update

Synchronously check editor for user updates and fires events, if changes have occurred. Useful for collaborative use cases during conflict resolution requiring the latest up to date state. Source may be "user", "api", or "silent".

Methods

```typescript

update(((source: string) = 'user'));
```

Examples

```typescript

quill.update();
```

[](#scrollrectintoview-experimental)scrollRectIntoViewexperimental

Scrolls the editor to the given pixel position. scrollSelectionIntoView is implemented by calling this method with the bounds of the current selection.

```typescript

scrollRectIntoView(bounds: {
  top: number;
  right: number;
  bottom: number;
  left: number;
});
```

Example 1

```typescript

// Scroll the editor to reveal the range of { index: 20, length: 5 }
const bounds = this.selection.getBounds(20, 5);
if (bounds) {
  quill.scrollRectIntoView(bounds);
}
```

Example 2

```
let text = "";
for (let i = 0; i < 100; i += 1) {
  text += `line ${i + 1}\n`;
}

const quill = new Quill('#editor', { theme: 'snow' });
quill.setText(text);

const target = 'line 50';
const bounds = quill.selection.getBounds(
  text.indexOf(target),
  target.length
);
if (bounds) {
  quill.scrollRectIntoView(bounds);
}
```

Run Code

[](#events)Events

[](#text-change)text-change

Emitted when the contents of Quill have changed. Details of the change, representation of the editor contents before the change, along with the source of the change are provided. The source will be "user" if it originates from the users. For example:

- User types into the editor
- User formats text using the toolbar
- User uses a hotkey to undo
- User uses OS spelling correction

Changes may occur through an API but as long as they originate from the user, the provided source should still be "user". For example, when a user clicks on the toolbar, technically the toolbar module calls a Quill API to effect the change. But source is still "user" since the origin of the change was the user's click.

APIs causing text to change may also be called with a "silent" source, in which case text-change will not be emitted. This is not recommended as it will likely break the undo stack and other functions that rely on a full record of text changes.

Changes to text may cause changes to the selection (ex. typing advances the cursor), however during the text-change handler, the selection is not yet updated, and native browser behavior may place it in an inconsistent state. Use selection-change or editor-change for reliable selection updates.

Callback Signature

```typescript

handler(delta: Delta, oldContents: Delta, source: string)
```

Examples

```typescript

quill.on('text-change', (delta, oldDelta, source) => {
  if (source == 'api') {
    console.log('An API call triggered this change.');
  } else if (source == 'user') {
    console.log('A user action triggered this change.');
  }
});
```

[](#selection-change)selection-change

Emitted when a user or API causes the selection to change, with a range representing the selection boundaries. A null range indicates selection loss (usually caused by loss of focus from the editor). You can also use this event as a focus change event by just checking if the emitted range is null or not.

APIs causing the selection to change may also be called with a "silent" source, in which case selection-change will not be emitted. This is useful if selection-change is a side effect. For example, typing causes the selection to change but would be very noisy to also emit a selection-change event on every character.

Callback Signature

```typescript

handler(range: { index: number, length: number },
        oldRange: { index: number, length: number },
        source: string)
```

Examples

```typescript

quill.on('selection-change', (range, oldRange, source) => {
  if (range) {
    if (range.length == 0) {
      console.log('User cursor is on', range.index);
    } else {
      const text = quill.getText(range.index, range.length);
      console.log('User has highlighted', text);
    }
  } else {
    console.log('Cursor not in the editor');
  }
});
```

[](#editor-change)editor-change

Emitted when either text-change or selection-change would be emitted, even when the source is "silent". The first parameter is the event name, either text-change or selection-change, followed by the arguments normally passed to those respective handlers.

Callback Signature

```typescript

handler(name: string, ...args)
```

Examples

```typescript

quill.on('editor-change', (eventName, ...args) => {
  if (eventName === 'text-change') {
    // args[0] will be delta
  } else if (eventName === 'selection-change') {
    // args[0] will be old range
  }
});
```

[](#on)on

Adds event handler. See text-change or selection-change for more details on the events themselves.

Methods

```typescript

on(name: string, handler: Function): Quill
```

Examples

```typescript

quill.on('text-change', () => {
  console.log('Text change!');
});
```

[](#once)once

Adds handler for one emission of an event. See text-change or selection-change for more details on the events themselves.

Methods

```typescript

once(name: string, handler: Function): Quill
```

Examples

```typescript

quill.once('text-change', () => {
  console.log('First text change!');
});
```

[](#off)off

Removes event handler.

Methods

```typescript

off(name: string, handler: Function): Quill
```

Examples

```typescript

function handler() {
  console.log('Hello!');
}


quill.on('text-change', handler);
quill.off('text-change', handler);
```

[](#model)Model

[](#find)find

Static method returning the Quill or Blot instance for the given DOM node. In the latter case, passing in true for the bubble parameter will search up the given DOM's ancestors until it finds a corresponding Blot.

Methods

```typescript

Quill.find(domNode: Node, bubble: boolean = false): Blot | Quill
```

Examples

```typescript

const container = document.querySelector('#container');
const quill = new Quill(container);
console.log(Quill.find(container) === quill); // Should be true


quill.insertText(0, 'Hello', 'link', 'https://world.com');
const linkNode = document.querySelector('#container a');
const linkBlot = Quill.find(linkNode);


// Find Quill instance from a blot
console.log(Quill.find(linkBlot.scroll.domNode.parentElement));
```

[](#getindex)getIndex

Returns the distance between the beginning of document to the occurrence of the given Blot.

Methods

```typescript

getIndex(blot: Blot): number
```

Examples

```typescript

let [line, offset] = quill.getLine(10);
let index = quill.getIndex(line); // index + offset should == 10
```

[](#getleaf)getLeaf

Returns the leaf Blot at the specified index within the document.

Methods

```typescript

getLeaf(index: number): [LeafBlot | null, number]
```

Examples

```typescript

quill.setText('Hello Good World!');
quill.formatText(6, 4, 'bold', true);


let [leaf, offset] = quill.getLeaf(7);
// leaf should be a Text Blot with value "Good"
// offset should be 1, since the returned leaf started at index 6
```

[](#getline)getLine

Returns the line Blot at the specified index within the document.

Methods

```typescript

getLine(index: number): [Block | BlockEmbed | null, number]
```

Examples

```typescript

quill.setText('Hello\nWorld!');


let [line, offset] = quill.getLine(7);
// line should be a Block Blot representing the 2nd "World!" line
// offset should be 1, since the returned line started at index 6
```

[](#getlines)getLines

Returns the lines contained within the specified location.

Methods

```typescript

getLines(index: number = 0, length: number = remaining): (Block | BlockEmbed)[]
getLines(range: Range): (Block | BlockEmbed)[]
```

Examples

```typescript

quill.setText('Hello\nGood\nWorld!');
quill.formatLine(1, 1, 'list', 'bullet');


let lines = quill.getLines(2, 5);
// array with a ListItem and Block Blot,
// representing the first two lines
```

[](#extension)Extension

[](#debug)debug

Static method enabling logging messages at a given level: 'error', 'warn', 'log', or 'info'. Passing true is equivalent to passing 'log'. Passing false disables all messages.

Methods

```typescript

Quill.debug(level: string | boolean)
```

Examples

```typescript

Quill.debug('info');
```

[](#import)import

Static method returning Quill library, format, module, or theme. In general the path should map exactly to Quill source code directory structure. Unless stated otherwise, modification of returned entities may break required Quill functionality and is strongly discouraged.

Methods

```typescript

Quill.import(path): any
```

Examples

```typescript

const Parchment = Quill.import('parchment');
const Delta = Quill.import('delta');


const Toolbar = Quill.import('modules/toolbar');
const Link = Quill.import('formats/link');
// Similar to ES6 syntax `import Link from 'quill/formats/link';`
```

Note

Don't confuse this with the import keyword for ECMAScript modules. Quill.import() doesn't load scripts over the network, it just returns the corresponding module from the Quill library without causing any side-effects.

[](#register)register

Registers a module, theme, or format(s), making them available to be added to an editor. Can later be retrieved with Quill.import. Use the path prefix of 'formats/', 'modules/', or 'themes/' for registering formats, modules or themes, respectively. For formats specifically there is a shorthand to just pass in the format directly and the path will be autogenerated. Will overwrite existing definitions with the same path.

Methods

```typescript

Quill.register(format: Attributor | BlotDefinintion, supressWarning: boolean = false)
Quill.register(path: string, def: any, supressWarning: boolean = false)
Quill.register(defs: { [path: string]: any }, supressWarning: boolean = false)
```

Examples

```typescript

const Module = Quill.import('core/module');


class CustomModule extends Module {}


Quill.register('modules/custom-module', CustomModule);
```

```typescript

Quill.register({
  'formats/custom-format': CustomFormat,
  'modules/custom-module-a': CustomModuleA,
  'modules/custom-module-b': CustomModuleB,
});


Quill.register(CustomFormat);
// You cannot do Quill.register(CustomModuleA); as CustomModuleA is not a format
```

[](#addcontainer)addContainer

Adds and returns a container element inside the Quill container, sibling to the editor itself. By convention, Quill modules should have a class name prefixed with ql-. Optionally include a refNode where container should be inserted before.

Methods

```typescript

addContainer(className: string, refNode?: Node): Element
addContainer(domNode: Node, refNode?: Node): Element
```

Examples

```typescript

const container = quill.addContainer('ql-custom');
```

[](#getmodule)getModule

Retrieves a module that has been added to the editor.

Methods

```typescript

getModule(name: string): any
```

Examples

```typescript

const toolbar = quill.getModule('toolbar');
```
