---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/ToplevelManager/
title: Quickshell.Wayland - ToplevelManager
words: 74
---
* * *

ToplevelManager: QtObject

singleton

import Quickshell.Wayland

Exposes a list of windows from other applications as Toplevels via the zwlr-foreign-toplevel-management-v1 wayland protocol.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- activeToplevel :  Toplevel
  
  readonly
  
  Active toplevel or null.
  
  NOTE
  
  If multiple are active, this will be the most recently activated one. Usually compositors will not report more than one toplevel as active at a time.
- toplevels :  ObjectModel &lt;Toplevel&gt;
  
  readonly
  
  All toplevel windows exposed by the compositor.
