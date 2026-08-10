---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Widgets/WrapperManager/
title: Quickshell.Widgets - WrapperManager
words: 434
---
* * *

WrapperManager: QtObject

import Quickshell.Widgets

WrapperManager determines which child of an Item should be its visual child, and exposes it for further operations. See MarginWrapperManager for a subclass that implements automatic sizing and margins.

Using wrapper types

WrapperManager based types have a single visual child item. You can specify the child item using the default property, or by setting the Go to child property. You must use the Go to child property if the widget has more than one Item based child.

Example using the default property

```
WrapperWidget { // a widget that uses WrapperManager
  // Putting the item inline uses the default property of WrapperWidget.
  Text { text: "Hello" }

  // Scope does not extend Item, so it can be placed in the
  // default property without issue.
  Scope {}
}
```

Example using the child property

```
WrapperWidget {
  Text {
    id: text
    text: "Hello"
  }

  Text {
    id: otherText
    text: "Other Text"
  }

  // Both text and otherText extend Item, so one must be specified.
  child: text
}
```

See Go to child for more details on how the child property can be used.

Implementing wrapper types

In addition to the bundled wrapper types, you can make your own using WrapperManager. To implement a wrapper, create a WrapperManager inside your wrapper component ‘s default property, then alias a new property to the WrapperManager’s Go to child property.

Example

```
Item { // your wrapper component
  WrapperManager { id: wrapperManager }

  // Allows consumers of your wrapper component to use the child property.
  property alias child: wrapperManager.child

  // The rest of your component logic. You can use
  // `wrapperManager.child` or `this.child` to refer to the selected child.
}
```

See also

- WrapperItem - A MarginWrapperManager based component that sizes itself to its child.
- WrapperRectangle - A MarginWrapperManager based component that sizes itself to its child, and provides an option to use its border as an inset.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- wrapper :  Item
  
  The wrapper managed by this manager. Defaults to the manager’s parent. This property may not be changed after Component.onCompleted.
- child :  Item
  
  The wrapper component’s selected child.
  
  Setting this property override’s WrapperManager’s default selection, and resolve ambiguity when more than one visual child is present. The property can additionally be defined inline or reference a component that is not already a child of the wrapper, in which case it will be reparented to the wrapper. Setting child to null will select no child, and undefined will restore the default child.
  
  When read, child will always return the (potentially null) selected child, and not undefined.
