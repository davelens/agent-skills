# Quill 2.0.3 — Agent Navigation Index

Offline mirror of the official Quill rich-text editor docs (`quilljs.com/docs`). Read the smallest relevant file and verify method signatures, Delta shapes, module options, format names, and extension APIs instead of guessing.

**Mirror root:** `docs/memory/quill/2.0.3/` · **Source:** `quilljs.com/docs` · 20 pages

## Quick routing

| Need | File(s) |
|------|---------|
| Initialize or install Quill | `quickstart.md`, `installation.md`, `configuration.md` |
| Read, write, format, select, or listen for changes | `api.md` |
| Understand or construct Delta data | `delta.md`, `guides/designing-the-delta-format.md` |
| Supported built-in formats | `formats.md` |
| Configure toolbar, keyboard, history, clipboard, or syntax | `modules/*.md` |
| Add custom behavior | `guides/building-a-custom-module.md` |
| Add custom blots/formats with Parchment | `guides/cloning-medium-with-parchment.md` |
| Style or isolate editors | `customization/themes.md`, `customization/registries.md` |
| Migrate from Quill 1.3 | `upgrading-to-2-0.md` |

## Start

- [`installation.md`](installation.md) — **Installation**: Quill comes ready to use in several convenient forms.
- [`quickstart.md`](quickstart.md) — **Quickstart**: The best way to get started is to try a simple example. Quill is initialized with a DOM element to contain the editor. The contents of that element will become the initial contents of Quill.
- [`upgrading-to-2-0.md`](upgrading-to-2-0.md) — **Upgrading to 2.0**: Quill has been significantly modernized. Leveraging the latest browser-supported APIs, Quill now delivers a more efficient and reliable editing experience.
- [`why-quill.md`](why-quill.md) — **Why Quill**: Content creation has been at the core to the web since its beginning. The <textarea> provides a native and essential solution to almost any web application. But at some point you may need to add formatting to text input. This is where rich text editors come in. There are many solutions to choose from, but Quill brings a few modern ideas to consider.

## Core reference

- [`api.md`](api.md) — **API**: Deletes text from the editor, returning a Delta representing the change. Source may be "user", "api", or "silent". Calls where the source is "user" when the editor is disabled are ignored.
- [`configuration.md`](configuration.md) — **Configuration**: Quill allows several ways to customize it to suit your needs. This section is dedicated to tweaking existing functionality. See the Modules section for adding new functionality and the Themes section for styling.
- [`delta.md`](delta.md) — **Delta**: Deltas are a simple, yet expressive format that can be used to describe Quill's contents and changes. The format is a strict subset of JSON, is human readable, and easily parsible by machines. Deltas can describe any Quill document, includes all text and formatting information, without the ambiguity and complexity of HTML.
- [`formats.md`](formats.md) — **Formats**: Quill supports a number of formats, both in UI controls and API calls.

## Modules

- [`modules.md`](modules.md) — **Modules**: Modules allow Quill's behavior and functionality to be customized. Several officially supported modules are available to pick and choose from, some with additional configuration options and APIs. Refer to their respective documentation pages for more details.
- [`modules/clipboard.md`](modules/clipboard.md) — **Clipboard Module**: The Clipboard handles copy, cut and paste between Quill and external applications. A set of defaults exist to provide sane interpretation of pasted content, with the ability for further customization through matchers.
- [`modules/history.md`](modules/history.md) — **History Module**: The History module is responsible for handling undo and redo for Quill. It can be configured with the following options:
- [`modules/keyboard.md`](modules/keyboard.md) — **Keyboard Module**: The Keyboard module enables custom behavior for keyboard events in particular contexts. Quill uses this to bind formatting hotkeys and prevent undesirable browser side effects.
- [`modules/syntax.md`](modules/syntax.md) — **Syntax Highlighter Module**: The Syntax Module enhances the Code Block format by automatically detecting and applying syntax highlighting. The excellent highlight.js library is used as a dependency to parse and tokenize code blocks.
- [`modules/toolbar.md`](modules/toolbar.md) — **Toolbar Module**: The Toolbar module allow users to easily format Quill's contents.

## Customization

- [`customization.md`](customization.md) — **Customization**: Quill was designed with customization and extension in mind. This is achieved by implementing a small editor core exposed by a granular, well defined API. The core is augmented by modules, using the same APIs you have access to.
- [`customization/registries.md`](customization/registries.md) — **Registries**: Registries allow multiple editors with different formats to coexist on the same page.
- [`customization/themes.md`](customization/themes.md) — **Themes**: Themes allow you to easily make your editor look good with minimal effort. Quill features two officially supported themes: Snow and Bubble.

## Guides

- [`guides/building-a-custom-module.md`](guides/building-a-custom-module.md) — **Building a Custom Module**: Quill's core strength as an editor is its rich API and powerful customization capabilities. As you implement functionality on top of Quill's API, it may be convenient to organize this as a module. For the purpose of this guide, we will walk through one way to build a word counter module, a commonly found feature in many word processors.
- [`guides/cloning-medium-with-parchment.md`](guides/cloning-medium-with-parchment.md) — **Cloning Medium with Parchment**: To provide a consistent editing experience, you need both consistent data and predictable behaviors. The DOM unfortunately lacks both of these. The solution for modern editors is to maintain their own document model to represent their contents. Parchment is that solution for Quill. It is organized in its own codebase with its own API layer. Through Parchment you can customize the content and formats Quill recognizes, or add entirely new ones.
- [`guides/designing-the-delta-format.md`](guides/designing-the-delta-format.md) — **Designing the Delta Format**: Rich text editors lack a specification to express its own contents. Until recently, most rich text editors did not even know what was in their own edit areas. These editors just pass the user HTML, along with the burden of parsing and interpretting this. At any given time, this interpretation will differ from those of major browser vendors, leading to different editing experiences for users.
