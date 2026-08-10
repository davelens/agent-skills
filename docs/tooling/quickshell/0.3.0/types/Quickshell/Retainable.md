---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/Retainable/
title: Quickshell - Retainable
words: 288
---
* * *

Retainable: QtObject

uncreatable

import Quickshell

Retainable works as an attached property that allows objects to be kept around (retained) after they would normally be destroyed, which is especially useful for things like exit transitions.

An object that is retainable will have Retainable as an attached property. All retainable objects will say that they are retainable on their respective typeinfo pages.

NOTE

Working directly with Retainable is often overly complicated and error prone. For this reason RetainableLock should usually be used instead.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- retained :  bool
  
  readonly
  
  If the object is currently in a retained state.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- forceUnlock () :  void
  
  Forcibly remove all locks, destroying the object.
  
  unlock() should usually be preferred.
- lock () :  void
  
  Hold a lock on the object so it cannot be destroyed.
  
  A counter is used to ensure you can lock the object from multiple places and it will not be unlocked until the same number of unlocks as locks have occurred.
  
  WARNING
  
  It is easy to forget to unlock a locked object. Doing so will create what is effectively a memory leak.
  
  Using RetainableLock is recommended as it will help avoid this scenario and make misuse more obvious.
- unlock () :  void
  
  Remove a lock on the object. See lock() for more information.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- dropped ()  [](/docs/configuration/qml-overview#-signals)
  
  This signal is sent when the object would normally be destroyed.
  
  If all signal handlers return and no locks are in place, the object will be destroyed. If at least one lock is present the object will be retained until all are removed.
- aboutToDestroy ()  [](/docs/configuration/qml-overview#-signals)
  
  This signal is sent immediately before the object is destroyed. At this point destruction cannot be interrupted.
