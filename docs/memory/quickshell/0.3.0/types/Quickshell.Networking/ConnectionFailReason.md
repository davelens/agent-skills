---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Networking/ConnectionFailReason/
title: Quickshell.Networking - ConnectionFailReason
words: 75
---
* * *

ConnectionFailReason: QtObject

enum

import Quickshell.Networking

The reason a connection failed.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- toString (reason) :  string
  
  Property reason: ConnectionFailReason
  
  No details provided

Variants

- NoSecrets
  
  Secrets were required, but not provided.
- WifiClientFailed
  
  The Wi-Fi supplicant failed.
- Unknown
  
  The connection failed for an unknown reason.
- WifiAuthTimeout
  
  The Wi-Fi connection took too long to authenticate.
- WifiNetworkLost
  
  The Wi-Fi network could not be found.
- WifiClientDisconnected
  
  The Wi-Fi supplicant disconnected.
