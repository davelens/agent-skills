---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Widgets/ClippingWrapperRectangle/
title: Quickshell.Widgets - ClippingWrapperRectangle
words: 381
---
* * *

ClippingWrapperRectangle: ClippingWrapperRectangle

import Quickshell.Widgets

This component is useful for adding a clipping border or background rectangle to a child item. If you don’t need clipping, use WrapperRectangle.

NOTE

ClippingWrapperRectangle is a MarginWrapperManager based component. See its documentation for information on how margins and sizes are calculated.

WARNING

You should not set Go to Item.x, Go to Item.y, Go to Item.width, Go to Item.height or Go to Item.anchors on the child item, as they are used by WrapperItem to position it. Instead set Go to Item.implicitWidth and Go to Item.implicitHeight.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- implicitHeight :  real
  
  Overrides the implicit height of the wrapper.
  
  Defaults to the implicit width of the content item plus its top and bottom margin, and may be reset by assigning undefined.
- bottomMargin :  real
  
  The requested bottom margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- child :  unknown
  
  See Go to WrapperManager.child for details.
- implicitWidth :  real
  
  Overrides the implicit width of the wrapper.
  
  Defaults to the implicit width of the content item plus its left and right margin, and may be reset by assigning undefined.
- resizeChild :  bool
  
  Determines if child item should be resized larger than its implicit size if the parent is resized larger than its implicit size. Defaults to true.
- extraMargin :  real
  
  An extra margin applied in addition to Go to topMargin, Go to bottomMargin, Go to leftMargin, and Go to rightMargin. If Go to contentInsideBorder is true, the rectangle’s border width will be added to this property. Defaults to 0.
- topMargin :  real
  
  The requested top margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- leftMargin :  real
  
  The requested left margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- rightMargin :  real
  
  The requested right margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- margin :  real
  
  The default for Go to topMargin, Go to bottomMargin, Go to leftMargin and Go to rightMargin. Defaults to 0.
