---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/PopupAdjustment/
title: Quickshell - PopupAdjustment
words: 183
---
* * *

PopupAdjustment: PopupAdjustment

import Quickshell

Adjustment strategy for popups. See Go to PopupAnchor.adjustment.

Adjustment flags can be combined with the | operator.

Flip will be applied first, then Slide, then Resize.

Variants

- ResizeY
  
  If the Y axis is constrained, the height of the popup will be reduced to fit on screen.
- SlideY
  
  If the Y axis is constrained, the popup will slide along the Y axis until it fits onscreen.
- Slide
  
  Alias for SlideX | SlideY.
- FlipX
  
  If the X axis is constrained, the popup will invert its horizontal gravity if any.
- Flip
  
  Alias for FlipX | FlipY.
- None
  
  No details provided
- SlideX
  
  If the X axis is constrained, the popup will slide along the X axis until it fits onscreen.
- Resize
  
  Alias for ResizeX | ResizeY
- All
  
  Alias for Flip | Slide | Resize.
- FlipY
  
  If the Y axis is constrained, the popup will invert its vertical gravity if any.
- ResizeX
  
  If the X axis is constrained, the width of the popup will be reduced to fit on screen.
