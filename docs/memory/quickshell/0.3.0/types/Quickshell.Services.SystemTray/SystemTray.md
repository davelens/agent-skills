---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.SystemTray/SystemTray/
title: Quickshell.Services.SystemTray - SystemTray
words: 51
---
* * *

SystemTray: QtObject

singleton

import Quickshell.Services.SystemTray

Referencing the SystemTray singleton will make quickshell start tracking system tray contents, which are updated as the tray changes, and can be accessed via the Go to items property.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- items :  ObjectModel &lt;SystemTrayItem&gt;
  
  readonly
  
  List of all system tray icons.
