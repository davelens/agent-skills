---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.WindowManager/ScreenProjection/
title: Quickshell.WindowManager - ScreenProjection
words: 55
---
* * *

ScreenProjection: WindowsetProjection

uncreatable

import Quickshell.WindowManager

A ScreenProjection is a special type of WindowsetProjection which aggregates all windowsets across all projections covering a specific screen.

When used with Windowset.setProjection(), an arbitrary projection on the screen will be picked. Usually there is only one.

Use WindowManager.screenProjection() to get a ScreenProjection for a given screen.
