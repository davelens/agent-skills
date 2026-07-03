---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Networking/Networking/
title: Quickshell.Networking - Networking
words: 210
---
* * *

Networking: QtObject

singleton

import Quickshell.Networking

An interface to a network backend (currently only NetworkManager), which can be used to view, configure, and connect to various networks.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- wifiEnabled :  bool
  
  Switch for the rfkill software block of all wireless devices.
- wifiHardwareEnabled :  bool
  
  readonly
  
  State of the rfkill hardware block of all wireless devices.
- backend :  NetworkBackendType
  
  readonly
  
  The backend being used to power the Network service.
- connectivity :  NetworkConnectivity
  
  readonly
  
  The result of the last connectivity check.
  
  Connectivity checks may require additional configuration depending on your distro.
  
  NOTE
  
  This property can be used to determine if network access is restricted or gated behind a captive portal.
  
  If checking for captive portals, checkConnectivity() should be called after the portal is dismissed to update this property.
- canCheckConnectivity :  bool
  
  readonly
  
  True if the Go to backend supports connectivity checks.
- connectivityCheckEnabled :  bool
  
  True if connectivity checking is enabled.
- devices :  ObjectModel &lt;NetworkDevice&gt;
  
  readonly
  
  A list of all network devices. Networks are exposed through their respective devices.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- checkConnectivity () :  void
  
  Re-check the network connectivity state immediately.
  
  NOTE
  
  This should be invoked after a user dismisses a web browser that was opened to authenticate via a captive portal.
