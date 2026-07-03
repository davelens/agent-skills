---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.WindowManager/Windowset/
title: Quickshell.WindowManager - Windowset
words: 394
---
* * *

Windowset: QtObject

uncreatable

import Quickshell.WindowManager

A Windowset is a generic type that encompasses both “Workspaces” and “Tags” in window managers. Because the definition encompasses both you may not necessarily need all features.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- canActivate :  bool
  
  readonly
  
  If true, the windowset can be activated. In a workspace based WM, this will make the workspace current, in a tag based wm, the tag will be activated.
- canRemove :  bool
  
  readonly
  
  If true, the windowset can be removed. This may be done implicitly by the WM as well.
- projection :  WindowsetProjection
  
  readonly
  
  The projection this windowset is a member of. A projection is the set of screens covered by a windowset.
- id :  string
  
  readonly
  
  A persistent internal identifier for the windowset. This property should be identical across restarts and destruction/recreation of a windowset.
- coordinates :  list &lt;int&gt;
  
  readonly
  
  Coordinates of the workspace, represented as an N-dimensional array. Most WMs will only expose one coordinate. If more than one is exposed, the first is conventionally X, the second Y, and the third Z.
- canSetProjection :  bool
  
  readonly
  
  If true, the windowset can be moved to a different projection.
- shouldDisplay :  bool
  
  readonly
  
  If false, this windowset should generally be hidden from workspace pickers.
- name :  string
  
  readonly
  
  Human readable name of the windowset.
- canDeactivate :  bool
  
  readonly
  
  If true, the windowset can be deactivated. In a workspace based WM, deactivation is usually implicit and based on activation of another workspace.
- active :  bool
  
  readonly
  
  True if the windowset is currently active. In a workspace based WM, this means the represented workspace is current. In a tag based WM, this means the represented tag is active.
- urgent :  bool
  
  readonly
  
  If true, a window in this windowset has been marked as urgent.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- activate () :  void
  
  Activate the windowset, making it the current workspace on a workspace based WM, or activating the tag on a tag based WM. Requires Go to canActivate.
- deactivate () :  void
  
  Deactivate the windowset, hiding it. Requires Go to canDeactivate.
- remove () :  void
  
  Remove or destroy the windowset. Requires Go to canRemove.
- setProjection (projection) :  void
  
  Property projection: WindowsetProjection
  
  Move the windowset to a different projection. A projection represents the set of screens a workspace spans. Requires Go to canSetProjection.
