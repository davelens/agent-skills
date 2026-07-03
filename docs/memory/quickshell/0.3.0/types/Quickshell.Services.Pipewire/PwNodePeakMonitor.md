---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/PwNodePeakMonitor/
title: Quickshell.Services.Pipewire - PwNodePeakMonitor
words: 111
---
* * *

PwNodePeakMonitor: QtObject

import Quickshell.Services.Pipewire

Tracks volume peaks for a node across all its channels.

The peak monitor binds nodes similarly to PwObjectTracker when enabled.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- node :  PwNode
  
  The node to monitor. Must be an audio node.
- channels :  list &lt;PwAudioChannel&gt;
  
  readonly
  
  Channel positions for the captured format. Length matches Go to peaks.
- enabled :  bool
  
  If true, the monitor is actively capturing and computing peaks. Defaults to true.
- peak :  real
  
  readonly
  
  Maximum value of Go to peaks.
- peaks :  list &lt;real&gt;
  
  readonly
  
  Per-channel peak noise levels (0.0-1.0). Length matches Go to channels.
  
  The channel’s volume does not affect this property.
