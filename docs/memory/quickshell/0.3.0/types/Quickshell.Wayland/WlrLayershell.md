---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/WlrLayershell/
title: Quickshell.Wayland - WlrLayershell
words: 144
---
* * *

WlrLayershell: PanelWindow

import Quickshell.Wayland

Decorationless window that can be attached to the screen edges using the zwlr\layer\shell\_v1 protocol.

Attached object

WlrLayershell works as an attached object of PanelWindow which you should use instead if you can, as it is platform independent.

```
PanelWindow {
  // When PanelWindow is backed with WlrLayershell this will work
  WlrLayershell.layer: WlrLayer.Bottom
}
```

To maintain platform compatibility you can dynamically set layershell specific properties.

```
PanelWindow {
  Component.onCompleted: {
    if (this.WlrLayershell != null) {
      this.WlrLayershell.layer = WlrLayer.Bottom;
    }
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- layer :  WlrLayer
  
  The shell layer the window sits in. Defaults to WlrLayer.Top.
- namespace :  string
  
  Similar to the class property of windows. Can be used to identify the window to external tools.
  
  Cannot be set after windowConnected.
- keyboardFocus :  WlrKeyboardFocus
  
  The degree of keyboard focus taken. Defaults to KeyboardFocus.None.
