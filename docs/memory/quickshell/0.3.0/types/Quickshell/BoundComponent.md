---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/BoundComponent/
title: Quickshell - BoundComponent
words: 198
---
* * *

BoundComponent: Item

import Quickshell

Component loader that allows setting initial properties, primarily useful for escaping cyclic dependency errors.

Properties defined on the BoundComponent will be applied to its loaded component, including required properties, and will remain reactive. Functions created with the names of signal handlers will also be attached to signals of the loaded component.

```
MouseArea {
  required property color color;
  width: 100
  height: 100

  Rectangle {
    anchors.fill: parent
    color: parent.color
  }
}
```

```
BoundComponent {
  source: "MyComponent.qml"

  // this is the same as assigning to `color` on MyComponent if loaded normally.
  property color color: "red";

  // this will be triggered when the `clicked` signal from the MouseArea is sent.
  function onClicked() {
    color = "blue";
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- item :  QtObject
  
  readonly
  
  The loaded component. Will be null until it has finished loading.
- bindValues :  bool
  
  If property values should be bound after they are initially set. Defaults to true.
- source :  string
  
  The source to load, as a Url.
- implicitHeight :  real
  
  readonly
  
  No details provided
- sourceComponent :  Component
  
  The source to load, as a Component.
- implicitWidth :  real
  
  readonly
  
  No details provided
