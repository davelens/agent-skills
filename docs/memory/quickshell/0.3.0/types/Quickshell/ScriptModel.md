---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/ScriptModel/
title: Quickshell - ScriptModel
words: 352
---
* * *

ScriptModel: ScriptModel

import Quickshell

ScriptModel is a QML Data Model that generates model operations based on changes to a javascript expression attached to Go to values.

When should I use this

ScriptModel should be used when you would otherwise use a javascript expression as a model, QAbstractItemModel is accepted, and the data is likely to change over the lifetime of the program.

When directly using a javascript expression as a model, types like Repeater or ListView will destroy all created delegates, and re-create the entire list. In the case of ListView this will also prevent animations from working. If you wrap your expression with ScriptModel, only new items will be created, and ListView animations will work as expected.

Example

```
// Will cause all delegates to be re-created every time filterText changes.
Repeater {
  model: myList.filter(entry => entry.name.startsWith(filterText))
  delegate: // ...
}

// Will add and remove delegates only when required.
Repeater {
  model: ScriptModel {
    values: myList.filter(entry => entry.name.startsWith(filterText))
  }

  delegate: // ...
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- objectProp :  string
  
  The property that javascript objects passed into the model will be compared with.
  
  For example, if objectProp is "myprop" then { myprop: "a", other: "y" } and { myprop: "a", other: "z" } will be considered equal.
  
  Defaults to "", meaning no key.
- values :  unknown
  
  The list of values to reflect in the model.
  
  WARNING
  
  ScriptModel currently only works with lists of unique values. There must not be any duplicates in the given list, or behavior of the model is undefined.
  
  TIP
  
  ObjectModels supplied by Quickshell types will only contain unique values, and can be used like so:
  
  ```
  ScriptModel {
    values: DesktopEntries.applications.values.filter(...)
  }
  ```
  
  Note that we are using Go to ObjectModel.values because it will cause Go to ScriptModel.values to receive an update on change.
  
  TIP
  
  Most lists exposed by Quickshell are read-only. Some operations like sort() act on a list in-place and cannot be used directly on a list exposed by Quickshell. You can copy a list using spread syntax: [...variable] instead of variable.
  
  For example:
  
  ```
  ScriptModel {
    values: [...DesktopEntries.applications.values].sort(...)
  }
  ```
