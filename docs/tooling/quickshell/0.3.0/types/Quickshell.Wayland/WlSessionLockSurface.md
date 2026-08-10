---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/WlSessionLockSurface/
title: Quickshell.Wayland - WlSessionLockSurface
words: 166
---
* * *

WlSessionLockSurface: Reloadable

import Quickshell.Wayland

Surface displayed by a WlSessionLock when it is locked.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- contentItem :  Item
  
  readonly
  
  No details provided
- screen :  ShellScreen
  
  readonly
  
  The screen that the surface is displayed on.
- visible :  bool
  
  readonly
  
  If the surface has been made visible.
  
  Note: SessionLockSurfaces will never become invisible, they will only be destroyed.
- color :  color
  
  The background color of the window. Defaults to white.
  
  WARNING
  
  This seems to behave weirdly when using transparent colors on some systems. Using a colored content item over a transparent window is the recommended way to work around this:
  
  ```
  ProxyWindow {
    Rectangle {
      anchors.fill: parent
      color: "#20ffffff"
  
      // your content here
    }
  }
  ```
  
  … but you probably shouldn’t make a transparent lock, and most compositors will ignore an attempt to do so.
- height :  int
  
  readonly
  
  No details provided
- data :  list &lt;QtObject&gt;
  
  default readonly
  
  No details provided
- width :  int
  
  readonly
  
  No details provided
