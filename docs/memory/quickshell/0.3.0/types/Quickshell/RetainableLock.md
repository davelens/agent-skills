---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/RetainableLock/
title: Quickshell - RetainableLock
words: 128
---
* * *

RetainableLock: QtObject

import Quickshell

A RetainableLock provides extra safety and ease of use for locking Retainable objects. A retainable object can be locked by multiple locks at once, and each lock re-exposes relevant properties of the retained objects.

Example

The code below will keep a retainable object alive for as long as the RetainableLock exists.

```
RetainableLock {
  object: aRetainableObject
  locked: true
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- locked :  bool
  
  If the object should be locked.
- object :  QtObject
  
  The object to lock. Must be Retainable.
- retained :  bool
  
  readonly
  
  If the object is currently in a retained state.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- dropped ()  [](/docs/configuration/qml-overview#-signals)
  
  Rebroadcast of the object’s Go to Retainable.dropped().
- aboutToDestroy ()  [](/docs/configuration/qml-overview#-signals)
  
  Rebroadcast of the object’s Go to Retainable.aboutToDestroy().
