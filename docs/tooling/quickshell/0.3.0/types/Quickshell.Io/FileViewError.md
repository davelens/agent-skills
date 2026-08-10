---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/FileViewError/
title: Quickshell.Io - FileViewError
words: 83
---
* * *

FileViewError: QtObject

enum

import Quickshell.Io

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- toString (value) :  string
  
  Property value: FileViewError
  
  No details provided

Variants

- FileNotFound
  
  The file to read does not exist.
- Success
  
  No error occurred.
- PermissionDenied
  
  Permission to read/write the file was not granted, or permission to create parent directories was not granted when writing the file.
- Unknown
  
  An unknown error occurred. Check the logs for details.
- NotAFile
  
  The specified path to read/write exists and was not a file.
