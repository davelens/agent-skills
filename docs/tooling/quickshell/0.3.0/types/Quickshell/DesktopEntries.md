---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/DesktopEntries/
title: Quickshell - DesktopEntries
words: 154
---
* * *

DesktopEntries: QtObject

singleton

import Quickshell

Index of desktop entries according to the desktop entry specification.

Primarily useful for looking up icons and metadata from an id, as there is currently no mechanism for usage based sorting of entries and other launcher niceties.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- applications :  ObjectModel &lt;DesktopEntry&gt;
  
  readonly
  
  All desktop entries of type Application that are not Hidden or NoDisplay.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- byId (id) :  DesktopEntry
  
  Property id: string
  
  Look up a desktop entry by name. Includes NoDisplay entries. May return null.
  
  While this function requires an exact match, heuristicLookup() will correctly find an entry more often and is generally more useful.
- heuristicLookup (name) :  DesktopEntry
  
  Property name: string
  
  Look up a desktop entry by name using heuristics. Unlike byId(), if no exact matches are found this function will try to guess - potentially incorrectly. May return null.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- applicationsChanged ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
