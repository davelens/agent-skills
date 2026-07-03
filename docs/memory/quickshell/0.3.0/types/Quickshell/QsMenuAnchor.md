---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/QsMenuAnchor/
title: Quickshell - QsMenuAnchor
words: 210
---
* * *

QsMenuAnchor: QtObject

import Quickshell

Display anchor for platform menus.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- menu :  QsMenuHandle
  
  The menu that should be displayed on this anchor.
  
  See also: Go to SystemTrayItem.menu.
- visible :  bool
  
  readonly
  
  If the menu is currently open and visible.
  
  See also: open(), close().
- anchor :  PopupAnchor
  
  readonly
  
  The menu’s anchor / positioner relative to another window. The menu will not be shown until it has a valid anchor.
  
  NOTE
  
  The following is subject to change and NOT a guarantee of future behavior.
  
  A snapshot of the anchor at the time Go to opened() is emitted will be used to position the menu. Additional changes to the anchor after this point will not affect the placement of the menu.
  
  You can set properties of the anchor like so:
  
  ```
  QsMenuAnchor {
    anchor.window: parentwindow
    // or
    anchor {
      window: parentwindow
    }
  }
  ```

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- close () :  void
  
  Close the open menu.
- open () :  void
  
  Open the given menu on this menu Requires that Go to anchor is valid.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- opened ()  [](/docs/configuration/qml-overview#-signals)
  
  Sent when the menu is displayed onscreen which may be after Go to visible becomes true.
- closed ()  [](/docs/configuration/qml-overview#-signals)
  
  Sent when the menu is closed.
