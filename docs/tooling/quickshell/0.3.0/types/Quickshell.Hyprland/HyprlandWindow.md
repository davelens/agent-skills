---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/HyprlandWindow/
title: Quickshell.Hyprland - HyprlandWindow
words: 147
---
* * *

HyprlandWindow: QtObject

uncreatable

import Quickshell.Hyprland

Allows setting hyprland specific window properties on a QsWindow or subclass, as an attached object.

Example

```
PopupWindow {
  // ...
  HyprlandWindow.opacity: 0.6 // any number or binding
}
```

NOTE

Requires at least hyprland 0.47.0, or hyprland-surface-v1 support.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- opacity :  real
  
  A multiplier for the window’s overall opacity, ranging from 1.0 to 0.0. Overall opacity includes the opacity of both the window content and visual effects such as blur that apply to it.
  
  Default: 1.0
- visibleMask :  Region
  
  A hint to the compositor that only certain regions of the surface should be rendered. This can be used to avoid rendering large empty regions of a window which can increase performance, especially if the window is blurred. The mask should include all pixels of the window that do not have an alpha value of 0.
