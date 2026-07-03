---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/SystemClock/
title: Quickshell - SystemClock
words: 222
---
* * *

SystemClock: QtObject

enum

import Quickshell

SystemClock is a view into the system’s clock. It updates at hour, minute, or second intervals depending on Go to precision.

Examples

```
SystemClock {
  id: clock
  precision: SystemClock.Seconds
}

Text {
  text: Qt.formatDateTime(clock.date, "hh:mm:ss - yyyy-MM-dd")
}
```

WARNING

Clock updates will trigger within 50ms of the system clock changing, however this can be either before or after the clock changes (+-50ms). If you need a date object, use Go to date instead of constructing a new one, or the time of the constructed object could be off by up to a second.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- minutes :  int
  
  readonly
  
  The current minute, or 0 if Go to precision is SystemClock.Hours.
- precision :  SystemClock
  
  The precision the clock should measure at. Defaults to SystemClock.Seconds.
- enabled :  bool
  
  If the clock should update. Defaults to true.
  
  Setting enabled to false pauses the clock.
- seconds :  int
  
  readonly
  
  The current second, or 0 if Go to precision is SystemClock.Hours or SystemClock.Minutes.
- date :  date
  
  readonly
  
  The current date and time.
  
  TIP
  
  You can use Qt.formatDateTime() to get the time as a string in your format of choice.
- hours :  int
  
  readonly
  
  The current hour.

Variants

- Minutes
  
  No details provided
- Seconds
  
  No details provided
- Hours
  
  No details provided
