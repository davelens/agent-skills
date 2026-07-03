---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/QsMenuEntry/
title: Quickshell - QsMenuEntry
words: 214
---
* * *

QsMenuEntry: QsMenuHandle

uncreatable

import Quickshell

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- hasChildren :  bool
  
  readonly
  
  If this menu item has children that can be accessed through a QsMenuOpener.
- checkState :  unknown
  
  readonly
  
  The check state of the checkbox or radiobutton if applicable, as a Qt.CheckState.
- text :  string
  
  readonly
  
  Text of the menu item.
- buttonType :  QsMenuButtonType
  
  readonly
  
  If this menu item has an associated checkbox or radiobutton.
- icon :  string
  
  readonly
  
  Url of the menu item’s icon or "" if it doesn’t have one.
  
  This can be passed to Image.source as shown below.
  
  ```
  Image {
    source: menuItem.icon
    // To get the best image quality, set the image source size to the same size
    // as the rendered image.
    sourceSize.width: width
    sourceSize.height: height
  }
  ```
- enabled :  bool
  
  readonly
  
  No details provided
- isSeparator :  bool
  
  readonly
  
  If this menu item should be rendered as a separator between other items.
  
  No other properties have a meaningful value when Go to isSeparator is true.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- display (parentWindow, relativeX, relativeY) :  void
  
  Property parentWindow: QtObject Property relativeX: int Property relativeY: int
  
  Display a platform menu at the given location relative to the parent window.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- triggered ()  [](/docs/configuration/qml-overview#-signals)
  
  Send a trigger/click signal to the menu entry.
