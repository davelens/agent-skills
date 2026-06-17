# Bootstrap 5.3.8 — Agent Navigation Index

Offline mirror of the official Bootstrap docs. Each entry: file path, page title, one-line purpose, and its top-level sections (page anchors). Read a single file for full markup, class names, and `data-bs-*` attributes for that topic. Do not guess class names — verify against the file.

**Mirror root:** `docs/memory/bootstrap/5.3.8/` · **Source:** `getbootstrap.com/docs/5.3` · 97 pages

## Quick routing

| Need | File(s) |
|------|------|
| Responsive columns / grid | `layout/grid.md`, `layout/columns.md`, `layout/gutters.md` |
| Flexbox align / justify / order | `utilities/flex.md` |
| Margin / padding / gap scale (`m-*`, `p-*`, `gap-*`) | `utilities/spacing.md` |
| Text, colors, borders, sizing, display | `utilities/text.md`, `utilities/colors.md`, `utilities/borders.md`, `utilities/sizing.md`, `utilities/display.md` |
| Form inputs + validation | `forms/form-control.md`, `forms/validation.md`, `forms/input-group.md`, `forms/select.md` |
| Dark mode / theming / brand color | `customize/color-modes.md`, `customize/sass.md`, `customize/css-variables.md`, `customize/options.md` |
| JS component (toggle / methods / events) | that component's `components/*.md` |
| Required CSS/JS bundle + globals | `getting-started/introduction.md`, `getting-started/javascript.md` |
| Breakpoints (`sm md lg xl xxl`) | `layout/breakpoints.md` |

## Getting started (`getting-started/`)

- [`getting-started/accessibility.md`](getting-started/accessibility.md) — **Accessibility**: A brief overview of Bootstrap’s features and limitations for the creation of accessible content.
  - _Sections:_ Overview and limitations, Additional resources
- [`getting-started/browsers-devices.md`](getting-started/browsers-devices.md) — **Browsers and devices**: Learn about the browsers and devices, from modern to old, that are supported by Bootstrap, including known quirks and bugs for each.
  - _Sections:_ Supported browsers, Internet Explorer, Modals and dropdowns on mobile, Browser zooming, Validators
- [`getting-started/contents.md`](getting-started/contents.md) — **Contents**: Discover what’s included in Bootstrap, including our compiled and source code flavors.
  - _Sections:_ Compiled Bootstrap, Bootstrap source code
- [`getting-started/download.md`](getting-started/download.md) — **Download**: Download Bootstrap to get the compiled CSS and JavaScript, source code, or include it with your favorite package managers like npm, RubyGems, and more.
  - _Sections:_ Compiled CSS and JS, Source files, Examples, CDN via jsDelivr, Package managers, IntelliSense extension
- [`getting-started/introduction.md`](getting-started/introduction.md) — **Get started with Bootstrap**: Bootstrap is a powerful, feature-packed frontend toolkit. Build anything—from prototype to production—in minutes.
  - _Sections:_ Quick start, CDN links, Next steps, JS components, Important globals, Community
- [`getting-started/javascript.md`](getting-started/javascript.md) — **JavaScript**: Bring Bootstrap to life with our optional JavaScript plugins. Learn about each plugin, our data and programmatic API options, and more.
  - _Sections:_ Individual or compiled, Usage with JavaScript frameworks, Using Bootstrap as a module, Dependencies, Data attributes, Selectors, Events, Programmatic API, Methods and properties, Sanitizer, Optionally using jQuery, Disabled JavaScript
- [`getting-started/parcel.md`](getting-started/parcel.md) — **Bootstrap and Parcel**: The official guide for how to include and bundle Bootstrap’s CSS and JavaScript in your project using Parcel.
  - _Sections:_ What is Parcel?, Setup, Project structure, Configure Parcel, Import Bootstrap
- [`getting-started/rfs.md`](getting-started/rfs.md) — **RFS**: Bootstrap’s resizing engine responsively scales common CSS properties to better utilize available space across viewports and devices.
  - _Sections:_ What is RFS?, Using RFS, Extended documentation
- [`getting-started/rtl.md`](getting-started/rtl.md) — **RTL**: Learn how to enable support for right-to-left text in Bootstrap across our layout, components, and utilities.
  - _Sections:_ Get familiar, Required HTML, Approach, Customize from source, The breadcrumb case, Additional resources
