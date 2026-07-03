---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/PwNodeAudio/
title: Quickshell.Services.Pipewire - PwNodeAudio
words: 169
---
* * *

PwNodeAudio: QtObject

uncreatable

import Quickshell.Services.Pipewire

Extra properties of a PwNode if the node is an audio node.

See Go to PwNode.audio.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- muted :  bool
  
  If the node is currently muted. Setting this property changes the mute state.
  
  WARNING
  
  This property is invalid unless the node is bound using PwObjectTracker.
- volume :  real
  
  The average volume over all channels of the node. Setting this property modifies the volume of all channels proportionately.
  
  WARNING
  
  This property is invalid unless the node is bound using PwObjectTracker.
- volumes :  list &lt;real&gt;
  
  The volumes of each audio channel individually. Each entry corresponds to the volume of the channel at the same index in Go to channels. Go to volumes and Go to channels will always be the same length.
  
  WARNING
  
  This property is invalid unless the node is bound using PwObjectTracker.
- channels :  list &lt;PwAudioChannel&gt;
  
  readonly
  
  The audio channels present on the node.
  
  WARNING
  
  This property is invalid unless the node is bound using PwObjectTracker.
