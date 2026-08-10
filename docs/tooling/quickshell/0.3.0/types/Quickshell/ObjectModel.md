---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/ObjectModel/
title: Quickshell - ObjectModel
words: 252
---
* * *

ObjectModel: ObjectModel

uncreatable

import Quickshell

Typed view into a list of objects.

An ObjectModel works as a QML Data Model, allowing efficient interaction with components that act on models. It has a single role named modelData, to match the behavior of lists. The same information contained in the list model is available as a normal list via the values property.

Differences from a list

Unlike with a list, the following property binding will never be updated when model[3] changes.

```
// will not update reactively
property var foo: model[3]
```

You can work around this limitation using the Go to values property of the model to view it as a list.

```
// will update reactively
property var foo: model.values[3]
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- values :  list &lt;QtObject&gt;
  
  readonly
  
  The content of the object model, as a QML list. The values of this property will always be of the type of the model.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- indexOf () :  int
  
  No details provided

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- objectInsertedPre (object, index)  [](/docs/configuration/qml-overview#-signals)
  
  Property object: QtObject Property index: int
  
  Sent immediately before an object is inserted into the list.
- objectRemovedPre (object, index)  [](/docs/configuration/qml-overview#-signals)
  
  Property object: QtObject Property index: int
  
  Sent immediately before an object is removed from the list.
- objectInsertedPost (object, index)  [](/docs/configuration/qml-overview#-signals)
  
  Property object: QtObject Property index: int
  
  Sent immediately after an object is inserted into the list.
- objectRemovedPost (object, index)  [](/docs/configuration/qml-overview#-signals)
  
  Property object: QtObject Property index: int
  
  Sent immediately after an object is removed from the list.
