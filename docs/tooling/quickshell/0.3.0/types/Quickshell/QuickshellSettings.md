---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/QuickshellSettings/
title: Quickshell - QuickshellSettings
words: 77
---
* * *

QuickshellSettings: QtObject

uncreatable

import Quickshell

Accessor for some options under the Quickshell type.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- workingDirectory :  string
  
  Quickshell’s working directory. Defaults to whereever quickshell was launched from.
- watchFiles :  bool
  
  If true then the configuration will be reloaded whenever any files change. Defaults to true.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- lastWindowClosed ()  [](/docs/configuration/qml-overview#-signals)
  
  Sent when the last window is closed.
  
  To make the application exit when the last window is closed run Qt.quit().
