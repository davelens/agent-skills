---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/Region/
title: Quickshell - Region
words: 368
---
* * *

Region: QtObject

import Quickshell

See Go to QsWindow.mask.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- topRightRadius :  int
  
  Top-right corner radius. Only applies when Go to shape is Rect.
  
  Defaults to Go to radius, and may be reset by assigning undefined.
- intersection :  Intersection
  
  The way this region interacts with its parent region. Defaults to Combine.
- bottomLeftRadius :  int
  
  Bottom-left corner radius. Only applies when Go to shape is Rect.
  
  Defaults to Go to radius, and may be reset by assigning undefined.
- height :  int
  
  Defaults to 0. Does nothing if Go to item is set.
- item :  Item
  
  The item that determines the geometry of the region. item overrides Go to x, Go to y, Go to width and Go to height.
- bottomRightRadius :  int
  
  Bottom-right corner radius. Only applies when Go to shape is Rect.
  
  Defaults to Go to radius, and may be reset by assigning undefined.
- topLeftRadius :  int
  
  Top-left corner radius. Only applies when Go to shape is Rect.
  
  Defaults to Go to radius, and may be reset by assigning undefined.
- width :  int
  
  Defaults to 0. Does nothing if Go to item is set.
- radius :  int
  
  Corner radius for rounded rectangles. Only applies when Go to shape is Rect. Defaults to 0.
  
  Acts as the default for Go to topLeftRadius, Go to topRightRadius, Go to bottomLeftRadius, and Go to bottomRightRadius.
- regions :  list &lt;Region&gt;
  
  default readonly
  
  Regions to apply on top of this region.
  
  Regions can be nested to create a more complex region. For example this will create a square region with a cutout in the middle.
  
  ```
  Region {
    width: 100; height: 100;
  
    Region {
      x: 50; y: 50;
      width: 50; height: 50;
      intersection: Intersection.Subtract
    }
  }
  ```
- shape :  RegionShape
  
  Defaults to Rect.
- x :  int
  
  Defaults to 0. Does nothing if Go to item is set.
- y :  int
  
  Defaults to 0. Does nothing if Go to item is set.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- changed ()  [](/docs/configuration/qml-overview#-signals)
  
  Triggered when the region’s geometry changes.
  
  In some cases the region does not update automatically. In those cases you can emit this signal manually.
- childrenChanged ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
