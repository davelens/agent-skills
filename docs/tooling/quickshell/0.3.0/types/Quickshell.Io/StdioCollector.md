---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/StdioCollector/
title: Quickshell.Io - StdioCollector
words: 110
---
* * *

StdioCollector: DataStreamParser

import Quickshell.Io

StdioCollector collects all process output into a buffer exposed as Go to text or Go to data.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- text :  string
  
  readonly
  
  The stdio buffer exposed as text. if Go to waitForEnd is true, this will not change until the stream ends.
- data :  unknown
  
  readonly
  
  The stdio buffer exposed as an ArrayBuffer. if Go to waitForEnd is true, this will not change until the stream ends.
- waitForEnd :  bool
  
  If true, Go to text and Go to data will not be updated until the stream ends. Defaults to true.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- streamFinished ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
