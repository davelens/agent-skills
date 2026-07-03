---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/QsWindow/
title: Quickshell - QsWindow
words: 1032
---
* * *

QsWindow: Reloadable

uncreatable

import Quickshell

Base class of Quickshell windows

Attached properties

QSWindow can be used as an attached object of anything that subclasses Item. It provides the following properties

- window - the QSWindow object.
- contentItem - the contentItem property of the window.

itemPosition(), itemRect(), and mapFromItem() can also be called directly on the attached object.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- backingWindowVisible :  bool
  
  readonly
  
  If the window is currently shown. You should generally prefer visible.
  
  This property is useful for ensuring windows spawn in a specific order, and you should not use it in place of visible.
- height :  int
  
  The window’s actual height.
  
  Setting this property is deprecated. Set Go to implicitHeight instead.
- implicitWidth :  int
  
  The window’s desired width.
- devicePixelRatio :  real
  
  readonly
  
  The ratio between logical pixels and monitor pixels.
  
  Qt’s coordinate system works in logical pixels, which equal N monitor pixels depending on scale factor. This property returns the amount of monitor pixels in a logical pixel for the current window.
- implicitHeight :  int
  
  The window’s desired height.
- width :  int
  
  The window’s actual width.
  
  Setting this property is deprecated. Set Go to implicitWidth instead.
- color :  color
  
  The background color of the window. Defaults to white.
  
  WARNING
  
  If the window color is opaque before it is made visible, it will not be able to become transparent later unless Go to surfaceFormat.opaque is false.
- screen :  ShellScreen
  
  The screen that the window currently occupies.
  
  This may be modified to move the window to the given screen.
- visible :  bool
  
  If the window should be shown or hidden. Defaults to true.
- surfaceFormat :  [\[opaque\]](#)
  
  Property opaque:bool
  
  Set the surface format to request from the system.
  
  - opaque - If the requested surface should be opaque. Opaque windows allow the operating system to avoid drawing things behind them, or blending the window with those behind it, saving power and GPU load. If unset, this property defaults to true if Go to color is opaque, or false if not. You should not need to modify this property unless you create a surface that starts opaque and later becomes transparent.
  
  NOTE
  
  The surface format cannot be changed after the window is created.
- updatesEnabled :  bool
  
  If the window should receive render updates. Defaults to true.
  
  When set to false, the window will not re-render in response to animations or other visual updates from other windows. This is useful for static windows such as wallpapers that do not need to update frequently, saving GPU cycles.
- contentItem :  Item
  
  readonly
  
  No details provided
- mask :  Region
  
  The clickthrough mask. Defaults to null.
  
  If non null then the clickable areas of the window will be determined by the provided region.
  
  ```
  ShellWindow {
    // The mask region is set to `rect`, meaning only `rect` is clickable.
    // All other clicks pass through the window to ones behind it.
    mask: Region { item: rect }
  
    Rectangle {
      id: rect
  
      anchors.centerIn: parent
      width: 100
      height: 100
    }
  }
  ```
  
  If the provided region’s intersection mode is Combine (the default), then the region will be used as is. Otherwise it will be applied on top of the window region.
  
  For example, setting the intersection mode to Xor will invert the mask and make everything in the mask region not clickable and pass through clicks inside it through the window.
  
  ```
  ShellWindow {
    // The mask region is set to `rect`, but the intersection mode is set to `Xor`.
    // This inverts the mask causing all clicks inside `rect` to be passed to the window
    // behind this one.
    mask: Region { item: rect; intersection: Intersection.Xor }
  
    Rectangle {
      id: rect
  
      anchors.centerIn: parent
      width: 100
      height: 100
    }
  }
  ```
- windowTransform :  QtObject
  
  readonly
  
  Opaque property that will receive an update when factors that affect the window’s position and transform changed.
  
  This property is intended to be used to force a binding update, along with map\[To|From]Item (which is not reactive).
- data :  list &lt;QtObject&gt;
  
  default readonly
  
  No details provided

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- itemPosition (item) :  point
  
  Property item: Item
  
  Returns the given Item’s position relative to the window. Does not update reactively.
  
  Equivalent to calling window.contentItem.mapFromItem(item, 0, 0)
  
  See also: Item.mapFromItem()
- itemRect (item) :  rect
  
  Property item: Item
  
  Returns the given Item’s geometry relative to the window. Does not update reactively.
  
  Equivalent to calling window.contentItem.mapFromItem(item, 0, 0, 0, 0)
  
  See also: Item.mapFromItem()
- mapFromItem (item, point) :  point
  
  Property item: Item Property point: point
  
  Maps the given point in the coordinate space of item to one in the coordinate space of this window. Does not update reactively.
  
  Equivalent to calling window.contentItem.mapFromItem(item, point)
  
  See also: Item.mapFromItem()
- mapFromItem (item, x, y) :  point
  
  Property item: Item Property x: real Property y: real
  
  Maps the given point in the coordinate space of item to one in the coordinate space of this window. Does not update reactively.
  
  Equivalent to calling window.contentItem.mapFromItem(item, x, y)
  
  See also: Item.mapFromItem()
- mapFromItem (item, rect) :  rect
  
  Property item: Item Property rect: rect
  
  Maps the given rect in the coordinate space of item to one in the coordinate space of this window. Does not update reactively.
  
  Equivalent to calling window.contentItem.mapFromItem(item, rect)
  
  See also: Item.mapFromItem()
- mapFromItem (item, x, y, width, height) :  rect
  
  Property item: Item Property x: real Property y: real Property width: real Property height: real
  
  Maps the given rect in the coordinate space of item to one in the coordinate space of this window. Does not update reactively.
  
  Equivalent to calling window.contentItem.mapFromItem(item, x, y, width, height)
  
  See also: Item.mapFromItem()

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- windowConnected ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
- resourcesLost ()  [](/docs/configuration/qml-overview#-signals)
  
  This signal is emitted when resources a window depends on to display are lost, or could not be acquired during window creation. The most common trigger for this signal is a lack of VRAM when creating or resizing a window.
  
  Following this signal, Go to closed() will be sent.
- closed ()  [](/docs/configuration/qml-overview#-signals)
  
  This signal is emitted when the window is closed by the user, the display server, or an error. It is not emitted when Go to visible is set to false.
