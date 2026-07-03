---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Networking/WifiNetwork/
title: Quickshell.Networking - WifiNetwork
words: 125
---
* * *

WifiNetwork: Network

uncreatable

import Quickshell.Networking

WiFi subtype of Network.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- signalStrength :  real
  
  readonly
  
  The current signal strength of the network, from 0.0 to 1.0.
- security :  WifiSecurityType
  
  readonly
  
  The security type of the wifi network.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- connectWithPsk (psk) :  void
  
  Property psk: string
  
  Attempt to connect to the network with the given PSK. If the PSK is wrong, a Go to Network.connectionFailed() signal will be emitted with NoSecrets.
  
  The networking backend may store the PSK for future use with Network.connect(). As such, calling that function first is recommended to avoid having to show a prompt if not required.
  
  NOTE
  
  PSKs should only be provided when the Go to security is one of WpaPsk, Wpa2Psk, or Sae.
