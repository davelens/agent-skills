---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/ExclusionMode/
title: Quickshell - ExclusionMode
words: 76
---
* * *

ExclusionMode: ExclusionMode

import Quickshell

See Go to PanelWindow.exclusionMode.

Variants

- Auto
  
  Decide the exclusion zone based on the window dimensions and anchors.
  
  Will attempt to reserve exactly enough space for the window and its margins if exactly 3 anchors are connected.
- Normal
  
  Respect the exclusion zone of other shell layers and optionally set one
- Ignore
  
  Ignore exclusion zones of other shell layers. You cannot set an exclusion zone in this mode.
