---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.UPower/PerformanceDegradationReason/
title: Quickshell.Services.UPower - PerformanceDegradationReason
words: 80
---
* * *

PerformanceDegradationReason: QtObject

enum

import Quickshell.Services.UPower

See Go to PowerProfiles.degradationReason for more information.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- toString (reason) :  string
  
  Property reason: PerformanceDegradationReason
  
  No details provided

Variants

- HighTemperature
  
  Performance has been reduced due to high system temperatures.
- LapDetected
  
  Performance has been reduced due to the computer’s lap detection function, which attempts to keep the computer from getting too hot while on your lap.
- None
  
  Performance has not been degraded in a way power-profiles-daemon can detect.
