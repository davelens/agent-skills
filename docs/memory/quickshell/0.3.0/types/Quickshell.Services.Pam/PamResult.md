---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pam/PamResult/
title: Quickshell.Services.Pam - PamResult
words: 59
---
* * *

PamResult: QtObject

enum

import Quickshell.Services.Pam

See Go to PamContext.completed().

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- toString (value) :  string
  
  Property value: PamResult
  
  No details provided

Variants

- Failed
  
  Authentication failed.
- Success
  
  Authentication was successful.
- MaxTries
  
  The authentication method ran out of tries and should not be used again.
- Error
  
  An error occurred while trying to authenticate.
