---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/FileView/
title: Quickshell.Io - FileView
words: 1178
---
* * *

FileView: QtObject

import Quickshell.Io

A reader for small to medium files that don’t need seeking/cursor access, suitable for most text files.

Example: Reading a JSON as text

```
FileView {
  id: jsonFile
  path: Qt.resolvedUrl("./your.json")
  // Forces the file to be loaded by the time we call JSON.parse().
  // see blockLoading's property documentation for details.
  blockLoading: true
}

readonly property var jsonData: JSON.parse(jsonFile.text())
```

Also see JsonAdapter for an alternative way to handle reading and writing JSON files.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- path :  string
  
  The path to the file that should be read, or an empty string to unload the file.
- adapter :  FileViewAdapter
  
  default
  
  In addition to directly reading/writing the file as text, adapters can be used to expose a file’s content in new ways.
  
  An adapter will automatically be given the loaded file’s content. Its state may be saved with writeAdapter().
  
  Currently the only adapter is JsonAdapter.
- blockAllReads :  bool
  
  If text() and data() should block all operations while a file loads. Defaults to false.
  
  This is nearly identical to Go to blockLoading, but will additionally block when a file is loaded and Go to path changes.
  
  WARNING
  
  We cannot think of a valid use case for this. You almost definitely want Go to blockLoading.
- blockWrites :  bool
  
  If true (default false), all calls to setText() or setData() will block the UI thread until the write succeeds or fails.
  
  WARNING
  
  Blocking operations should be used carefully to avoid stutters and other performance degradations. Blocking means that your interface WILL NOT FUNCTION during the call.
- printErrors :  bool
  
  If true (default), read or write errors will be printed to the quickshell logs. If false, all known errors will not be printed.
- loaded :  bool
  
  readonly
  
  If a file is currently loaded, which may or may not be the one currently specified by Go to path.
  
  NOTE
  
  If a file is loaded, Go to path is changed, and a new file is loaded, this property will stay true the whole time. If Go to path is set to an empty string to unload the file it will become false.
- blockLoading :  bool
  
  If text() and data() should block all operations until the file is loaded. Defaults to false.
  
  If the file is already loaded, no blocking will occur. If a file was loaded, and Go to path was changed to a new file, no blocking will occur.
  
  WARNING
  
  Blocking operations should be used carefully to avoid stutters and other performance degradations. Blocking means that your interface WILL NOT FUNCTION during the call.
  
  We recommend you use a blocking load ONLY for files loaded before the windows of your shell are loaded, which happens after Component.onCompleted runs for the root component of your shell.
  
  The most reasonable use case would be to load things like configuration files that the program must have available.
- preload :  bool
  
  If the file should be loaded in the background immediately when set. Defaults to true.
  
  This may either increase or decrease the amount of time it takes to load the file depending on how large the file is, how fast its storage is, and how you access its data.
- watchChanges :  bool
  
  If true (defaule false), fileChanged() will be called whenever the content of the file changes on disk, including when setText() or setData() are used.
  
  NOTE
  
  You can reload the file’s content whenever it changes on disk like so:
  
  ```
  FileView {
    // ...
    watchChanges: true
    onFileChanged: this.reload()
  }
  ```
- atomicWrites :  bool
  
  If true (default), all calls to setText() or setData() will be performed atomically, meaning if the write fails for any reason, the file will not be modified.
  
  NOTE
  
  This works by creating another file with the desired content, and renaming it over the existing file if successful.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- data () :  unknown
  
  Returns the data of the file specified by Go to path as an ArrayBuffer.
  
  If Go to blockAllReads is true, all changes to Go to path will cause the program to block when this function is called.
  
  If Go to blockLoading is true, reading this property before the file has been loaded will block, but changing Go to path or calling reload() will return the old data until the load completes.
  
  If neither is true, an empty buffer will be returned if no file is loaded, otherwise it will behave as in the case above.
  
  NOTE
  
  Due to technical limitations, data() could not be a property, however you can treat it like a property, it will trigger property updates as a property would, and the signal dataChanged() is present.
- reload () :  void
  
  Unload the loaded file and reload it, usually in response to changes.
  
  This will not block if Go to blockLoading is set, only if Go to blockAllReads is true. It acts the same as changing Go to path to a new file, except loading the same file.
- setData (data) :  void
  
  Property data: [](#unknown)
  
  Sets the content of the file specified by Go to path as an \[ArrayBuffer].
  
  Go to atomicWrites and Go to blockWrites affect the behavior of this function.
  
  Go to saved() or Go to saveFailed() will be emitted on completion.
- setText (text) :  void
  
  Property text: string
  
  Sets the content of the file specified by Go to path as text.
  
  Go to atomicWrites and Go to blockWrites affect the behavior of this function.
  
  Go to saved() or Go to saveFailed() will be emitted on completion.
- text () :  string
  
  Returns the data of the file specified by Go to path as text.
  
  If Go to blockAllReads is true, all changes to Go to path will cause the program to block when this function is called.
  
  If Go to blockLoading is true, reading this property before the file has been loaded will block, but changing Go to path or calling reload() will return the old data until the load completes.
  
  If neither is true, an empty string will be returned if no file is loaded, otherwise it will behave as in the case above.
  
  NOTE
  
  Due to technical limitations, text() could not be a property, however you can treat it like a property, it will trigger property updates as a property would, and the signal textChanged() is present.
- waitForJob () :  bool
  
  Block all operations until the currently running load completes.
  
  WARNING
  
  See Go to blockLoading for an explanation and warning about blocking.
- writeAdapter () :  void
  
  Write the content of the current Go to adapter to the selected file.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- loadFailed (error)  [](/docs/configuration/qml-overview#-signals)
  
  Property error: FileViewError
  
  Emitted if the file failed to load.
- adapterUpdated ()  [](/docs/configuration/qml-overview#-signals)
  
  Emitted when the active Go to adapter’s data is changed.
- saveFailed (error)  [](/docs/configuration/qml-overview#-signals)
  
  Property error: FileViewError
  
  Emitted if the file failed to save.
- saved ()  [](/docs/configuration/qml-overview#-signals)
  
  Emitted if the file was saved successfully.
- fileChanged ()  [](/docs/configuration/qml-overview#-signals)
  
  Emitted if the file changes on disk and Go to watchChanges is true.
- loaded ()  [](/docs/configuration/qml-overview#-signals)
  
  Emitted if the file was loaded successfully.
