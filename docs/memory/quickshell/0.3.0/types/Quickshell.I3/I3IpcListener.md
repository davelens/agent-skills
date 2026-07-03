---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.I3/I3IpcListener/
title: Quickshell.I3 - I3IpcListener
words: 47
---
* * *

I3IpcListener: QtObject

import Quickshell.I3

Example

```
I3IpcListener {
  subscriptions: ["input"]
  onIpcEvent: function (event) {
    handleInputEvent(event.data)
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- subscriptions :  list &lt;string&gt;
  
  List of I3/Sway events to subscribe to.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- ipcEvent (event)  [](/docs/configuration/qml-overview#-signals)
  
  Property event: I3Event
  
  No details provided