- [`getting-started/vite.md`](getting-started/vite.md) — **Bootstrap and Vite**: The official guide for how to include and bundle Bootstrap’s CSS and JavaScript in your project using Vite.
  - _Sections:_ What is Vite?, Setup, Project structure, Configure Vite, Import Bootstrap
- [`getting-started/webpack.md`](getting-started/webpack.md) — **Bootstrap and Webpack**: The official guide for how to include and bundle Bootstrap’s CSS and JavaScript in your project using Webpack.
  - _Sections:_ What is Webpack?, Setup, Project structure, Configure Webpack, Import Bootstrap, Production optimizations

## Customize (`customize/`)

- [`customize/color-modes.md`](customize/color-modes.md) — **Color modes**: Bootstrap now supports color modes, or themes, as of v5.3.0. Explore our default light color mode and the new dark mode, or create your own using our styles as your template.
  - _Sections:_ Dark mode, Example, How it works, Usage, Custom color modes, JavaScript, Adding theme colors, CSS
- [`customize/color.md`](customize/color.md) — **Color**: Bootstrap is supported by an extensive color system that themes our styles and components. This enables more comprehensive customization and extension for any project.
  - _Sections:_ Colors, Color Sass maps, Generating utilities
- [`customize/components.md`](customize/components.md) — **Components**: Learn how and why we build nearly all our components responsively and with base and modifier classes.
  - _Sections:_ Base classes, Modifiers, Responsive, Creating your own
- [`customize/css-variables.md`](customize/css-variables.md) — **CSS variables**: Use Bootstrap’s CSS custom properties for fast and forward-looking design and development.
  - _Sections:_ Root variables, Component variables, Prefix, Examples, Focus variables, Grid breakpoints
- [`customize/optimize.md`](customize/optimize.md) — **Optimize**: Keep your projects lean, responsive, and maintainable so you can deliver the best experience and focus on more important jobs.
  - _Sections:_ Lean Sass imports, Lean JavaScript, Autoprefixer .browserslistrc, Unused CSS, Minify and gzip, Non-blocking files, Always use HTTPS
- [`customize/options.md`](customize/options.md) — **Options**: 
- [`customize/overview.md`](customize/overview.md) — **Customize**: 
- [`customize/sass.md`](customize/sass.md) — **Sass**: Utilize our source Sass files to take advantage of variables, maps, mixins, and functions to help you build faster and customize your project.
  - _Sections:_ File structure, Importing, Compiling, Including, Variable defaults, Maps and loops, Required keys, Functions, Mixins

## Layout (`layout/`)

- [`layout/breakpoints.md`](layout/breakpoints.md) — **Breakpoints**: Breakpoints are customizable widths that determine how your responsive layout behaves across device or viewport sizes in Bootstrap.
  - _Sections:_ Core concepts, Available breakpoints, Media queries
- [`layout/columns.md`](layout/columns.md) — **Columns**: Learn how to modify columns with a handful of options for alignment, ordering, and offsetting thanks to our flexbox grid system. Plus, see how to use column classes to manage widths of non-grid elements.
  - _Sections:_ How they work, Alignment, Reordering, Standalone column classes
- [`layout/containers.md`](layout/containers.md) — **Containers**: Containers are a fundamental building block of Bootstrap that contain, pad, and align your content within a given device or viewport.
  - _Sections:_ How they work, Default container, Responsive containers, Fluid containers, CSS
- [`layout/css-grid.md`](layout/css-grid.md) — **CSS Grid**: Learn how to enable, use, and customize our alternate layout system built on CSS Grid with examples and code snippets.
  - _Sections:_ How it works, Key differences, Examples, Wrapping, Starts, Auto columns, Nesting, Customizing, Sass
- [`layout/grid.md`](layout/grid.md) — **Grid system**: Use our powerful mobile-first flexbox grid to build layouts of all shapes and sizes thanks to a twelve column system, six default responsive tiers, Sass variables and mixins, and dozens of predefined classes.
  - _Sections:_ Example, How it works, Grid options, Auto-layout columns, Responsive classes, Nesting, CSS, Customizing the grid
- [`layout/gutters.md`](layout/gutters.md) — **Gutters**: Gutters are the padding between your columns, used to responsively space and align content in the Bootstrap grid system.
  - _Sections:_ How they work, Horizontal gutters, Vertical gutters, Horizontal & vertical gutters, Row columns gutters, No gutters, Change the gutters
