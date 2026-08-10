---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.I3/I3Monitor/
title: Quickshell.I3 - I3Monitor
words: 180
---
* * *

I3Monitor: QtObject

uncreatable

import Quickshell.I3

I3/Sway monitors

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- name :  string
  
  readonly
  
  The name of this monitor
- width :  int
  
  readonly
  
  The width in pixels of this monitor
- power :  bool
  
  readonly
  
  Whether this monitor is turned on or not
- focusedWorkspace :  I3Workspace
  
  readonly
  
  Deprecated: See Go to activeWorkspace.
- lastIpcObject :  unknown
  
  readonly
  
  Last JSON returned for this monitor, as a JavaScript object.
  
  This updates every time Quickshell receives an output event from i3/Sway
- x :  int
  
  readonly
  
  The X coordinate of this monitor inside the monitor layout
- activeWorkspace :  I3Workspace
  
  readonly
  
  The currently active workspace on this monitor, May be null.
- focused :  bool
  
  readonly
  
  Whether this monitor is currently in focus
- height :  int
  
  readonly
  
  The height in pixels of this monitor
- scale :  real
  
  readonly
  
  The scaling factor of this monitor, 1 means it runs at native resolution
- id :  int
  
  readonly
  
  The ID of this monitor
- y :  int
  
  readonly
  
  The Y coordinate of this monitor inside the monitor layout
