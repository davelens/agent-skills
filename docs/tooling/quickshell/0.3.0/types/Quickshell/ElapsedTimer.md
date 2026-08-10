---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/ElapsedTimer/
title: Quickshell - ElapsedTimer
words: 153
---
* * *

ElapsedTimer: QtObject

import Quickshell

The ElapsedTimer measures time since its last restart, and is useful for determining the time between events that don’t supply it.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- elapsed () :  real
  
  Return the number of seconds since the timer was last started or restarted, with nanosecond precision.
- elapsedMs () :  int
  
  Return the number of milliseconds since the timer was last started or restarted.
- elapsedNs () :  int
  
  Return the number of nanoseconds since the timer was last started or restarted.
- restart () :  real
  
  Restart the timer, returning the number of seconds since the timer was last started or restarted, with nanosecond precision.
- restartMs () :  int
  
  Restart the timer, returning the number of milliseconds since the timer was last started or restarted.
- restartNs () :  int
  
  Restart the timer, returning the number of nanoseconds since the timer was last started or restarted.
