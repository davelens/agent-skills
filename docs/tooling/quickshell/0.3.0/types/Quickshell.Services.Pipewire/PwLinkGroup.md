---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/PwLinkGroup/
title: Quickshell.Services.Pipewire - PwLinkGroup
words: 71
---
* * *

PwLinkGroup: QtObject

uncreatable

import Quickshell.Services.Pipewire

A group of connections between pipewire nodes, one per source-&gt;target pair.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- state :  PwLinkState
  
  readonly
  
  The current state of the link group.
  
  WARNING
  
  This property is invalid unless the node is bound using PwObjectTracker.
- target :  PwNode
  
  readonly
  
  The node that is receiving information. (the sink)
- source :  PwNode
  
  readonly
  
  The node that is sending information. (the source)
