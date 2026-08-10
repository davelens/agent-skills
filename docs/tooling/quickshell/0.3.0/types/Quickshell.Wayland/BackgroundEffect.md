---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/BackgroundEffect/
title: Quickshell.Wayland - BackgroundEffect
words: 71
---
* * *

BackgroundEffect: QtObject

uncreatable

import Quickshell.Wayland

Applies background blur behind a QsWindow or subclass, as an attached object, using the ext-background-effect-v1 Wayland protocol.

NOTE

Using a background effect requires the compositor support the ext-background-effect-v1 protocol.

Example

```
PanelWindow {
  id: root
  color: "#80000000"

  BackgroundEffect.blurRegion: Region { item: root.contentItem }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- blurRegion :  Region
  
  Region to blur behind the surface. Set to null to remove blur.
