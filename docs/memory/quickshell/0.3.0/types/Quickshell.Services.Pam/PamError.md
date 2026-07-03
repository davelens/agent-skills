---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pam/PamError/
title: Quickshell.Services.Pam - PamError
words: 63
---
* * *

PamError: QtObject

enum

import Quickshell.Services.Pam

See Go to PamContext.error().

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- toString (value) :  string
  
  Property value: PamError
  
  No details provided

Variants

- InternalError
  
  An error occurred inside quickshell’s pam interface.
- TryAuthFailed
  
  Failed to try to authenticate the user. This is not the same as the user failing to authenticate.
- StartFailed
  
  Failed to start the pam session.
