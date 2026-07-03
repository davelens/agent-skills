---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/Hyprland/
title: Quickshell.Hyprland - Hyprland
words: 280
---
* * *

Hyprland: QtObject

singleton

import Quickshell.Hyprland

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- monitors :  ObjectModel &lt;HyprlandMonitor&gt;
  
  readonly
  
  All hyprland monitors.
- activeToplevel :  HyprlandToplevel
  
  readonly
  
  Currently active toplevel (might be null)
- toplevels :  ObjectModel &lt;HyprlandToplevel&gt;
  
  readonly
  
  All hyprland toplevels
- workspaces :  ObjectModel &lt;HyprlandWorkspace&gt;
  
  readonly
  
  All hyprland workspaces, sorted by id.
  
  NOTE
  
  Named workspaces have a negative id, and will appear before unnamed workspaces.
- eventSocketPath :  string
  
  readonly
  
  Path to the event socket (.socket2.sock)
- focusedMonitor :  HyprlandMonitor
  
  readonly
  
  The currently focused hyprland monitor. May be null.
- focusedWorkspace :  HyprlandWorkspace
  
  readonly
  
  The currently focused hyprland workspace. May be null.
- requestSocketPath :  string
  
  readonly
  
  Path to the request socket (.socket.sock)
- usingLua :  bool
  
  readonly
  
  True if Hyprland is running in lua mode. Dispatcher syntax changes when using lua.
  
  This property will be false until the Hyprland module is initialized.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- dispatch (request) :  void
  
  Property request: string
  
  Execute a hyprland dispatcher.
- monitorFor (screen) :  HyprlandMonitor
  
  Property screen: ShellScreen
  
  Get the HyprlandMonitor object that corresponds to a quickshell screen.
- refreshMonitors () :  void
  
  Refresh monitor information.
  
  Many actions that will invalidate monitor state don’t send events, so this function is available if required.
- refreshToplevels () :  void
  
  Refresh toplevel information.
  
  Many actions that will invalidate workspace state don’t send events, so this function is available if required.
- refreshWorkspaces () :  void
  
  Refresh workspace information.
  
  Many actions that will invalidate workspace state don’t send events, so this function is available if required.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- rawEvent (event)  [](/docs/configuration/qml-overview#-signals)
  
  Property event: HyprlandEvent
  
  Emitted for every event that comes in through the hyprland event socket (socket2).
  
  See Hyprland Wiki: IPC for a list of events.
