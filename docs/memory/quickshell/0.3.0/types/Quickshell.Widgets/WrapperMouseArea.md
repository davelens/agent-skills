---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Widgets/WrapperMouseArea/
title: Quickshell.Widgets - WrapperMouseArea
words: 398
---
* * *

WrapperMouseArea: WrapperMouseArea

import Quickshell.Widgets

This component is useful for wrapping a single component in a mouse area. It works the same as WrapperItem, but with a MouseArea.

NOTE

WrapperMouseArea is a MarginWrapperManager based component. See its documentation for information on how margins and sizes are calculated.

NOTE

The child item can be specified by writing it inline in the wrapper, as in the example above, or by using the Go to child property. See Go to WrapperManager.child for details.

WARNING

You should not set Go to Item.x, Go to Item.y, Go to Item.width, Go to Item.height or Go to Item.anchors on the child item, as they are used by WrapperItem to position it. Instead set Go to Item.implicitWidth and Go to Item.implicitHeight.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- child :  Item
  
  See Go to WrapperManager.child for details.
- rightMargin :  real
  
  The requested right margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- resizeChild :  bool
  
  Determines if child item should be resized larger than its implicit size if the parent is resized larger than its implicit size. Defaults to true.
- implicitHeight :  real
  
  Overrides the implicit height of the wrapper.
  
  Defaults to the implicit width of the content item plus its top and bottom margin, and may be reset by assigning undefined.
- implicitWidth :  real
  
  Overrides the implicit width of the wrapper.
  
  Defaults to the implicit width of the content item plus its left and right margin, and may be reset by assigning undefined.
- leftMargin :  real
  
  The requested left margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- margin :  real
  
  The default for Go to topMargin, Go to bottomMargin, Go to leftMargin and Go to rightMargin. Defaults to 0.
- bottomMargin :  real
  
  The requested bottom margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- extraMargin :  real
  
  An extra margin applied in addition to Go to topMargin, Go to bottomMargin, Go to leftMargin, and Go to rightMargin. Defaults to 0.
- topMargin :  real
  
  The requested top margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
