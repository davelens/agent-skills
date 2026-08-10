---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Widgets/WrapperRectangle/
title: Quickshell.Widgets - WrapperRectangle
words: 412
---
* * *

WrapperRectangle: Rectangle

import Quickshell.Widgets

This component is useful for adding a border or background rectangle to a child item. If you need to clip the child item to the rectangle’s border, see ClippingWrapperRectangle.

NOTE

WrapperRectangle is a MarginWrapperManager based component. See its documentation for information on how margins and sizes are calculated.

WARNING

You should not set Go to Item.x, Go to Item.y, Go to Item.width, Go to Item.height or Go to Item.anchors on the child item, as they are used by WrapperItem to position it. Instead set Go to Item.implicitWidth and Go to Item.implicitHeight.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- leftMargin :  real
  
  The requested left margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- resizeChild :  bool
  
  Determines if child item should be resized larger than its implicit size if the parent is resized larger than its implicit size. Defaults to true.
- topMargin :  real
  
  The requested top margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- child :  unknown
  
  See Go to WrapperManager.child for details.
- sets :  unknown
  
  No details provided
- bottomMargin :  real
  
  The requested bottom margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- margin :  real
  
  The default for Go to topMargin, Go to bottomMargin, Go to leftMargin and Go to rightMargin. Defaults to 0.
- implicitHeight :  real
  
  Overrides the implicit height of the wrapper.
  
  Defaults to the implicit width of the content item plus its top and bottom margin, and may be reset by assigning undefined.
- contentInsideBorder :  bool
  
  If true (default), the rectangle’s border width will be added to Go to extraMargin.
- extraMargin :  real
  
  An extra margin applied in addition to Go to topMargin, Go to bottomMargin, Go to leftMargin, and Go to rightMargin. If Go to contentInsideBorder is true, the rectangle’s border width will be added to this property. Defaults to 0.
- rightMargin :  real
  
  The requested right margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- implicitWidth :  real
  
  Overrides the implicit width of the wrapper.
  
  Defaults to the implicit width of the content item plus its left and right margin, and may be reset by assigning undefined.
