---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/SocketServer/
title: Quickshell.Io - SocketServer
words: 165
---
* * *

SocketServer: Reloadable

import Quickshell.Io

Example

```
SocketServer {
  active: true
  path: "/path/too/socket.sock"
  handler: Socket {
    onConnectedChanged: {
      console.log(connected ? "new connection!" : "connection dropped!")
    }
    parser: SplitParser {
      onRead: message => console.log(`read message from socket: ${message}`)
    }
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- path :  string
  
  The path to create the socket server at.
  
  Setting this property while the server is active will have no effect.
- handler :  Component
  
  Connection handler component. Must create a Socket.
  
  The created socket should not set Go to connected or Go to path or the incoming socket connection will be dropped (they will be set by the socket server.) Setting connected to false on the created socket after connection will close and delete it.
- active :  bool
  
  If the socket server is currently active. Defaults to false.
  
  Setting this to false will destroy all active connections and delete the socket file on disk.
  
  If path is empty setting this property will have no effect.
