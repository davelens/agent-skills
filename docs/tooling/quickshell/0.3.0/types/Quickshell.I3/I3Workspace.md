---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.I3/I3Workspace/
title: Quickshell.I3 - I3Workspace
words: 177
---
* * *

I3Workspace: QtObject

uncreatable

import Quickshell.I3

I3/Sway workspaces

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- number :  int
  
  readonly
  
  The number of this workspace
- urgent :  bool
  
  readonly
  
  If a window in this workspace has an urgent notification
- id :  int
  
  readonly
  
  The ID of this workspace, it is unique for i3/Sway launch
- monitor :  I3Monitor
  
  readonly
  
  The monitor this workspace is being displayed on
- name :  string
  
  readonly
  
  The name of this workspace
- focused :  bool
  
  readonly
  
  If this workspace is currently active on a monitor and that monitor is currently focused. See also Go to active.
- num :  int
  
  readonly
  
  Deprecated: use Go to number
- lastIpcObject :  unknown
  
  readonly
  
  Last JSON returned for this workspace, as a JavaScript object.
  
  This updates every time we receive a workspace event from i3/Sway
- active :  bool
  
  readonly
  
  If this workspace is currently active on its monitor. See also Go to focused.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- activate () :  void
  
  Activate the workspace.
  
  NOTE
  
  This is equivalent to running
  
  ```
  I3.dispatch(`workspace number ${workspace.number}`);
  ```
