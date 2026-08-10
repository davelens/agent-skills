---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.UPower/UPower/
title: Quickshell.Services.UPower - UPower
words: 130
---
* * *

UPower: QtObject

singleton

import Quickshell.Services.UPower

An interface to the UPower daemon, which can be used to view battery and power statistics for your computer and connected devices.

NOTE

The UPower daemon must be installed to use this service.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- displayDevice :  UPowerDevice
  
  readonly
  
  UPower’s DisplayDevice for your system. Cannot be null, but might not be initialized (check Go to UPowerDevice.ready if you need to know).
  
  This is an aggregate device and not a physical one, meaning you will not find it in Go to devices. It is typically the device that is used for displaying information in desktop environments.
- onBattery :  bool
  
  readonly
  
  If the system is currently running on battery power, or discharging.
- devices :  ObjectModel &lt;UPowerDevice&gt;
  
  readonly
  
  All connected UPower devices.
