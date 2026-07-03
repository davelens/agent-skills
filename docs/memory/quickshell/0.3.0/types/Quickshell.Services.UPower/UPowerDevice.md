---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.UPower/UPowerDevice/
title: Quickshell.Services.UPower - UPowerDevice
words: 362
---
* * *

UPowerDevice: QtObject

uncreatable

import Quickshell.Services.UPower

A device exposed through the UPower system service.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- type :  DeviceType
  
  readonly
  
  The type of device.
- energy :  real
  
  readonly
  
  Current energy level of the device in watt-hours.
- isPresent :  bool
  
  readonly
  
  If the power source is present in the bay or slot, useful for hot-removable batteries.
  
  If the device type is not Battery, then the property will be invalid.
- timeToEmpty :  real
  
  readonly
  
  Estimated time until the device is fully discharged, in seconds.
  
  Will be set to 0 if charging.
- model :  string
  
  readonly
  
  Model name of the device. Unlikely to be useful for internal devices.
- energyCapacity :  real
  
  readonly
  
  Maximum energy capacity of the device in watt-hours
- powerSupply :  bool
  
  readonly
  
  If the device is a power supply for your computer and can provide charge.
- healthPercentage :  real
  
  readonly
  
  Health of the device as a percentage of its original health.
- ready :  bool
  
  readonly
  
  If device statistics have been queried for this device yet. This will be true for all devices returned from Go to UPower.devices, but not the default device, which may be returned before it is ready to avoid returning null.
- healthSupported :  bool
  
  readonly
  
  No details provided
- iconName :  string
  
  readonly
  
  Name of the icon representing the current state of the device, or an empty string if not provided.
- isLaptopBattery :  bool
  
  readonly
  
  If the device is a laptop battery or not. Use this to check if your device is a valid battery.
  
  This will be equivalent to Go to type == Battery && Go to powerSupply == true.
- changeRate :  real
  
  readonly
  
  Rate of energy change in watts (positive when charging, negative when discharging).
- nativePath :  string
  
  readonly
  
  Native path of the device specific to your OS.
- timeToFull :  real
  
  readonly
  
  Estimated time until the device is fully charged, in seconds.
  
  Will be set to 0 if discharging.
- state :  UPowerDeviceState
  
  readonly
  
  Current state of the device.
- percentage :  real
  
  readonly
  
  Current charge level as a percentage.
  
  This would be equivalent to Go to energy / Go to energyCapacity.
