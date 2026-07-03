---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/PwLink/
title: Quickshell.Services.Pipewire - PwLink
words: 102
---
* * *

PwLink: QtObject

uncreatable

import Quickshell.Services.Pipewire

Note that there is one link per channel of a connection between nodes. You usually want PwLinkGroup.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- state :  PwLinkState
  
  readonly
  
  The current state of the link.
  
  WARNING
  
  This property is invalid unless the node is bound using PwObjectTracker.
- target :  PwNode
  
  readonly
  
  The node that is receiving information. (the sink)
- id :  int
  
  readonly
  
  The pipewire object id of the link.
  
  Mainly useful for debugging. you can inspect the link directly with pw-cli i <id>.
- source :  PwNode
  
  readonly
  
  The node that is sending information. (the source)
