---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/Scope/
title: Quickshell - Scope
words: 71
---
* * *

Scope: Reloadable

import Quickshell

Convenience type equivalent to setting Go to Reloadable.reloadableId for all children.

Note that this does not work for visible Items (all widgets).

```
ShellRoot {
  Variants {
    variants: ...

    Scope {
      // everything in here behaves the same as if it was defined
      // directly in `Variants` reload-wise.
    }
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- children :  list &lt;QtObject&gt;
  
  default readonly
  
  No details provided
