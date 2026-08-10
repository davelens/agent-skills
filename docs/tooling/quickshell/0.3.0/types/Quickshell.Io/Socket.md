---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/Socket/
title: Quickshell.Io - Socket
words: 155
---
* * *

Socket: DataStream

import Quickshell.Io

Unix socket listener.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- path :  string
  
  The path to connect this socket to when Go to connected is set to true.
  
  Changing this property will have no effect while the connection is active.
- connected :  bool
  
  Returns if the socket is currently connected.
  
  Writing to this property will set the target connection state and will not update the property immediately. Setting the property to false will begin disconnecting the socket, and setting it to true will begin connecting the socket if path is not empty.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- flush () :  void
  
  Flush any queued writes to the socket.
- write (data) :  void
  
  Property data: string
  
  Write data to the socket. Does nothing if not connected.
  
  Remember to call flush after your last write.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- error (error)  [](/docs/configuration/qml-overview#-signals)
  
  Property error: [](#unknown)
  
  This signal is sent whenever a socket error is encountered.
