---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Networking/WiredDevice/
title: Quickshell.Networking - WiredDevice
words: 74
---
* * *

WiredDevice: NetworkDevice

uncreatable

import Quickshell.Networking

Wired variant of a NetworkDevice.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- linkSpeed :  int
  
  readonly
  
  The maximum speed of the physical device link, in megabits per second.
- hasLink :  bool
  
  readonly
  
  True if the wired device has a physical link (cable plugged in).
- network :  Network
  
  readonly
  
  The wired network for this device or null.
  
  NOTE
  
  This network is only available when Go to hasLink is true.
