---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.WindowManager/WindowManager/
title: Quickshell.WindowManager - WindowManager
words: 101
---
* * *

WindowManager: QtObject

singleton

import Quickshell.WindowManager

Window management interfaces exposed by the window manager.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- windowsetProjections :  list &lt;WindowsetProjection&gt;
  
  readonly
  
  All windowset projections tracked by the WM. Does not include internal projections from screenProjection().
- windowsets :  list &lt;Windowset&gt;
  
  readonly
  
  All windowsets tracked by the WM across all projections.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- screenProjection (screen) :  ScreenProjection
  
  Property screen: ShellScreen
  
  Returns an internal WindowsetProjection that covers a single screen and contains all windowsets on that screen, regardless of the WM-specified projection. Depending on how the WM lays out its actual projections, multiple ScreenProjections may contain the same Windowsets.
