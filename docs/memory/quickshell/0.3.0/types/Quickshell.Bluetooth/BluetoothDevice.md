---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Bluetooth/BluetoothDevice/
title: Quickshell.Bluetooth - BluetoothDevice
words: 440
---
* * *

BluetoothDevice: QtObject

uncreatable

import Quickshell.Bluetooth

A tracked Bluetooth device.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- bonded :  bool
  
  readonly
  
  True if pairing information is stored for future connections.
- name :  string
  
  The name of the Bluetooth device. This property may be written to create an alias, or set to an empty string to fall back to the device provided name.
  
  See Go to deviceName for the name provided by the device.
- paired :  bool
  
  readonly
  
  True if the device is paired to the computer.
  
  NOTE
  
  pair() can be used to pair a device, however you must forget() the device to unpair it.
- batteryAvailable :  bool
  
  readonly
  
  True if the connected device reports its battery level. Battery level can be accessed via Go to battery.
- battery :  real
  
  readonly
  
  Battery level of the connected device, from 0.0 to 1.0. Only valid if Go to batteryAvailable is true.
- deviceName :  string
  
  readonly
  
  The name of the Bluetooth device, ignoring user provided aliases. See also Go to name which returns a user provided alias if set.
- address :  string
  
  readonly
  
  MAC address of the device.
- trusted :  bool
  
  True if the device is considered to be trusted by the system. Trusted devices are allowed to reconnect themselves to the system without intervention.
- connected :  bool
  
  True if the device is currently connected to the computer.
  
  Setting this property is equivalent to calling connect() and disconnect().
  
  NOTE
  
  Go to state provides more detailed information if required.
- icon :  string
  
  readonly
  
  System icon representing the device type. Use Quickshell.iconPath() to display this in an image.
- wakeAllowed :  bool
  
  True if the device is allowed to wake up the host system from suspend.
- adapter :  BluetoothAdapter
  
  readonly
  
  The Bluetooth adapter this device belongs to.
- pairing :  bool
  
  readonly
  
  True if the device is currently being paired.
  
  NOTE
  
  cancelPair() can be used to cancel the pairing process.
- state :  BluetoothDeviceState
  
  readonly
  
  Connection state of the device.
- blocked :  bool
  
  True if the device is blocked from connecting. If a device is blocked, any connection attempts will be immediately rejected by the system.
- dbusPath :  string
  
  readonly
  
  DBus path of the device under the org.bluez system service.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- cancelPair () :  void
  
  Cancel an active pairing attempt.
- connect () :  void
  
  Attempt to connect to the device.
- disconnect () :  void
  
  Disconnect from the device.
- forget () :  void
  
  Forget the device.
- pair () :  void
  
  Attempt to pair the device.
  
  NOTE
  
  Go to paired and Go to pairing return the current pairing status of the device.
