---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/GlobalShortcut/
title: Quickshell.Hyprland - GlobalShortcut
words: 252
---
* * *

GlobalShortcut: QtObject

import Quickshell.Hyprland

Global shortcut implemented with hyprland\global\shortcuts\_v1.

You can use this within hyprland as a global shortcut:

```
bind = <modifiers>, <key>, global, <appid>:<name>
```

See the wiki for details.

WARNING

The shortcuts protocol does not allow duplicate appid + name pairs. Within a single instance of quickshell this is handled internally, and both users will be notified, but multiple instances of quickshell or XDPH may collide.

If that happens, whichever client that tries to register the shortcuts last will crash.

NOTE

This type does not use the xdg-desktop-portal global shortcuts protocol, as it is not fully functional without flatpak and would cause a considerably worse user experience from other limitations. It will only work with Hyprland. Note that, as this type bypasses xdg-desktop-portal, XDPH is not required.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- description :  string
  
  The description of the shortcut that appears in hyprctl globalshortcuts. You cannot change this at runtime.
- name :  string
  
  The name of the shortcut. You cannot change this at runtime.
- pressed :  bool
  
  readonly
  
  If the keybind is currently pressed.
- appid :  string
  
  The appid of the shortcut. Defaults to quickshell. You cannot change this at runtime.
  
  If you have more than one shortcut we recommend subclassing GlobalShortcut to set this.
- triggerDescription :  string
  
  Have not seen this used ever, but included for completeness. Safe to ignore.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- released ()  [](/docs/configuration/qml-overview#-signals)
  
  Fired when the keybind is released.
- pressed ()  [](/docs/configuration/qml-overview#-signals)
  
  Fired when the keybind is pressed.
