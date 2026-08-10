---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/WlrKeyboardFocus/
title: Quickshell.Wayland - WlrKeyboardFocus
words: 90
---
* * *

WlrKeyboardFocus: WlrKeyboardFocus

import Quickshell.Wayland

See Go to WlrLayershell.keyboardFocus.

Variants

- None
  
  No keyboard input will be accepted.
- Exclusive
  
  Exclusive access to the keyboard, locking out all other windows.
  
  WARNING
  
  You CANNOT use this to make a secure lock screen.
  
  If you want to make a lock screen, use WlSessionLock.
- OnDemand
  
  Access to the keyboard as determined by the operating system.
  
  WARNING
  
  On some systems, OnDemand may cause the shell window to retain focus over another window unexpectedly. You should try None if you experience issues.
