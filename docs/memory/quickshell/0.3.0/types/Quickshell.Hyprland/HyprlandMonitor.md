---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/HyprlandMonitor/
title: Quickshell.Hyprland - HyprlandMonitor
words: 155
---
* * *

HyprlandMonitor: QtObject

uncreatable

import Quickshell.Hyprland

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- y :  int
  
  readonly
  
  No details provided
- width :  int
  
  readonly
  
  No details provided
- id :  int
  
  readonly
  
  No details provided
- lastIpcObject :  unknown
  
  readonly
  
  Last json returned for this monitor, as a javascript object.
  
  WARNING
  
  This is not updated unless the monitor object is fetched again from Hyprland. If you need a value that is subject to change and does not have a dedicated property, run Hyprland.refreshMonitors() and wait for this property to update.
- description :  string
  
  readonly
  
  No details provided
- height :  int
  
  readonly
  
  No details provided
- activeWorkspace :  HyprlandWorkspace
  
  readonly
  
  The currently active workspace on this monitor. May be null.
- focused :  bool
  
  readonly
  
  If the monitor is currently focused.
- name :  string
  
  readonly
  
  No details provided
- scale :  real
  
  readonly
  
  No details provided
- x :  int
  
  readonly
  
  No details provided
