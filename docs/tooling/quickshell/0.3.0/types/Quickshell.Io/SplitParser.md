---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/SplitParser/
title: Quickshell.Io - SplitParser
words: 60
---
* * *

SplitParser: DataStreamParser

import Quickshell.Io

DataStreamParser for delimited data streams. Go to DataStreamParser.read() is emitted once per delimited chunk of the stream.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- splitMarker :  string
  
  The delimiter for parsed data. May be multiple characters. Defaults to \n.
  
  If the delimiter is empty read lengths may be arbitrary (whatever is returned by the underlying read call.)
