---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.DBusMenu/DBusMenuItem/
title: Quickshell.DBusMenu - DBusMenuItem
words: 92
---
* * *

DBusMenuItem: QsMenuEntry

uncreatable

import Quickshell.DBusMenu

Menu item shared by an external program via the DBusMenu specification.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- menuHandle :  DBusMenuHandle
  
  readonly
  
  Handle to the root of this menu.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- updateLayout () :  void
  
  Refreshes the menu contents.
  
  Usually you shouldn’t need to call this manually but some applications providing menus do not update them correctly. Call this if menus don’t update their state.
  
  The Go to layoutUpdated() signal will be sent when a response is received.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- layoutUpdated ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
