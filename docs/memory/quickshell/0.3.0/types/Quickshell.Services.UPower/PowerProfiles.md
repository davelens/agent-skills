---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.UPower/PowerProfiles/
title: Quickshell.Services.UPower - PowerProfiles
words: 260
---
* * *

PowerProfiles: QtObject

singleton

import Quickshell.Services.UPower

An interface to the UPower power profiles daemon, which can be used to view and manage power profiles.

NOTE

The power profiles daemon must be installed to use this service. Installing UPower does not necessarily install the power profiles daemon.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- hasPerformanceProfile :  bool
  
  readonly
  
  If the system has a performance profile.
  
  If this property is false, your system does not have a performance profile known to power-profiles-daemon.
- profile :  PowerProfile
  
  The current power profile.
  
  This property may be set to change the system’s power profile, however it cannot be set to Performance unless Go to hasPerformanceProfile is true.
- holds :  list
  
  readonly
  
  Power profile holds created by other applications.
  
  This property returns a powerProfileHold object, which has the following properties.
  
  - profile - The PowerProfile held by the application.
  - applicationId - A string identifying the application
  - reason - The reason the application has given for holding the profile.
  
  Applications may “hold” a power profile in place for their lifetime, such as a game holding Performance mode or a system daemon holding Power Saver mode when reaching a battery threshold. If the user selects a different profile explicitly (e.g. by setting Go to profile) all holds will be removed.
  
  Multiple applications may hold a power profile, however if multiple applications request profiles than PowerSaver will win over Performance. Only Performance and PowerSaver profiles may be held.
- degradationReason :  PerformanceDegradationReason
  
  readonly
  
  If power-profiles-daemon detects degraded system performance, the reason for the degradation will be present here.
