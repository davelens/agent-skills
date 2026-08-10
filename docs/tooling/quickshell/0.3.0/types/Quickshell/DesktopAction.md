---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/DesktopAction/
title: Quickshell - DesktopAction
words: 160
---
* * *

DesktopAction: QtObject

uncreatable

import Quickshell

An action of a DesktopEntry.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- id :  string
  
  readonly
  
  No details provided
- execString :  string
  
  The raw Exec string from the action.
  
  WARNING
  
  This cannot be reliably run as a command. See Go to command for one you can run.
- name :  string
  
  No details provided
- icon :  string
  
  No details provided
- command :  list &lt;string&gt;
  
  The parsed Exec command in the action.
  
  The entry can be run with execute(), or by using this command in Quickshell.execDetached() or Process. If used in execDetached or a Process, Go to DesktopEntry.workingDirectory should also be passed to the invoked process.
  
  NOTE
  
  The provided command does not invoke a terminal even if Go to runInTerminal is true.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- execute () :  void
  
  Run the application. Currently ignores Go to DesktopEntry.runInTerminal and field codes.
  
  This is equivalent to calling Quickshell.execDetached() with Go to command and Go to DesktopEntry.workingDirectory.
