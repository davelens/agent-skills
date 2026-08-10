---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/Reloadable/
title: Quickshell - Reloadable
words: 199
---
* * *

Reloadable: QtObject

uncreatable

import Quickshell

Reloadables will attempt to take specific state from previous config revisions if possible. Some examples are ProxyWindowBase and PersistentProperties

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- reloadableId :  string
  
  An additional identifier that can be used to try to match a reloadable object to its previous state.
  
  Simply keeping a stable identifier across config versions (saves) is enough to help the reloader figure out which object in the old revision corresponds to this object in the current revision, and facilitate smoother reloading.
  
  Note that identifiers are scoped, and will try to do the right thing in context. For example if you have a Variants wrapping an object with an identified element inside, a scope is created at the variant level.
  
  ```
  Variants {
    // multiple variants of the same object tree
    variants: [ { foo: 1 }, { foo: 2 } ]
  
    // any non `Reloadable` object
    QtObject {
      FloatingWindow {
        // this FloatingWindow will now be matched to the same one in the previous
        // widget tree for its variant. "myFloatingWindow" refers to both the variant in
        // `foo: 1` and `foo: 2` for each tree.
        reloadableId: "myFloatingWindow"
  
        // ...
      }
    }
  }
  ```
