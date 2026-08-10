---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/ShortcutInhibitor/
title: Quickshell.Wayland - ShortcutInhibitor
words: 216
---
* * *

ShortcutInhibitor: QtObject

import Quickshell.Wayland

A shortcuts inhibitor prevents the compositor from processing its own keyboard shortcuts for the focused surface. This allows applications to receive key events for shortcuts that would normally be handled by the compositor.

The inhibitor only takes effect when the associated window is focused and the inhibitor is enabled. The compositor may choose to ignore inhibitor requests based on its policy.

NOTE

Using a shortcuts inhibitor requires the compositor support the keyboard-shortcuts-inhibit-unstable-v1 protocol.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- enabled :  bool
  
  If the shortcuts inhibitor should be enabled. Defaults to false.
- active :  bool
  
  readonly
  
  Whether the inhibitor is currently active. The inhibitor is only active if Go to enabled is true, Go to window has keyboard focus, and the compositor grants the inhibit request.
  
  The compositor may deactivate the inhibitor at any time (for example, if the user requests normal shortcuts to be restored). When deactivated by the compositor, the inhibitor cannot be programmatically reactivated.
- window :  QtObject
  
  The window to associate the shortcuts inhibitor with. The inhibitor will only inhibit shortcuts pressed while this window has keyboard focus.
  
  Must be set to a non null value to enable the inhibitor.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- cancelled ()  [](/docs/configuration/qml-overview#-signals)
  
  Sent if the compositor cancels the inhibitor while it is active.
