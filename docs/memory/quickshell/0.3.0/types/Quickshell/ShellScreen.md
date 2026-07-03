---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/ShellScreen/
title: Quickshell - ShellScreen
words: 230
---
* * *

ShellScreen: QtObject

uncreatable

import Quickshell

Monitor object useful for setting the monitor for a QsWindow or querying information about the monitor.

WARNING

If the monitor is disconnected, then any stored copies of its ShellMonitor will be marked as dangling and all properties will return default values. Reconnecting the monitor will not reconnect it to the ShellMonitor object.

Due to some technical limitations, it was not possible to reuse the native qml Screen type.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- y :  int
  
  readonly
  
  No details provided
- logicalPixelDensity :  real
  
  readonly
  
  The number of device-independent (scaled) pixels per millimeter.
- height :  int
  
  readonly
  
  No details provided
- width :  int
  
  readonly
  
  No details provided
- x :  int
  
  readonly
  
  No details provided
- model :  string
  
  readonly
  
  The model of the screen as seen by the operating system.
- serialNumber :  string
  
  readonly
  
  The serial number of the screen as seen by the operating system.
- orientation :  unknown
  
  readonly
  
  No details provided
- devicePixelRatio :  real
  
  readonly
  
  The ratio between physical pixels and device-independent (scaled) pixels.
- name :  string
  
  readonly
  
  The name of the screen as seen by the operating system.
  
  Usually something like DP-1, HDMI-1, eDP-1.
- physicalPixelDensity :  real
  
  readonly
  
  The number of physical pixels per millimeter.
- primaryOrientation :  unknown
  
  readonly
  
  No details provided

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- toString () :  string
  
  No details provided