- [`layout/utilities.md`](layout/utilities.md) — **Utilities for layout**: For faster mobile-friendly and responsive development, Bootstrap includes dozens of utility classes for showing, hiding, aligning, and spacing content.
  - _Sections:_ Changing display, Flexbox options, Margin and padding, Toggle visibility
- [`layout/z-index.md`](layout/z-index.md) — **Z-index**: 

## Content (`content/`)

- [`content/figures.md`](content/figures.md) — **Figures**: Documentation and examples for displaying related images and text with the figure component in Bootstrap.
  - _Sections:_ CSS
- [`content/images.md`](content/images.md) — **Images**: Documentation and examples for opting images into responsive behavior (so they never become wider than their parent) and add lightweight styles to them—all via classes.
  - _Sections:_ Responsive images, Image thumbnails, Aligning images, Picture, CSS
- [`content/reboot.md`](content/reboot.md) — **Reboot**: Reboot, a collection of element-specific CSS changes in a single file, kickstart Bootstrap to provide an elegant, consistent, and simple baseline to build upon.
  - _Sections:_ Approach, CSS variables, Page defaults, Native font stack, Headings, Paragraphs, Links, Horizontal rules, Lists, Inline code, Code blocks, Variables, User input, Sample output, Tables, Forms, Misc elements, [HTML5 \[hidden\] attribute](#html5-hidden-attribute)
- [`content/tables.md`](content/tables.md) — **Tables**: Documentation and examples for opt-in styling of tables (given their prevalent use in JavaScript plugins) with Bootstrap.
  - _Sections:_ Overview, Variants, Accented tables, How do the variants and accented tables work?, Table borders, Small tables, Table group dividers, Vertical alignment, Nesting, How nesting works, Anatomy, Responsive tables, CSS
- [`content/typography.md`](content/typography.md) — **Typography**: Documentation and examples for Bootstrap typography, including global settings, headings, body text, lists, and more.
  - _Sections:_ Global settings, Headings, Display headings, Lead, Inline text elements, Text utilities, Abbreviations, Blockquotes, Lists, Responsive font sizes, CSS

## Forms (`forms/`)

- [`forms/checks-radios.md`](forms/checks-radios.md) — **Checks and radios**: Create consistent cross-browser and cross-device checkboxes and radios with our completely rewritten checks component.
  - _Sections:_ Approach, Checks, Radios, Switches, Default (stacked), Inline, Reverse, Without labels, Toggle buttons, CSS
- [`forms/floating-labels.md`](forms/floating-labels.md) — **Floating labels**: Create beautifully simple form labels that float over your input fields.
  - _Sections:_ Example, Textareas, Selects, Disabled, Readonly plaintext, Input groups, Layout, CSS
- [`forms/form-control.md`](forms/form-control.md) — **Form controls**: Give textual form controls like <input>s and <textarea>s an upgrade with custom styles, sizing, focus states, and more.
  - _Sections:_ Example, Sizing, Form text, Disabled, Readonly, Readonly plain text, File input, Color, Datalists, CSS
- [`forms/input-group.md`](forms/input-group.md) — **Input group**: Easily extend form controls by adding text, buttons, or button groups on either side of textual inputs, custom selects, and custom file inputs.
  - _Sections:_ Basic example, Wrapping, Border radius, Sizing, Checkboxes and radios, Multiple inputs, Multiple addons, Button addons, Buttons with dropdowns, Segmented buttons, Custom forms, CSS
- [`forms/layout.md`](forms/layout.md) — **Layout**: Give your forms some structure—from inline to horizontal to custom grid implementations—with our form layout options.
  - _Sections:_ Forms, Utilities, Form grid, Gutters, Horizontal form, Column sizing, Auto-sizing, Inline forms
- [`forms/overview.md`](forms/overview.md) — **Forms**: Examples and usage guidelines for form control styles, layout options, and custom components for creating a wide variety of forms.
  - _Sections:_ Overview, Disabled forms, Accessibility, CSS
- [`forms/range.md`](forms/range.md) — **Range**: Use our custom range inputs for consistent cross-browser styling and built-in customization.
  - _Sections:_ Overview, Disabled, Min and max, Steps, Output value, CSS
- [`forms/select.md`](forms/select.md) — **Select**: Customize the native <select>s with custom CSS that changes the element’s initial appearance.
  - _Sections:_ Default, Sizing, Disabled, CSS
- [`forms/validation.md`](forms/validation.md) — **Validation**: Provide valuable, actionable feedback to your users with HTML5 form validation, via browser default behaviors or custom styles and JavaScript.
  - _Sections:_ How it works, Custom styles, Browser defaults, Server-side, Supported elements, Tooltips, CSS

## Components (`components/`)

- [`components/accordion.md`](components/accordion.md) — **Accordion**: Build vertically collapsing accordions in combination with our Collapse JavaScript plugin.
  - _Sections:_ How it works, Example, Accessibility, CSS, Usage
- [`components/alerts.md`](components/alerts.md) — **Alerts**: Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.
  - _Sections:_ Examples, CSS, JavaScript behavior
- [`components/badge.md`](components/badge.md) — **Badges**: Documentation and examples for badges, our small count and labeling component.
  - _Sections:_ Examples, Background colors, Pill badges, CSS
- [`components/breadcrumb.md`](components/breadcrumb.md) — **Breadcrumb**: Indicate the current page’s location within a navigational hierarchy that automatically adds separators via CSS.
  - _Sections:_ Example, Dividers, Accessibility, CSS
- [`components/button-group.md`](components/button-group.md) — **Button group**: Group a series of buttons together on a single line or stack them in a vertical column.
  - _Sections:_ Basic example, Mixed styles, Outlined styles, Checkbox and radio button groups, Button toolbar, Sizing, Nesting, Vertical variation
- [`components/buttons.md`](components/buttons.md) — **Buttons**: Use Bootstrap’s custom button styles for actions in forms, dialogs, and more with support for multiple sizes, states, and more.
  - _Sections:_ Base class, Variants, Disable text wrapping, Button tags, Outline buttons, Sizes, Disabled state, Block buttons, Button plugin, CSS
- [`components/card.md`](components/card.md) — **Cards**: Bootstrap’s cards provide a flexible and extensible content container with multiple variants and options.
  - _Sections:_ About, Example, Content types, Sizing, Text alignment, Navigation, Images, Horizontal, Card styles, Card layout, CSS
- [`components/carousel.md`](components/carousel.md) — **Carousel**: A slideshow component for cycling through elements—images or slides of text—like a carousel.
  - _Sections:_ How it works, Basic examples, Autoplaying carousels, Disable touch swiping, Dark variant, Custom transition, CSS, Usage
- [`components/close-button.md`](components/close-button.md) — **Close button**: A generic close button for dismissing content like modals and alerts.
  - _Sections:_ Example, Disabled state, Dark variant, CSS
- [`components/collapse.md`](components/collapse.md) — **Collapse**: Toggle the visibility of content across your project with a few classes and our JavaScript plugins.
  - _Sections:_ How it works, Example, Horizontal, Multiple toggles and targets, Accessibility, CSS, Usage
- [`components/dropdowns.md`](components/dropdowns.md) — **Dropdowns**: Toggle contextual overlays for displaying lists of links and more with the Bootstrap dropdown plugin.
  - _Sections:_ Overview, Accessibility, Examples, Sizing, Dark dropdowns, Directions, Menu items, Menu alignment, Menu content, Dropdown options, CSS, Usage
- [`components/list-group.md`](components/list-group.md) — **List group**: List groups are a flexible and powerful component for displaying a series of content. Modify and extend them to support just about any content within.
  - _Sections:_ Basic example, Active items, Links and buttons, Flush, Numbered, Horizontal, Variants, With badges, Custom content, Checkboxes and radios, CSS, JavaScript behavior
- [`components/modal.md`](components/modal.md) — **Modal**: Use Bootstrap’s JavaScript modal plugin to add dialogs to your site for lightboxes, user notifications, or completely custom content.
  - _Sections:_ How it works, Examples, Optional sizes, Fullscreen Modal, CSS, Usage
- [`components/navbar.md`](components/navbar.md) — **Navbar**: Documentation and examples for Bootstrap’s powerful, responsive navigation header, the navbar. Includes support for branding, navigation, and more, including support for our collapse plugin.
  - _Sections:_ How it works, Supported content, Color schemes, Containers, Placement, Scrolling, Responsive behaviors, CSS
- [`components/navs-tabs.md`](components/navs-tabs.md) — **Navs and tabs**: Documentation and examples for how to use Bootstrap’s included navigation components.
  - _Sections:_ Base nav, Available styles, Working with flex utilities, Regarding accessibility, Using dropdowns, CSS, JavaScript behavior
- [`components/offcanvas.md`](components/offcanvas.md) — **Offcanvas**: Build hidden sidebars into your project for navigation, shopping carts, and more with a few classes and our JavaScript plugin.
  - _Sections:_ How it works, Examples, Dark offcanvas, Responsive, Placement, Accessibility, CSS, Usage
- [`components/pagination.md`](components/pagination.md) — **Pagination**: Documentation and examples for showing pagination to indicate a series of related content exists across multiple pages.
  - _Sections:_ Overview, Working with icons, Active, Disabled, Sizing, Alignment, CSS
- [`components/placeholders.md`](components/placeholders.md) — **Placeholders**: Use loading placeholders (skeleton loaders) for your components or pages to indicate something may still be loading.
  - _Sections:_ About, Example, How it works, CSS
- [`components/popovers.md`](components/popovers.md) — **Popovers**: Documentation and examples for adding Bootstrap popovers, like those found in iOS, to any element on your site.
  - _Sections:_ Overview, Examples, CSS, Usage
- [`components/progress.md`](components/progress.md) — **Progress**: Documentation and examples for using Bootstrap custom progress bars featuring support for stacked bars, animated backgrounds, and text labels.
  - _Sections:_ How it works, Bar sizing, Labels, Backgrounds, Multiple bars, Striped, Animated stripes, CSS
- [`components/scrollspy.md`](components/scrollspy.md) — **Scrollspy**: Automatically update Bootstrap navigation or list group components based on scroll position to indicate which link is currently active in the viewport.
  - _Sections:_ How it works, Examples, Non-visible elements, Usage
- [`components/spinners.md`](components/spinners.md) — **Spinners**: Indicate the loading state of a component or page with Bootstrap spinners, built entirely with HTML, CSS, and no JavaScript.
  - _Sections:_ About, Border spinner, Growing spinner, Alignment, Size, Buttons, CSS
- [`components/toasts.md`](components/toasts.md) — **Toasts**: Push notifications to your visitors with a toast, a lightweight and easily customizable alert message.
  - _Sections:_ Overview, Examples, Placement, Accessibility, CSS, Usage
- [`components/tooltips.md`](components/tooltips.md) — **Tooltips**: Documentation and examples for adding custom Bootstrap tooltips with CSS and JavaScript using CSS3 for animations and data-bs-attributes for local title storage.
  - _Sections:_ Overview, Examples, CSS, Usage

## Helpers (`helpers/`)

- [`helpers/clearfix.md`](helpers/clearfix.md) — **Clearfix**: 
- [`helpers/color-background.md`](helpers/color-background.md) — **Color and background**: Set a background color with contrasting foreground color.
  - _Sections:_ Overview, With components
- [`helpers/colored-links.md`](helpers/colored-links.md) — **Colored links**: Colored links with hover states
  - _Sections:_ Link colors, Link utilities
- [`helpers/focus-ring.md`](helpers/focus-ring.md) — **Focus ring**: Utility classes that allows you to add and modify custom focus ring styles to elements and components.
  - _Sections:_ Example, Customize
- [`helpers/icon-link.md`](helpers/icon-link.md) — **Icon link**: Quickly create stylized hyperlinks with Bootstrap Icons or other icons.
  - _Sections:_ Example, Style on hover, Customize
- [`helpers/position.md`](helpers/position.md) — **Position**: Use these helpers for quickly configuring the position of an element.
  - _Sections:_ Fixed top, Fixed bottom, Sticky top, Responsive sticky top, Sticky bottom, Responsive sticky bottom
- [`helpers/ratio.md`](helpers/ratio.md) — **Ratios**: Use generated pseudo elements to make an element maintain the aspect ratio of your choosing. Perfect for responsively handling video or slideshow embeds based on the width of the parent.
  - _Sections:_ About, Example, Aspect ratios, Custom ratios, Sass maps
- [`helpers/stacks.md`](helpers/stacks.md) — **Stacks**: Shorthand helpers that build on top of our flexbox utilities to make component layout faster and easier than ever.
  - _Sections:_ Vertical, Horizontal, Examples, CSS
- [`helpers/stretched-link.md`](helpers/stretched-link.md) — **Stretched link**: 
- [`helpers/text-truncation.md`](helpers/text-truncation.md) — **Text truncation**: 
- [`helpers/vertical-rule.md`](helpers/vertical-rule.md) — **Vertical rule**: Use the custom vertical rule helper to create vertical dividers like the <hr> element.
  - _Sections:_ How it works, Example, With stacks, CSS
- [`helpers/visually-hidden.md`](helpers/visually-hidden.md) — **Visually hidden**: 

## Utilities (`utilities/`)

- [`utilities/api.md`](utilities/api.md) — **Utility API**: The utility API is a Sass-based tool to generate utility classes.
  - _Sections:_ API explained, Importance, Using the API
- [`utilities/background.md`](utilities/background.md) — **Background**: Convey meaning through background-color and add decoration with gradients.
  - _Sections:_ Background color, Background gradient, Opacity, CSS
- [`utilities/borders.md`](utilities/borders.md) — **Borders**: Use border utilities to quickly style the border and border-radius of an element. Great for images, buttons, or any other element.
  - _Sections:_ Border, Color, Opacity, Width, Radius, CSS
- [`utilities/colors.md`](utilities/colors.md) — **Colors**: Convey meaning through color with a handful of color utility classes. Includes support for styling links with hover states, too.
  - _Sections:_ Colors, Opacity, Specificity, CSS
- [`utilities/display.md`](utilities/display.md) — **Display property**: Quickly and responsively toggle the display value of components and more with our display utilities. Includes support for some of the more common values, as well as some extras for controlling display when printing.
  - _Sections:_ How it works, Notation, Examples, Hiding elements, Display in print, CSS
- [`utilities/flex.md`](utilities/flex.md) — **Flex**: Quickly manage the layout, alignment, and sizing of grid columns, navigation, components, and more with a full suite of responsive flexbox utilities. For more complex implementations, custom CSS may be necessary.
  - _Sections:_ Enable flex behaviors, Direction, Justify content, Align items, Align self, Fill, Grow and shrink, Auto margins, Wrap, Order, Align content, Media object, CSS
- [`utilities/float.md`](utilities/float.md) — **Float**: Toggle floats on any element, across any breakpoint, using our responsive float utilities.
  - _Sections:_ Overview, Responsive, CSS
- [`utilities/interactions.md`](utilities/interactions.md) — **Interactions**: 
- [`utilities/link.md`](utilities/link.md) — **Link**: Link utilities are used to stylize your anchors to adjust their color, opacity, underline offset, underline color, and more.
  - _Sections:_ Link opacity, Link underlines, Colored links, CSS
- [`utilities/object-fit.md`](utilities/object-fit.md) — **Object fit**: Use the object fit utilities to modify how the content of a replaced element, such as an <img> or <video>, should be resized to fit its container.
  - _Sections:_ How it works, Examples, Responsive, Video, CSS
- [`utilities/opacity.md`](utilities/opacity.md) — **Opacity**: 
- [`utilities/overflow.md`](utilities/overflow.md) — **Overflow**: Use these shorthand utilities for quickly configuring how content overflows an element.
  - _Sections:_ Overflow, CSS
- [`utilities/position.md`](utilities/position.md) — **Position**: Use these shorthand utilities for quickly configuring the position of an element.
  - _Sections:_ Position values, Arrange elements, Center elements, Examples, CSS
- [`utilities/shadows.md`](utilities/shadows.md) — **Shadows**: Add or remove shadows to elements with box-shadow utilities.
  - _Sections:_ Examples, CSS
- [`utilities/sizing.md`](utilities/sizing.md) — **Sizing**: Easily make an element as wide or as tall with our width and height utilities.
  - _Sections:_ Relative to the parent, Relative to the viewport, CSS
- [`utilities/spacing.md`](utilities/spacing.md) — **Spacing**: Bootstrap includes a wide range of shorthand responsive margin, padding, and gap utility classes to modify an element’s appearance.
  - _Sections:_ Margin and padding, Negative margin, Gap, CSS
- [`utilities/text.md`](utilities/text.md) — **Text**: Documentation and examples for common text utilities to control alignment, wrapping, weight, and more.
  - _Sections:_ Text alignment, Text wrapping and overflow, Word break, Text transform, Font size, Font weight and italics, Line height, Monospace, Reset color, Text decoration, CSS
- [`utilities/vertical-align.md`](utilities/vertical-align.md) — **Vertical alignment**: 
- [`utilities/visibility.md`](utilities/visibility.md) — **Visibility**: 
- [`utilities/z-index.md`](utilities/z-index.md) — **Z-index**: Use our low-level z-index utilities to quickly change the stack level of an element or component.
  - _Sections:_ Example, Overlays, Component approach, CSS
