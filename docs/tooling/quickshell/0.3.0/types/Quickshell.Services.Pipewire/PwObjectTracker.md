---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pipewire/PwObjectTracker/
title: Quickshell.Services.Pipewire - PwObjectTracker
words: 102
---
* * *

PwObjectTracker: QtObject

import Quickshell.Services.Pipewire

PwObjectTracker binds every node given in its Go to objects list.

Object Binding

By default, pipewire objects are unbound. Unbound objects only have a subset of information available for use or modification. Binding an object makes all of its properties available for use or modification if applicable.

Properties that require their object be bound to use are clearly marked. You do not need to bind the object unless mentioned in the description of the property you want to use.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- objects :  list &lt;QtObject&gt;
  
  The list of objects to bind. May contain nulls.
