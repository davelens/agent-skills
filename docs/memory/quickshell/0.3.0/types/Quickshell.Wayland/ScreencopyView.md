---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Wayland/ScreencopyView/
title: Quickshell.Wayland - ScreencopyView
words: 246
---
* * *

ScreencopyView: Item

import Quickshell.Wayland

ScreencopyView displays live video streams or single captured frames from valid capture sources. See Go to captureSource for details on which objects are accepted.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- captureSource :  QtObject
  
  The object to capture from. Accepts any of the following:
  
  - null - Clears the displayed image.
  - ShellScreen - A monitor. Requires a compositor that supports wlr-screencopy-unstable or both ext-image-copy-capture-v1 and ext-capture-source-v1.
  - Toplevel - A toplevel window. Requires a compositor that supports hyprland-toplevel-export-v1.
- constraintSize :  unknown
  
  If nonzero, the width and height constraints set for this property will constrain those dimensions of the ScreencopyView’s implicit size, maintaining the image’s aspect ratio.
- paintCursor :  bool
  
  If true, the system cursor will be painted on the image. Defaults to false.
- hasContent :  bool
  
  readonly
  
  If true, the view has content ready to display. Content is not always immediately available, and this property can be used to avoid displaying it until ready.
- live :  bool
  
  If true, a live video feed from the capture source will be displayed instead of a still image. Defaults to false.
- sourceSize :  size
  
  readonly
  
  The size of the source image. Valid when Go to hasContent is true.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- captureFrame () :  void
  
  Capture a single frame. Has no effect if Go to live is true.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- stopped ()  [](/docs/configuration/qml-overview#-signals)
  
  The compositor has ended the video stream. Attempting to restart it may or may not work.
