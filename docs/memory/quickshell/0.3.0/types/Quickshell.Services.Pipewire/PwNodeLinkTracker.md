---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/PwNodeLinkTracker/
title: Quickshell.Services.Pipewire - PwNodeLinkTracker
words: 70
---
* * *

PwNodeLinkTracker: QtObject

import Quickshell.Services.Pipewire

Tracks non-monitor link connections to a given node.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- node :  PwNode
  
  The node to track connections to.
- linkGroups :  list &lt;PwLinkGroup&gt;
  
  readonly
  
  Link groups connected to the given node, excluding monitors.
  
  If the node is a sink, links which target the node will be tracked. If the node is a source, links which source the node will be tracked.
