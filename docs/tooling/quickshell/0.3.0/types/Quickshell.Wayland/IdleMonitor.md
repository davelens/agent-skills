---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/IdleMonitor/
title: Quickshell.Wayland - IdleMonitor
words: 145
---
* * *

IdleMonitor: QtObject

import Quickshell.Wayland

An idle monitor detects when the user stops providing input for a period of time.

NOTE

Using an idle monitor requires the compositor support the ext-idle-notify-v1 protocol.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- isIdle :  bool
  
  readonly
  
  This property is true if the user has been idle for at least Go to timeout. What is considered to be idle is influenced by Go to respectInhibitors.
- enabled :  bool
  
  If the idle monitor should be enabled. Defaults to true.
- timeout :  real
  
  The amount of time in seconds the idle monitor should wait before reporting an idle state.
  
  Defaults to zero, which reports idle status immediately.
- respectInhibitors :  bool
  
  When set to true, Go to isIdle will depend on both user interaction and active idle inhibitors. When false, the value will depend solely on user interaction. Defaults to true.
