---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/HyprlandWorkspace/
title: Quickshell.Hyprland - HyprlandWorkspace
words: 201
---
* * *

HyprlandWorkspace: QtObject

uncreatable

import Quickshell.Hyprland

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- active :  bool
  
  readonly
  
  If this workspace is currently active on its monitor. See also Go to focused.
- hasFullscreen :  bool
  
  readonly
  
  If this workspace currently has a fullscreen client.
- focused :  bool
  
  readonly
  
  If this workspace is currently active on a monitor and that monitor is currently focused. See also Go to active.
- id :  int
  
  readonly
  
  No details provided
- urgent :  bool
  
  readonly
  
  If this workspace has a window that is urgent. Becomes always falsed after the workspace is Go to focused.
- monitor :  HyprlandMonitor
  
  readonly
  
  No details provided
- name :  string
  
  readonly
  
  No details provided
- lastIpcObject :  unknown
  
  readonly
  
  Last json returned for this workspace, as a javascript object.
  
  WARNING
  
  This is not updated unless the workspace object is fetched again from Hyprland. If you need a value that is subject to change and does not have a dedicated property, run Hyprland.refreshWorkspaces() and wait for this property to update.
- toplevels :  ObjectModel
  
  readonly
  
  List of toplevels on this workspace.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- activate () :  void
  
  Activate the workspace.
  
  NOTE
  
  This is equivalent to running
  
  ```
  HyprlandIpc.dispatch(`workspace ${workspace.name}`);
  ```
