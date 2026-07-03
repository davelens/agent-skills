---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Polkit/PolkitAgent/
title: Quickshell.Services.Polkit - PolkitAgent
words: 101
---
* * *

PolkitAgent: QtObject

import Quickshell.Services.Polkit

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- isRegistered :  bool
  
  readonly
  
  Indicates whether the agent registered successfully and is in use.
- path :  string
  
  The D-Bus path that this agent listener will use.
  
  If not set, a default of /org/quickshell/Polkit will be used.
- flow :  AuthFlow
  
  readonly
  
  The current authentication state if an authentication request is active.
  
  Null when no authentication request is active.
- isActive :  bool
  
  readonly
  
  Indicates an ongoing authentication request.
  
  If this is true, other properties such as Go to message and Go to iconName will also be populated with relevant information.
