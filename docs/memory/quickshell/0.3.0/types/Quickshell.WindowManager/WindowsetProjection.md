---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.WindowManager/WindowsetProjection/
title: Quickshell.WindowManager - WindowsetProjection
words: 92
---
* * *

WindowsetProjection: QtObject

uncreatable

import Quickshell.WindowManager

A WindowsetProjection represents a space that can be occupied by one or more Windowsets. The space is one or more screens. Multiple projections may occupy the same screens.

WindowManager.screenProjection() can be used to get a projection representing all Windowsets on a given screen regardless of the WM’s actual projection layout.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- screens :  list &lt;ShellScreen&gt;
  
  readonly
  
  Screens the windowset projection spans, often a single screen or all screens.
- windowsets :  list &lt;Windowset&gt;
  
  readonly
  
  Windowsets that are currently present on the projection.
