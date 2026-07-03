---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Widgets/MarginWrapperManager/
title: Quickshell.Widgets - MarginWrapperManager
words: 507
---
* * *

MarginWrapperManager: WrapperManager

import Quickshell.Widgets

NOTE

MarginWrapperManager is an extension of WrapperManager. You should read its documentation to understand wrapper types.

MarginWrapperManager can be used to apply margins to a child item, in addition to handling the size / implicit size relationship between the parent and the child. WrapperItem and WrapperRectangle exist for Item and Rectangle implementations respectively.

WARNING

MarginWrapperManager based types set the child item’s Go to Item.x, Go to Item.y, Go to Item.width, Go to Item.height or Go to Item.anchors properties. Do not set them yourself, instead set Go to Item.implicitWidth and Go to Item.implicitHeight.

Implementing a margin wrapper type

Follow the directions in WrapperManager’s documentation, and or alias the Go to margin property if you wish to expose it.

Margin calculation

The margin of the content item is calculated based on Go to topMargin, Go to bottomMargin, Go to leftMargin, Go to rightMargin, Go to extraMargin and Go to resizeChild.

If Go to resizeChild is true, each side’s margin will be the value of <side>Margin plus Go to extraMargin, and the content item will be stretched to match the given margin if the wrapper is not at its implicit size.

If Go to resizeChild is false, the <side>Margin properties will be interpreted as a ratio and the content item will not be stretched if the wrapper is not at its implicit side.

The implicit size of the wrapper is the implicit size of the content item plus all margins.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- resizeChild :  bool
  
  Determines if child item should be resized larger than its implicit size if the parent is resized larger than its implicit size. Defaults to true.
- topMargin :  real
  
  The requested top margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- implicitHeight :  real
  
  Overrides the implicit height of the wrapper.
  
  Defaults to the implicit width of the content item plus its top and bottom margin, and may be reset by assigning undefined.
- bottomMargin :  real
  
  The requested bottom margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- leftMargin :  real
  
  The requested left margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- implicitWidth :  real
  
  Overrides the implicit width of the wrapper.
  
  Defaults to the implicit width of the content item plus its left and right margin, and may be reset by assigning undefined.
- rightMargin :  real
  
  The requested right margin of the content item, not counting Go to extraMargin.
  
  Defaults to Go to margin, and may be reset by assigning undefined.
- margin :  real
  
  The default for Go to topMargin, Go to bottomMargin, Go to leftMargin and Go to rightMargin. Defaults to 0.
- extraMargin :  real
  
  An extra margin applied in addition to Go to topMargin, Go to bottomMargin, Go to leftMargin, and Go to rightMargin. Defaults to 0.
