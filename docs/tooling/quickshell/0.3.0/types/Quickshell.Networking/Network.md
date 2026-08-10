---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Networking/Network/
title: Quickshell.Networking - Network
words: 232
---
* * *

Network: QtObject

uncreatable

import Quickshell.Networking

A network. Networks derived from a WifiDevice are WifiNetwork instances.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- nmSettings :  list &lt;NMSettings&gt;
  
  readonly
  
  A list of NetworkManager connection settings profiles for this network.
  
  WARNING
  
  Only valid for the NetworkManager backend.
- state :  ConnectionState
  
  readonly
  
  The connectivity state of the network.
- stateChanging :  bool
  
  readonly
  
  If the network is currently connecting or disconnecting. Shorthand for checking Go to state.
- device :  NetworkDevice
  
  readonly
  
  The device this network belongs to.
- known :  bool
  
  readonly
  
  True if the wifi network has known connection settings saved.
- name :  string
  
  readonly
  
  The name of the network.
- connected :  bool
  
  readonly
  
  True if the network is connected.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- connect () :  void
  
  Attempt to connect to the network.
  
  NOTE
  
  If the network is a WifiNetwork and requires secrets, a Go to connectionFailed() signal will be emitted with NoSecrets. WifiNetwork.connectWithPsk() can be used to provide secrets.
- connectWithSettings (settings) :  void
  
  Property settings: NMSettings
  
  Attempt to connect to the network with a specific Go to nmSettings entry.
  
  WARNING
  
  Only valid for the NetworkManager backend.
- disconnect () :  void
  
  Disconnect from the network.
- forget () :  void
  
  Forget all connection settings for this network.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- connectionFailed (reason)  [](/docs/configuration/qml-overview#-signals)
  
  Property reason: ConnectionFailReason
  
  Signals that a connection to the network has failed because of the given ConnectionFailReason.
