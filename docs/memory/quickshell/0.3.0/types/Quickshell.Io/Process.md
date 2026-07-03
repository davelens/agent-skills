---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Io/Process/
title: Quickshell.Io - Process
words: 985
---
* * *

Process: QtObject

import Quickshell.Io

Example

```
Process {
  running: true
  command: [ "some-command", "arg" ]
  stdout: StdioCollector {
    onStreamFinished: console.log(`line read: ${this.text}`)
  }
}
```

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- stdout :  DataStreamParser
  
  The parser for stdout. If the parser is null the process’s stdout channel will be closed and no further data will be read, even if a new parser is attached.
- workingDirectory :  string
  
  The working directory of the process. Defaults to quickshell’s working directory.
  
  If the process is already running changing this property will affect the next started process. If the property has been changed after starting a process it will return the new value, not the one for the currently running process.
- clearEnvironment :  bool
  
  If the process’s environment should be cleared prior to applying Go to environment. Defaults to false.
  
  If true, all environment variables will be removed before the Go to environment object is applied, meaning the variables listed will be the only ones visible to the process. This changes the behavior of null to pass in the system value of the variable if present instead of removing it.
  
  ```
  clearEnvironment: true
  environment: ({
    ADDED: "value",
    PASSED_FROM_SYSTEM: null,
  })
  ```
  
  If the process is already running changing this property will affect the next started process. If the property has been changed after starting a process it will return the new value, not the one for the currently running process.
- stdinEnabled :  bool
  
  If stdin is enabled. Defaults to false. If this property is false the process’s stdin channel will be closed and write() will do nothing, even if set back to true.
- command :  list &lt;string&gt;
  
  The command to execute. Each argument is its own string, which means you don’t have to deal with quoting anything.
  
  If the process is already running changing this property will affect the next started process. If the property has been changed after starting a process it will return the new value, not the one for the currently running process.
  
  WARNING
  
  This does not run command in a shell. All arguments to the command must be in separate values in the list, e.g. ["echo", "hello"] and not ["echo hello"].
  
  Additionally, shell scripts must be run by your shell, e.g. ["sh", "script.sh"] instead of ["script.sh"] unless the script has a shebang.
  
  NOTE
  
  You can use ["sh", "-c", <your command>] to execute your command with the system shell.
- environment :  unknown
  
  Environment of the executed process.
  
  This is a javascript object (json). Environment variables can be added by setting them to a string and removed by setting them to null (except when Go to clearEnvironment is true, in which case this behavior is inverted, see Go to clearEnvironment for details).
  
  ```
  environment: ({
    ADDED: "value",
    REMOVED: null,
    "i'm different": "value",
  })
  ```
  
  NOTE
  
  You need to wrap the returned object in () otherwise it won’t parse due to javascript ambiguity.
  
  If the process is already running changing this property will affect the next started process. If the property has been changed after starting a process it will return the new value, not the one for the currently running process.
- processId :  variant
  
  readonly
  
  The process ID of the running process or null if Go to running is false.
- stderr :  DataStreamParser
  
  The parser for stderr. If the parser is null the process’s stdout channel will be closed and no further data will be read, even if a new parser is attached.
- running :  bool
  
  If the process is currently running. Defaults to false.
  
  Setting this property to true will start the process if command has at least one element. Setting it to false will send SIGTERM. To immediately kill the process, use signal() with SIGKILL. The process will be killed when quickshell dies.
  
  If you want to run the process in a loop, use the onRunningChanged signal handler to restart the process.
  
  ```
  Process {
    running: true
    onRunningChanged: if (!running) running = true
  }
  ```
  
  NOTE
  
  See startDetached() to prevent the process from being killed by Quickshell if Quickshell is killed or the configuration is reloaded.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- exec (context) :  void
  
  Property context: [](#unknown)
  
  Launch a process with the given arguments, stopping any currently running process.
  
  The context parameter can either be a list of command arguments or a JS object with the following fields:
  
  - command: A list containing the command and all its arguments. See Go to Process.command.
  - environment: Changes to make to the process environment. See Go to Process.environment.
  - clearEnvironment: Removes all variables from the environment if true.
  - workingDirectory: The working directory the command should run in.
  
  Passed parameters will change the values currently set in the process.
  
  WARNING
  
  This does not run command in a shell. All arguments to the command must be in separate values in the list, e.g. ["echo", "hello"] and not ["echo hello"].
  
  Additionally, shell scripts must be run by your shell, e.g. ["sh", "script.sh"] instead of ["script.sh"] unless the script has a shebang.
  
  NOTE
  
  You can use ["sh", "-c", <your command>] to execute your command with the system shell.
  
  Calling this function is equivalent to running:
  
  ```
  process.running = false;
  process.command = ...
  process.environment = ...
  process.clearEnvironment = ...
  process.workingDirectory = ...
  process.running = true;
  ```
- signal (signal) :  void
  
  Property signal: int
  
  Sends a signal to the process if Go to running is true, otherwise does nothing.
- startDetached () :  void
  
  Launches an instance of the process detached from Quickshell.
  
  The subprocess will not be tracked, Go to running will be false, and the subprocess will not be killed by Quickshell.
  
  This function is equivalent to Quickshell.execDetached().
- write (data) :  void
  
  Property data: string
  
  Writes to the process’s stdin. Does nothing if Go to running is false.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- started ()  [](/docs/configuration/qml-overview#-signals)
  
  No details provided
- exited (exitCode, exitStatus)  [](/docs/configuration/qml-overview#-signals)
  
  Property exitCode: int Property exitStatus: [](#unknown)
  
  No details provided
