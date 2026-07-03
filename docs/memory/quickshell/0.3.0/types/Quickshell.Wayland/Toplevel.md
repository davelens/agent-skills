---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/Toplevel/
title: Quickshell.Wayland - Toplevel
words: 330
---
* * *

Toplevel: QtObject

uncreatable

import Quickshell.Wayland

A window/toplevel from another application, retrievable from the ToplevelManager.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- maximized :  bool
  
  If the window is currently maximized.
  
  Maximization can be requested by setting this property, though it may be ignored by the compositor.
- activated :  bool
  
  readonly
  
  If the window is currently activated or focused.
  
  Activation can be requested with the activate() function.
- appId :  string
  
  readonly
  
  No details provided
- fullscreen :  bool
  
  If the window is currently fullscreen.
  
  Fullscreen can be requested by setting this property, though it may be ignored by the compositor. Fullscreen can be requested on a specific screen with the fullscreenOn() function.
- minimized :  bool
  
  If the window is currently minimized.
  
  Minimization can be requested by setting this property, though it may be ignored by the compositor.
- screens :  list &lt;ShellScreen&gt;
  
  readonly
  
  Screens the toplevel is currently visible on. Screens are listed in the order they have been added by the compositor.
  
  NOTE
  
  Some compositors only list a single screen, even if a window is visible on multiple.
- title :  string
  
  readonly
  
  No details provided
- parent :  Toplevel
  
  readonly
  
  Parent toplevel if this toplevel is a modal/dialog, otherwise null.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- activate () :  void
  
  Request that this toplevel is activated. The request may be ignored by the compositor.
- close () :  void
  
  Request that this toplevel is closed. The request may be ignored by the compositor or the application.
- fullscreenOn (screen) :  void
  
  Property screen: ShellScreen
  
  Request that this toplevel is fullscreened on a specific screen. The request may be ignored by the compositor.
- setRectangle (window, rect) :  void
  
  Property window: QtObject Property rect: rect
  
  Provide a hint to the compositor where the visual representation of this toplevel is relative to a quickshell window. This hint can be used visually in operations like minimization.
- unsetRectangle () :  void
  
  No details provided

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- closed ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
