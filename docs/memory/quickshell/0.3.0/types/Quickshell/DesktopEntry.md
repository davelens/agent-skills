---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/DesktopEntry/
title: Quickshell - DesktopEntry
words: 309
---
* * *

DesktopEntry: QtObject

uncreatable

import Quickshell

A desktop entry. See DesktopEntries for details.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- execString :  string
  
  The raw Exec string from the desktop entry.
  
  WARNING
  
  This cannot be reliably run as a command. See Go to command for one you can run.
- genericName :  string
  
  Short description of the application, such as “Web Browser”. May be empty.
- comment :  string
  
  Long description of the application, such as “View websites on the internet”. May be empty.
- keywords :  list &lt;string&gt;
  
  No details provided
- id :  string
  
  readonly
  
  No details provided
- noDisplay :  bool
  
  If true, this application should not be displayed in menus and launchers.
- startupClass :  string
  
  Initial class or app id the app intends to use. May be useful for matching running apps to desktop entries.
- name :  string
  
  No details provided
- icon :  string
  
  Name of the icon associated with this application. May be empty.
- workingDirectory :  string
  
  The working directory to execute from.
- runInTerminal :  bool
  
  If the application should run in a terminal.
- categories :  list &lt;string&gt;
  
  No details provided
- command :  list &lt;string&gt;
  
  The parsed Exec command in the desktop entry.
  
  The entry can be run with execute(), or by using this command in Quickshell.execDetached() or Process. If used in execDetached or a Process, Go to workingDirectory should also be passed to the invoked process. See execute() for details.
  
  NOTE
  
  The provided command does not invoke a terminal even if Go to runInTerminal is true.
- actions :  list &lt;DesktopAction&gt;
  
  readonly
  
  No details provided

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- execute () :  void
  
  Run the application. Currently ignores Go to runInTerminal and field codes.
  
  This is equivalent to calling Quickshell.execDetached() with Go to command and Go to DesktopEntry.workingDirectory as shown below:
  
  ```
  Quickshell.execDetached({
    command: desktopEntry.command,
    workingDirectory: desktopEntry.workingDirectory,
  });
  ```
