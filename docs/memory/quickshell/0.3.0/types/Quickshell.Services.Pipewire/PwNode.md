---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/PwNode/
title: Quickshell.Services.Pipewire - PwNode
words: 372
---
* * *

PwNode: QtObject

uncreatable

import Quickshell.Services.Pipewire

A node in the pipewire connection graph.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- name :  string
  
  readonly
  
  The node’s name, corresponding to the object’s node.name property.
- audio :  PwNodeAudio
  
  readonly
  
  Extra information present only if the node sends or receives audio.
  
  The presence or absence of this property can be used to determine if a node manages audio, regardless of if it is bound. If non null, the node is an audio node.
- isSink :  bool
  
  readonly
  
  If true, then the node accepts audio input from other nodes, if false the node outputs audio to other nodes.
- properties :  unknown
  
  readonly
  
  The property set present on the node, as an object containing key-value pairs. You can inspect this directly with pw-cli i <id>.
  
  A few properties of note, which may or may not be present:
  
  - application.name - A suggested human readable name for the node.
  - application.icon-name - The name of an icon recommended to display for the node.
  - media.name - A description of the currently playing media. (more likely to be present than media.title and media.artist)
  - media.title - The title of the currently playing media.
  - media.artist - The artist of the currently playing media.
  
  WARNING
  
  This property is invalid unless the node is bound using PwObjectTracker.
- description :  string
  
  readonly
  
  The node’s description, corresponding to the object’s node.description property.
  
  May be empty. Generally more human readable than Go to name.
- nickname :  string
  
  readonly
  
  The node’s nickname, corresponding to the object’s node.nickname property.
  
  May be empty. Generally but not always more human readable than Go to description.
- ready :  bool
  
  readonly
  
  True if the node is fully bound and ready to use.
  
  NOTE
  
  The node may be used before it is fully bound, but some data may be missing or incorrect.
- isStream :  bool
  
  readonly
  
  If true then the node is likely to be a program, if false it is likely to be a hardware device.
- id :  int
  
  readonly
  
  The pipewire object id of the node.
  
  Mainly useful for debugging. You can inspect the node directly with pw-cli i <id>.
- type :  unknown
  
  readonly
  
  The type of this node. Reflects Pipewire’s media.class.
