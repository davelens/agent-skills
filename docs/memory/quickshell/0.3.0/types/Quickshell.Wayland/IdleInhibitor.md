---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/IdleInhibitor/
title: Quickshell.Wayland - IdleInhibitor
words: 135
---
* * *

IdleInhibitor: QtObject

import Quickshell.Wayland

If an idle daemon is running, it may perform actions such as locking the screen or putting the computer to sleep.

An idle inhibitor prevents a wayland session from being marked as idle, if compositor defined heuristics determine the window the inhibitor is attached to is important.

A compositor will usually consider a PanelWindow or a focused FloatingWindow to be important.

NOTE

Using an idle inhibitor requires the compositor support the idle-inhibit-unstable-v1 protocol.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- window :  QtObject
  
  The window to associate the idle inhibitor with. This may be used by the compositor to determine if the inhibitor should be respected.
  
  Must be set to a non null value to enable the inhibitor.
- enabled :  bool
  
  If the idle inhibitor should be enabled. Defaults to false.
