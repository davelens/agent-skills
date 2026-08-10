---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell/Quickshell/
title: Quickshell - Quickshell
words: 978
---
* * *

Quickshell: QtObject

singleton

import Quickshell

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- workingDirectory :  string
  
  Quickshell’s working directory. Defaults to whereever quickshell was launched from.
- stateDir :  string
  
  readonly
  
  The per-shell state directory.
  
  Usually ~/.local/state/quickshell/by-shell/<shell-id>
  
  Can be overridden using //@ pragma StateDir $BASE/path in the root qml file, where $BASE corresponds to $XDGSTATEHOME (usually ~/.local/state).
- dataDir :  string
  
  readonly
  
  The per-shell data directory.
  
  Usually ~/.local/share/quickshell/by-shell/<shell-id>
  
  Can be overridden using //@ pragma DataDir $BASE/path in the root qml file, where $BASE corresponds to $XDGDATAHOME (usually ~/.local/share).
- watchFiles :  bool
  
  If true then the configuration will be reloaded whenever any files change. Defaults to true.
- clipboardText :  string
  
  The system clipboard.
  
  WARNING
  
  Under wayland the clipboard will be empty unless a quickshell window is focused.
- processId :  int
  
  readonly
  
  Quickshell’s process id.
- configDir :  string
  
  readonly
  
  WARNING
  
  Deprecated: Renamed to Go to shellDir for clarity.
- screens :  list &lt;ShellScreen&gt;
  
  readonly
  
  All currently connected screens.
  
  This property updates as connected screens change.
  
  #### Reusing a window on every screen
  
  ```
  ShellRoot {
    Variants {
      // see Variants for details
      variants: Quickshell.screens
      PanelWindow {
        property var modelData
        screen: modelData
      }
    }
  }
  ```
  
  This creates an instance of your window once on every screen. As screens are added or removed your window will be created or destroyed on those screens.
- shellDir :  string
  
  readonly
  
  The full path to the root directory of your shell.
  
  The root directory is the folder containing the entrypoint to your shell, often referred to as shell.qml.
- cacheDir :  string
  
  readonly
  
  The per-shell cache directory.
  
  Usually ~/.cache/quickshell/by-shell/<shell-id>
  
  Can be overridden using //@ pragma CacheDir $BASE/path in the root qml file, where $BASE corresponds to $XDGCACHEHOME (usually ~/.cache).
- shellRoot :  string
  
  readonly
  
  WARNING
  
  Deprecated: Renamed to Go to shellDir for consistency.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- cachePath (path) :  string
  
  Property path: string
  
  Equivalent to ${Quickshell.cacheDir}/${path}
- configPath (path) :  string
  
  Property path: string
  
  WARNING
  
  Deprecated: Renamed to shellPath() for clarity.
- dataPath (path) :  string
  
  Property path: string
  
  Equivalent to ${Quickshell.dataDir}/${path}
- env (variable) :  variant
  
  Property variable: string
  
  Returns the string value of an environment variable or null if it is not set.
- execDetached (context) :  void
  
  Property context: [](#unknown)
  
  Launch a process detached from Quickshell.
  
  The context parameter can either be a list of command arguments or a JS object with the following fields:
  
  - command: A list containing the command and all its arguments. See Go to Process.command.
  - environment: Changes to make to the process environment. See Go to Process.environment.
  - clearEnvironment: Removes all variables from the environment if true.
  - workingDirectory: The working directory the command should run in.
  
  WARNING
  
  This does not run command in a shell. All arguments to the command must be in separate values in the list, e.g. ["echo", "hello"] and not ["echo hello"].
  
  Additionally, shell scripts must be run by your shell, e.g. ["sh", "script.sh"] instead of ["script.sh"] unless the script has a shebang.
  
  NOTE
  
  You can use ["sh", "-c", <your command>] to execute your command with the system shell.
  
  This function is equivalent to Process.startDetached().
- hasQtVersion (major, minor) :  bool
  
  Property major: int Property minor: int
  
  Check if Qt’s version is at least major.minor.
  
  NOTE
  
  You can version gate code blocks using Quickshell’s preprocessor which has the same function available.
  
  ```
  //@ if hasVersion(6, 10)
  ...
  //@ endif
  ```
- hasThemeIcon (icon) :  bool
  
  Property icon: string
  
  Check if specified icon has an available icon in your icon theme
- hasVersion (major, minor, features) :  bool
  
  Property major: int Property minor: int Property features: [](#unknown)
  
  Check if Quickshell’s version is at least major.minor and the listed unreleased features are available. If Quickshell is newer than the given version it is assumed that all unreleased features are present. The unreleased feature list may be omitted.
  
  NOTE
  
  You can version gate code blocks using Quickshell’s preprocessor which has the same function available.
  
  ```
  //@ if hasVersion(0, 3, ["feature"])
  ...
  //@ endif
  ```
- hasVersion (major, minor) :  bool
  
  Property major: int Property minor: int
  
  No details provided
- iconPath (icon) :  string
  
  Property icon: string
  
  Returns a string usable for a Go to Image.source for a given system icon.
  
  NOTE
  
  By default, icons are loaded from the theme selected by the qt platform theme, which means they should match with all other qt applications on your system.
  
  If you want to use a different icon theme, you can put //@ pragma IconTheme <name> at the top of your root config file or set the QSICONTHEME variable to the name of your icon theme.
- iconPath (icon, check) :  string
  
  Property icon: string Property check: bool
  
  Setting the check parameter of iconPath to true will return an empty string if the icon does not exist, instead of an image showing a missing texture.
- iconPath (icon, fallback) :  string
  
  Property icon: string Property fallback: string
  
  Setting the fallback parameter of iconPath will attempt to load the fallback icon if the requested one could not be loaded.
- inhibitReloadPopup () :  void
  
  When called from reloadCompleted() or reloadFailed(), prevents the default reload popup from displaying.
  
  The popup can also be blocked by setting QSNORELOAD_POPUP=1.
- reload (hard) :  void
  
  Property hard: bool
  
  Reload the shell.
  
  hard - perform a hard reload. If this is false, Quickshell will attempt to reuse windows that already exist. If true windows will be recreated.
  
  See Reloadable for more information on what can be reloaded and how.
- shellPath (path) :  string
  
  Property path: string
  
  Equivalent to ${Quickshell.configDir}/${path}
- statePath (path) :  string
  
  Property path: string
  
  Equivalent to ${Quickshell.stateDir}/${path}

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- lastWindowClosed ()  [](/docs/configuration/qml-overview#-signals)
  
  Sent when the last window is closed.
  
  To make the application exit when the last window is closed run Qt.quit().
- reloadCompleted ()  [](/docs/configuration/qml-overview#-signals)
  
  The reload sequence has completed successfully.
- reloadFailed (errorString)  [](/docs/configuration/qml-overview#-signals)
  
  Property errorString: string
  
  The reload sequence has failed.
