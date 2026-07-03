---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Hyprland/HyprlandEvent/
title: Quickshell.Hyprland - HyprlandEvent
words: 109
---
* * *

HyprlandEvent: QtObject

uncreatable

import Quickshell.Hyprland

Live Hyprland IPC event. Holding this object after the signal handler exits is undefined as the event instance is reused.

Emitted by Go to Hyprland.rawEvent().

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- name :  string
  
  readonly
  
  The name of the event.
  
  See Hyprland Wiki: IPC for a list of events.
- data :  string
  
  readonly
  
  The unparsed data of the event.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- parse (argumentCount) :  list
  
  Property argumentCount: int
  
  Parse this event with a known number of arguments.
  
  Argument count is required as some events can contain commas in the last argument, which can be ignored as long as the count is known.
