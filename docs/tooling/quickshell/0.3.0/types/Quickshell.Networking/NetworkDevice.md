---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Networking/NetworkDevice/
title: Quickshell.Networking - NetworkDevice
words: 172
---
* * *

NetworkDevice: QtObject

uncreatable

import Quickshell.Networking

The Go to type property may be used to determine if this device is a WifiDevice or WiredDevice.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- autoconnect :  bool
  
  True if the device is allowed to autoconnect to a network.
- address :  string
  
  readonly
  
  The hardware address of the device in the XX:XX:XX:XX:XX:XX format.
- connected :  bool
  
  readonly
  
  True if the device is connected.
- name :  string
  
  readonly
  
  The name of the device’s control interface.
- networks :  ObjectModel &lt;Network&gt;
  
  readonly
  
  A list of available or connected networks for this device.
  
  When the device type is ‘Wifi’, this model will only contain WifiNetwork.
- type :  DeviceType
  
  readonly
  
  The device type.
  
  When the device type is Wifi, the device object is a WifiDevice. When the device type is Wired, the device object is a WiredDevice. connection and scanning.
- state :  ConnectionState
  
  readonly
  
  Connection state of the device.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- disconnect () :  void
  
  Disconnects the device and prevents it from automatically activating further connections.
