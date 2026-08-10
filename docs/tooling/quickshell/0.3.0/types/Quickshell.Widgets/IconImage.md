---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Widgets/IconImage/
title: Quickshell.Widgets - IconImage
words: 286
---
* * *

IconImage: Item

import Quickshell.Widgets

This is a specialization of Image configured for icon-style images, designed to make it easier to use correctly. If you need more control, use Image directly.

The image’s aspect raito is assumed to be 1:1. If it is not 1:1, padding will be added to make it 1:1. This is currently applied before the actual aspect ratio of the image is taken into account, and may change in a future release.

You should use it for:

- Icons for custom buttons
- Status indicator icons
- System tray icons
- Things similar to the above.

Do not use it for:

- Big images
- Images that change size frequently
- Anything that doesn’t feel like an icon.

NOTE

More information about many of these properties can be found in the documentation for Image.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- source :  string
  
  URL of the image. Defaults to an empty string. See Go to Image.source.
- mipmap :  bool
  
  If the image should be mipmap filtered. Defaults to false. See Go to Image.mipmap.
  
  Try enabling this if your image is significantly scaled down and looks bad because of it.
- asynchronous :  bool
  
  If the image should be loaded asynchronously. Defaults to false. See Go to Image.asynchronous.
- status :  unknown
  
  The load status of the image. See Go to Image.status.
- backer :  Image
  
  The Image backing this object.
  
  This is useful if you need to access more functionality than exposed by IconImage.
- actualSize :  real
  
  readonly
  
  The actual size the image will be displayed at.
- implicitSize :  real
  
  The suggested size of the image. This is used as a default for Go to Item.implicitWidth and Go to Item.implicitHeight.
