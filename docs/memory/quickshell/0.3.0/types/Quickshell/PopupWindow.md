---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/PopupWindow/
title: Quickshell - PopupWindow
words: 328
---
* * *

PopupWindow: QsWindow

import Quickshell

Popup window that can display in a position relative to a floating or panel window.

Example

The following snippet creates a panel with a popup centered over it.

```
PanelWindow {
  id: toplevel

  anchors {
    bottom: true
    left: true
    right: true
  }

  PopupWindow {
    anchor.window: toplevel
    anchor.rect.x: parentWindow.width / 2 - width / 2
    anchor.rect.y: parentWindow.height
    width: 500
    height: 500
    visible: true
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- screen :  ShellScreen
  
  readonly
  
  The screen that the window currently occupies.
  
  This may be modified to move the window to the given screen.
- visible :  bool
  
  If the window is shown or hidden. Defaults to false.
  
  The popup will not be shown until Go to anchor is valid, regardless of this property.
- relativeY :  int
  
  > \[!ERROR] Deprecated in favor of anchor.rect.y.
  
  The Y position of the popup relative to the parent window.
- anchor :  PopupAnchor
  
  readonly
  
  The popup’s anchor / positioner relative to another item or window. The popup will not be shown until it has a valid anchor relative to a window and Go to visible is true.
  
  You can set properties of the anchor like so:
  
  ```
  PopupWindow {
    anchor.window: parentwindow
    // or
    anchor {
      window: parentwindow
    }
  }
  ```
- parentWindow :  QtObject
  
  > \[!ERROR] Deprecated in favor of anchor.window.
  
  The parent window of this popup.
  
  Changing this property reparents the popup.
- relativeX :  int
  
  > \[!ERROR] Deprecated in favor of anchor.rect.x.
  
  The X position of the popup relative to the parent window.
- grabFocus :  bool
  
  If true, the popup window will be dismissed and Go to visible will change to false if the user clicks outside of the popup or it is otherwise closed.
  
  WARNING
  
  Changes to this property while the window is open will only take effect after the window is hidden and shown again.
  
  NOTE
  
  Under Hyprland, HyprlandFocusGrab provides more advanced functionality such as detecting clicks outside without closing the popup.
