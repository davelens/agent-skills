---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/EasingCurve/
title: Quickshell - EasingCurve
words: 131
---
* * *

EasingCurve: QtObject

import Quickshell

Directly accessible easing curve as used in property animations.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- curve :  EasingCurve
  
  Easing curve settings. Works exactly the same as PropertyAnimation.easing.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- interpolate (x, a, b) :  real
  
  Property x: real Property a: real Property b: real
  
  Interpolates between two values using the given X coordinate.
- interpolate (x, a, b) :  point
  
  Property x: real Property a: point Property b: point
  
  Interpolates between two points using the given X coordinate.
- interpolate (x, a, b) :  rect
  
  Property x: real Property a: rect Property b: rect
  
  Interpolates two rects using the given X coordinate.
- valueAt (x) :  real
  
  Property x: real
  
  Returns the Y value for the given X value on the curve from 0.0 to 1.0.
