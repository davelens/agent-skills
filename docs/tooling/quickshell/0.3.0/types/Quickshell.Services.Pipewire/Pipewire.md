---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/Pipewire/
title: Quickshell.Services.Pipewire - Pipewire
words: 478
---
* * *

Pipewire: QtObject

singleton

import Quickshell.Services.Pipewire

Contains links to all pipewire objects.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- ready :  bool
  
  readonly
  
  This property is true if quickshell has completed its initial sync with the pipewire server. If true, nodes, links and sync/source preferences will be in a good state.
  
  NOTE
  
  You can use the pipewire object before it is ready, but some nodes/links may be missing, and preference metadata may be null.
- links :  ObjectModel &lt;PwLink&gt;
  
  readonly
  
  All links present in pipewire.
  
  Links connect pipewire nodes to each other, and can be used to determine their relationship.
  
  If you already have a node you want to check for connections to, use PwNodeLinkTracker instead of filtering this list.
  
  NOTE
  
  Multiple links may exist between the same nodes. See Go to linkGroups for a deduplicated list containing only one entry per link between nodes.
- linkGroups :  ObjectModel &lt;PwLinkGroup&gt;
  
  readonly
  
  All link groups present in pipewire.
  
  The same as Go to links but deduplicated.
  
  If you already have a node you want to check for connections to, use PwNodeLinkTracker instead of filtering this list.
- defaultAudioSink :  PwNode
  
  readonly
  
  The default audio sink (output) or null.
  
  This is the default sink currently in use by pipewire, and the one applications are currently using.
  
  To set the default sink, use Go to preferredDefaultAudioSink.
  
  NOTE
  
  When the default sink changes, this property may breifly become null. This depends on your hardware.
- nodes :  ObjectModel &lt;PwNode&gt;
  
  readonly
  
  All nodes present in pipewire.
  
  This list contains every node on the system. To find a useful subset, filtering with the following properties may be helpful:
  
  - Go to PwNode.isStream - if the node is an application or hardware device.
  - Go to PwNode.isSink - if the node is a sink or source.
  - Go to PwNode.audio - if non null the node is an audio node.
- preferredDefaultAudioSource :  PwNode
  
  The preferred default audio source (input) or null.
  
  This is a hint to pipewire telling it which source should be the default when possible. Go to defaultAudioSource may differ when it is not possible for pipewire to pick this node.
  
  See Go to defaultAudioSource for the current default source, regardless of preference.
- defaultAudioSource :  PwNode
  
  readonly
  
  The default audio source (input) or null.
  
  This is the default source currently in use by pipewire, and the one applications are currently using.
  
  To set the default source, use Go to preferredDefaultAudioSource.
  
  NOTE
  
  When the default source changes, this property may breifly become null. This depends on your hardware.
- preferredDefaultAudioSink :  PwNode
  
  The preferred default audio sink (output) or null.
  
  This is a hint to pipewire telling it which sink should be the default when possible. Go to defaultAudioSink may differ when it is not possible for pipewire to pick this node.
  
  See Go to defaultAudioSink for the current default sink, regardless of preference.
