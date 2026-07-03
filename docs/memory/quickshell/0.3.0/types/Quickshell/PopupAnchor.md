---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/PopupAnchor/
title: Quickshell - PopupAnchor
words: 474
---
* * *

PopupAnchor: QtObject

uncreatable

import Quickshell

Anchorpoint or positioner for popup windows.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- margins :  [\[left,top,right,bottom\]](#)
  
  Property left:int Property top:int Property right:int Property bottom:int
  
  A margin applied to the anchor rect.
  
  This is most useful when Go to item is used and Go to rect is left at its default value (matching the Item’s dimensions).
- adjustment :  PopupAdjustment
  
  The strategy used to adjust the popup’s position if it would otherwise not fit on screen, based on the anchor Go to rect, preferred Go to edges, and Go to gravity.
  
  See the documentation for PopupAdjustment for details.
- edges :  Edges
  
  The point on the anchor rectangle the popup should anchor to. Opposing edges suchs as Edges.Left | Edges.Right are not allowed.
  
  Defaults to Edges.Top | Edges.Left.
- rect :  [\[width,x,y,height,w,h\]](#)
  
  Property width:int Property x:int Property y:int Property height:int Property w:int Property h:int
  
  The anchorpoints the popup will attach to, relative to Go to item or Go to window. Which anchors will be used is determined by the Go to edges, Go to gravity, and Go to adjustment.
  
  If using Go to item, the default anchor rectangle matches the dimensions of the item.
  
  If you leave Go to edges, Go to gravity and Go to adjustment at their default values, setting more than x and y does not matter. The anchor rect cannot be smaller than 1x1 pixels.
- window :  QtObject
  
  The window to anchor / attach the popup to. Setting this property unsets Go to item.
- gravity :  Edges
  
  The direction the popup should expand towards, relative to the anchorpoint. Opposing edges suchs as Edges.Left | Edges.Right are not allowed.
  
  Defaults to Edges.Bottom | Edges.Right.
- item :  Item
  
  The item to anchor / attach the popup to. Setting this property unsets Go to window.
  
  The popup’s position relative to its parent window is only calculated when it is initially shown (directly before Go to anchoring() is emitted), meaning its anchor rectangle will be set relative to the item’s position in the window at that time. updateAnchor() can be called to update the anchor rectangle if the item’s position has changed.
  
  NOTE
  
  If a more flexible way to position a popup relative to an item is needed, set Go to window to the item’s parent window, and handle the Go to anchoring signal to position the popup relative to the window’s contentItem.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- updateAnchor () :  void
  
  Update the popup’s anchor rect relative to its parent window.
  
  If anchored to an item, popups anchors will not automatically follow the item if its position changes. This function can be called to recalculate the anchors.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- anchoring ()  [](/docs/configuration/qml-overview#-signals)
  
  Emitted when this anchor is about to be used. Mostly useful for modifying the anchor Go to rect using coordinate mapping functions, which are not reactive.
