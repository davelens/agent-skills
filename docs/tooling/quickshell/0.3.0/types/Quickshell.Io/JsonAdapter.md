---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/JsonAdapter/
title: Quickshell.Io - JsonAdapter
words: 249
---
* * *

JsonAdapter: FileViewAdapter

import Quickshell.Io

JsonAdapter is a FileView adapter that exposes a JSON file as a set of QML properties that can be read and written to.

Each property defined in a JsonAdapter corresponds to a key in the JSON file. Supported property types are:

- Primitves (int, bool, string, real)
- Sub-object adapters (JsonObject)
- JSON objects and arrays, as a var type
- Lists of any of the above (list<string> etc)

When the FileView’s data is loaded, properties of a JsonAdapter or sub-object adapter (JsonObject) are updated if their values have changed.

When properties of a JsonAdapter or sub-object adapter are changed from QML, Go to FileView.adapterUpdated() is emitted, which may be used to save the file’s new state (see FileView.writeAdapter()).

Example

```
FileView {
  path: "/path/to/file"

  // when changes are made on disk, reload the file's content
  watchChanges: true
  onFileChanged: reload()

  // when changes are made to properties in the adapter, save them
  onAdapterUpdated: writeAdapter()

  JsonAdapter {
    property string myStringProperty: "default value"
    onMyStringPropertyChanged: {
      console.log("myStringProperty was changed via qml or on disk")
    }

    property list<string> stringList: [ "default", "value" ]

    property JsonObject subObject: JsonObject {
      property string subObjectProperty: "default value"
      onSubObjectPropertyChanged: console.log("same as above")
    }

    // works the same way as subObject
    property var inlineJson: { "a": "b" }
  }
}
```

The above snippet produces the JSON document below:

```
{
   "myStringProperty": "default value",
   "stringList": [
     "default",
     "value"
   ],
   "subObject": {
     "subObjectProperty": "default value"
   },
   "inlineJson": {
     "a": "b"
   }
}
```
