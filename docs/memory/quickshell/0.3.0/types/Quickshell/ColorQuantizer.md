---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/ColorQuantizer/
title: Quickshell - ColorQuantizer
words: 193
---
* * *

ColorQuantizer: QtObject

import Quickshell

A color quantization utility used for getting prevalent colors in an image, by averaging out the image’s color data recursively.

Example

```
ColorQuantizer {
  id: colorQuantizer
  source: Qt.resolvedUrl("./yourImage.png")
  depth: 3 // Will produce 8 colors (2³)
  rescaleSize: 64 // Rescale to 64x64 for faster processing
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- rescaleSize :  real
  
  The size to rescale the image to, when rescaleSize is 0 then no scaling will be done.
  
  NOTE
  
  Results from color quantization doesn’t suffer much when rescaling, it’s recommended to rescale, otherwise the quantization process will take much longer.
- depth :  real
  
  Max depth for the color quantization. Each level of depth represents another binary split of the color space
- colors :  list &lt;color&gt;
  
  readonly
  
  Access the colors resulting from the color quantization performed.
  
  NOTE
  
  The amount of colors returned from the quantization is determined by the property depth, specifically 2ⁿ where n is the depth.
- source :  unknown
  
  Path to the image you’d like to run the color quantization on.
- imageRect :  rect
  
  Rectangle that the source image is cropped to.
  
  Can be set to undefined to reset.
