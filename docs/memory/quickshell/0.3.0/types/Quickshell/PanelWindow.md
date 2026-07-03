---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/PanelWindow/
title: Quickshell - PanelWindow
words: 255
---
* * *

PanelWindow: QsWindow

import Quickshell

Decorationless window attached to screen edges by anchors.

Example

The following snippet creates a white bar attached to the bottom of the screen.

```
PanelWindow {
  anchors {
    left: true
    bottom: true
    right: true
  }

  Text {
    anchors.centerIn: parent
    text: "Hello!"
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- exclusiveZone :  int
  
  The amount of space reserved for the shell layer relative to its anchors. Setting this property sets Go to exclusionMode to ExclusionMode.Normal.
  
  NOTE
  
  Either 1 or 3 anchors are required for the zone to take effect.
- aboveWindows :  bool
  
  If the panel should render above standard windows. Defaults to true.
  
  Note: On Wayland this property corresponds to Go to WlrLayershell.layer.
- exclusionMode :  ExclusionMode
  
  Defaults to ExclusionMode.Auto.
- anchors :  [\[bottom,left,right,top\]](#)
  
  Property bottom:bool Property left:bool Property right:bool Property top:bool
  
  Anchors attach a shell window to the sides of the screen. By default all anchors are disabled to avoid blocking the entire screen due to a misconfiguration.
  
  NOTE
  
  When two opposite anchors are attached at the same time, the corresponding dimension (width or height) will be forced to equal the screen width/height. Margins can be used to create anchored windows that are also disconnected from the monitor sides.
- focusable :  bool
  
  If the panel should accept keyboard focus. Defaults to false.
  
  Note: On Wayland this property corresponds to Go to WlrLayershell.keyboardFocus.
- margins :  [\[right,top,bottom,left\]](#)
  
  Property right:int Property top:int Property bottom:int Property left:int
  
  Offsets from the sides of the screen.
  
  NOTE
  
  Only applies to edges with anchors
