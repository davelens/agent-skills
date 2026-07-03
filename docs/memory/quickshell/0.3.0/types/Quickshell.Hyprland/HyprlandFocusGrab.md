---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/HyprlandFocusGrab/
title: Quickshell.Hyprland - HyprlandFocusGrab
words: 234
---
* * *

HyprlandFocusGrab: QtObject

import Quickshell.Hyprland

Object for managing input focus grabs via the hyprland\focus\grab\_v1 wayland protocol.

When enabled, all of the windows listed in the windows property will receive input normally, and will retain keyboard focus even if the mouse is moved off of them. When areas of the screen that are not part of a listed window are clicked or touched, the grab will become inactive and emit the cleared signal.

This is useful for implementing dismissal of popup type windows.

```
import Quickshell
import Quickshell.Hyprland
import QtQuick.Controls

ShellRoot {
  FloatingWindow {
    id: window

    Button {
      anchors.centerIn: parent
      text: grab.active ? "Remove exclusive focus" : "Take exclusive focus"
      onClicked: grab.active = !grab.active
    }

    HyprlandFocusGrab {
      id: grab
      windows: [ window ]
    }
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- active :  bool
  
  If the focus grab is active. Defaults to false.
  
  When set to true, an input grab will be created for the listed windows.
  
  This property will change to false once the grab is dismissed. It will not change to true until the grab begins, which requires at least one visible window.
- windows :  list &lt;QtObject&gt;
  
  The list of windows to whitelist for input.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- cleared ()  [](/docs/configuration/qml-overview#-signals)
  
  Sent whenever the compositor clears the focus grab.
  
  This may be in response to all windows being removed from the list or simultaneously hidden, in addition to a normal clear.
