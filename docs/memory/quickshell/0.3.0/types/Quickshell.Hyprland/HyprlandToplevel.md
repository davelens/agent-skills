---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/HyprlandToplevel/
title: Quickshell.Hyprland - HyprlandToplevel
words: 209
---
* * *

HyprlandToplevel: QtObject

uncreatable

import Quickshell.Hyprland

Represents a window as Hyprland exposes it. Can also be used as an attached object of a Toplevel, to resolve a handle to an Hyprland toplevel.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- title :  string
  
  readonly
  
  The title of the toplevel
- monitor :  HyprlandMonitor
  
  readonly
  
  The current monitor of the toplevel (might be null)
- address :  string
  
  readonly
  
  Hexadecimal Hyprland window address. Will be an empty string until the address is reported.
- wayland :  Toplevel
  
  readonly
  
  The wayland toplevel handle. Will be null intil the address is reported
- workspace :  HyprlandWorkspace
  
  readonly
  
  The current workspace of the toplevel (might be null)
- lastIpcObject :  unknown
  
  readonly
  
  Last json returned for this toplevel, as a javascript object.
  
  WARNING
  
  This is not updated unless the toplevel object is fetched again from Hyprland. If you need a value that is subject to change and does not have a dedicated property, run Hyprland.refreshToplevels() and wait for this property to update.
- activated :  bool
  
  readonly
  
  Whether the toplevel is active or not
- urgent :  bool
  
  readonly
  
  Whether the client is urgent or not
- handle :  HyprlandToplevel
  
  readonly
  
  The toplevel handle, exposing the Hyprland toplevel. Will be null until the address is reported
