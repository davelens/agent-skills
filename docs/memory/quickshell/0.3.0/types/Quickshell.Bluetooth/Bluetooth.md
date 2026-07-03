---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Bluetooth/Bluetooth/
title: Quickshell.Bluetooth - Bluetooth
words: 78
---
* * *

Bluetooth: QtObject

singleton

import Quickshell.Bluetooth

Provides access to bluetooth devices and adapters.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- defaultAdapter :  BluetoothAdapter
  
  readonly
  
  The default bluetooth adapter. Usually there is only one.
- adapters :  ObjectModel &lt;BluetoothAdapter&gt;
  
  readonly
  
  A list of all bluetooth adapters. See Go to defaultAdapter for the default.
- devices :  ObjectModel &lt;BluetoothDevice&gt;
  
  readonly
  
  A list of all connected bluetooth devices across all adapters. See Go to BluetoothAdapter.devices for the devices connected to a single adapter.
