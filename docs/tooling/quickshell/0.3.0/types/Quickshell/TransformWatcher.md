---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/TransformWatcher/
title: Quickshell - TransformWatcher
words: 173
---
* * *

TransformWatcher: QtObject

import Quickshell

The TransformWatcher monitors all properties that affect the geometry of two Items relative to eachother.

NOTE

The algorithm responsible for determining the relationship between a and b is biased towards a being a parent of b, or a being closer to the common parent of a and b than b.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- transform :  QtObject
  
  readonly
  
  This property is updated whenever the geometry of any item in the path from a to b changes.
  
  Its value is undefined, and is intended to trigger an expression update.
- b :  Item
  
  No details provided
- commonParent :  Item
  
  Known common parent of both a and b. Defaults to null.
  
  This property can be used to optimize the algorithm that figures out the relationship between a and b. Setting it to something that is not a common parent of both a and b will prevent the path from being determined correctly, and setting it to null will disable the optimization.
- a :  Item
  
  No details provided
