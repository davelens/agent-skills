---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Widgets/ClippingRectangle/
title: Quickshell.Widgets - ClippingRectangle
words: 286
---
* * *

ClippingRectangle: Item

import Quickshell.Widgets

WARNING

This type requires at least Qt 6.7.

This is a specialized version of Rectangle that clips content inside of its border, including rounded rectangles. It costs more than Rectangle, so it should not be used unless you need to clip items inside of it to the border.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- radius :  real
  
  Radius of all corners. Defaults to 0.
- topLeftRadius :  real
  
  Radius of the top left corner. Defaults to Go to radius.
- children :  unknown
  
  Visual children of the ClippingRectangle’s Go to contentItem. (list<Item>).
  
  See Go to Item.children for details.
- color :  color
  
  The background color of the rectangle, which goes under its content.
- contentItem :  unknown
  
  readonly
  
  The item containing the rectangle’s content. There is usually no reason to use this directly.
- data :  unknown
  
  default
  
  Data of the ClippingRectangle’s Go to contentItem. (list<QtObject>).
  
  See Go to Item.data for details.
- topRightRadius :  real
  
  Radius of the top right corner. Defaults to Go to radius.
- border :  unknown
  
  See Go to Rectangle.border.
- bottomLeftRadius :  real
  
  Radius of the bottom left corner. Defaults to Go to radius.
- antialiasing :  bool
  
  If the rectangle should be antialiased.
  
  Defaults to true if any corner has a non-zero radius, otherwise false.
- bottomRightRadius :  real
  
  Radius of the bottom right corner. Defaults to Go to radius.
- contentInsideBorder :  bool
  
  If the content item should be resized to fit inside the border.
  
  Defaults to !contentUnderBorder. Most useful when combined with anchors.fill: parent on an item passed to the ClippingRectangle.
- contentUnderBorder :  bool
  
  If content should be displayed underneath the border.
  
  Defaults to false, does nothing if the border is opaque.
