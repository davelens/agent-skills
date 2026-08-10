---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/FloatingWindow/
title: Quickshell - FloatingWindow
words: 155
---
* * *

FloatingWindow: QsWindow

import Quickshell

Standard toplevel operating system window that looks like any other application.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- title :  string
  
  Window title.
- maximized :  bool
  
  Whether the window is currently maximized.
- maximumSize :  size
  
  Maximum window size given to the window system.
- parentWindow :  QtObject
  
  The parent window of this window. Setting this makes the window a child of the parent, which affects window stacking behavior.
  
  NOTE
  
  This property cannot be changed after the window is visible.
- minimumSize :  size
  
  Minimum window size given to the window system.
- minimized :  bool
  
  Whether the window is currently minimized.
- fullscreen :  bool
  
  Whether the window is currently fullscreen.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- startSystemMove () :  bool
  
  Start a system move operation. Must be called during a pointer press/drag.
- startSystemResize (edges) :  bool
  
  Property edges: [](#unknown)
  
  Start a system resize operation. Must be called during a pointer press/drag.
