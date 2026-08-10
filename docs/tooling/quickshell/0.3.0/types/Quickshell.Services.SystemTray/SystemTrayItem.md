---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.SystemTray/SystemTrayItem/
title: Quickshell.Services.SystemTray - SystemTrayItem
words: 255
---
* * *

SystemTrayItem: QtObject

uncreatable

import Quickshell.Services.SystemTray

A system tray item, roughly conforming to the kde/freedesktop spec (there is no real spec, we just implemented whatever seemed to actually be used).

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- status :  Status
  
  readonly
  
  No details provided
- category :  Category
  
  readonly
  
  No details provided
- id :  string
  
  readonly
  
  A name unique to the application, such as its name.
- menu :  unknown
  
  readonly
  
  A handle to the menu associated with this tray item, if any.
  
  Can be displayed with QsMenuAnchor or QsMenuOpener.
- hasMenu :  bool
  
  readonly
  
  If this tray item has an associated menu accessible via display() or Go to menu.
- onlyMenu :  bool
  
  readonly
  
  If this tray item only offers a menu and activation will do nothing.
- icon :  string
  
  readonly
  
  Icon source string, usable as an Image source.
- tooltipDescription :  string
  
  readonly
  
  No details provided
- title :  string
  
  readonly
  
  Text that describes the application.
- tooltipTitle :  string
  
  readonly
  
  No details provided

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- activate () :  void
  
  Primary activation action, generally triggered via a left click.
- display (parentWindow, relativeX, relativeY) :  void
  
  Property parentWindow: QtObject Property relativeX: int Property relativeY: int
  
  Display a platform menu at the given location relative to the parent window.
- scroll (delta, horizontal) :  void
  
  Property delta: int Property horizontal: bool
  
  Scroll action, such as changing volume on a mixer.
- secondaryActivate () :  void
  
  Secondary activation action, generally triggered via a middle click.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- ready ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
