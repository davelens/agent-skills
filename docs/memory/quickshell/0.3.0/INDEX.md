# Quickshell v0.3.0 — Agent Navigation Index

Offline mirror of the official Quickshell docs (`quickshell.org/docs`). Quickshell is a QtQuick/QML toolkit for building desktop shells (bars, widgets, lockscreens, launchers) on Wayland and X11. Each type page holds the full property/function/signal reference with types, defaults, and examples. Read a single file per lookup. Do not guess property or signal names — verify against the file.

**Mirror root:** `docs/memory/quickshell/0.3.0/` · **Source:** `quickshell.org/docs/v0.3.0` · 148 types in 18 modules

## Guides

| Guide | File |
|-------|------|
| Advanced Options — Pragmas | [`guide/advanced.md`](guide/advanced.md) |
| Distributing Configurations — If you plan to distribute your configuration to a lot of users, you should keep a couple things in mind: | [`guide/distribution.md`](guide/distribution.md) |
| FAQ — This page is being actively expanded upon as more common questions come up. | [`guide/faq.md`](guide/faq.md) |
| Installation & Setup — Quickshell is still in a somewhat early stage of development. There will be breaking changes before 1.0, however a migration guide will be provided. | [`guide/install-setup.md`](guide/install-setup.md) |
| Introduction — This page will walk you through the process of creating a simple bar/panel, and introduce you to all the basic concepts involved. You can use the QML Language Reference to learn about the syntax of the QML language. | [`guide/introduction.md`](guide/introduction.md) |
| QML Language — Quickshell is configured using the Qt Modeling Language, or QML. This page explains what you need to know about QML to start using Quickshell. | [`guide/qml-language.md`](guide/qml-language.md) |
| Item Size and Position — Read the entire page, as understanding this is critical to building a well designed shell. | [`guide/size-position.md`](guide/size-position.md) |

## Types by module

### Quickshell — Core Quickshell types

`import Quickshell` · [`types/Quickshell/index.md`](types/Quickshell/index.md)

- [`BoundComponent`](types/Quickshell/BoundComponent.md) — Component loader that allows setting initial properties.
- [`ColorQuantizer`](types/Quickshell/ColorQuantizer.md) — Color Quantization Utility
- [`DesktopAction`](types/Quickshell/DesktopAction.md)
- [`DesktopEntries`](types/Quickshell/DesktopEntries.md) — Desktop entry index.
- [`DesktopEntry`](types/Quickshell/DesktopEntry.md)
- [`EasingCurve`](types/Quickshell/EasingCurve.md) — Easing curve.
- [`Edges`](types/Quickshell/Edges.md) — Top Left Right Bottom flags.
- [`ElapsedTimer`](types/Quickshell/ElapsedTimer.md) — Measures time between events
- [`ExclusionMode`](types/Quickshell/ExclusionMode.md) — Panel exclusion mode
- [`FloatingWindow`](types/Quickshell/FloatingWindow.md) — Standard toplevel operating system window that looks like any other application.
- [`Intersection`](types/Quickshell/Intersection.md) — Intersection strategy for Regions.
- [`LazyLoader`](types/Quickshell/LazyLoader.md) — Asynchronous component loader.
- [`ObjectModel`](types/Quickshell/ObjectModel.md) — View into a list of objets
- [`PanelWindow`](types/Quickshell/PanelWindow.md) — Decorationless window attached to screen edges by anchors.
- [`PersistentProperties`](types/Quickshell/PersistentProperties.md) — Object that holds properties that can persist across a config reload.
- [`PopupAdjustment`](types/Quickshell/PopupAdjustment.md) — Adjustment strategy for popups that do not fit on screen.
- [`PopupAnchor`](types/Quickshell/PopupAnchor.md) — Anchorpoint or positioner for popup windows.
- [`PopupWindow`](types/Quickshell/PopupWindow.md) — Popup window.
- [`QsMenuAnchor`](types/Quickshell/QsMenuAnchor.md) — Display anchor for platform menus.
- [`QsMenuButtonType`](types/Quickshell/QsMenuButtonType.md) — Button type associated with a QsMenuEntry.
- [`QsMenuEntry`](types/Quickshell/QsMenuEntry.md)
- [`QsMenuHandle`](types/Quickshell/QsMenuHandle.md) — Menu handle for QsMenuOpener
- [`QsMenuOpener`](types/Quickshell/QsMenuOpener.md) — Provides access to children of a QsMenuEntry
- [`QsWindow`](types/Quickshell/QsWindow.md) — Base class of Quickshell windows
- [`Quickshell`](types/Quickshell/Quickshell.md)
- [`QuickshellSettings`](types/Quickshell/QuickshellSettings.md) — Accessor for some options under the Quickshell type.
- [`Region`](types/Quickshell/Region.md) — A composable region used as a mask.
- [`RegionShape`](types/Quickshell/RegionShape.md) — Shape of a Region.
- [`Reloadable`](types/Quickshell/Reloadable.md) — The base class of all types that can be reloaded.
- [`Retainable`](types/Quickshell/Retainable.md) — Attached object for types that can have delayed destruction.
- [`RetainableLock`](types/Quickshell/RetainableLock.md) — A helper for easily using Retainable.
- [`Scope`](types/Quickshell/Scope.md) — Scope that propagates reloads to child items in order.
- [`ScriptModel`](types/Quickshell/ScriptModel.md) — QML model reflecting a javascript expression
- [`ShellRoot`](types/Quickshell/ShellRoot.md) — Optional root config element, allowing some settings to be specified inline.
- [`ShellScreen`](types/Quickshell/ShellScreen.md)
- [`Singleton`](types/Quickshell/Singleton.md) — The root component for reloadable singletons.
- [`SystemClock`](types/Quickshell/SystemClock.md) — System clock accessor.
- [`TransformWatcher`](types/Quickshell/TransformWatcher.md) — Monitor of all geometry changes between two objects.
- [`Variants`](types/Quickshell/Variants.md) — Creates instances of a component based on a given model.

### Quickshell.Bluetooth — Bluetooth API

`import Quickshell.Bluetooth` · [`types/Quickshell.Bluetooth/index.md`](types/Quickshell.Bluetooth/index.md)

- [`Bluetooth`](types/Quickshell.Bluetooth/Bluetooth.md) — Bluetooth manager
- [`BluetoothAdapter`](types/Quickshell.Bluetooth/BluetoothAdapter.md) — A Bluetooth adapter
- [`BluetoothAdapterState`](types/Quickshell.Bluetooth/BluetoothAdapterState.md) — Power state of a Bluetooth adapter.
- [`BluetoothDevice`](types/Quickshell.Bluetooth/BluetoothDevice.md) — A tracked Bluetooth device.
- [`BluetoothDeviceState`](types/Quickshell.Bluetooth/BluetoothDeviceState.md) — Connection state of a Bluetooth device.

### Quickshell.DBusMenu — Types related to DBusMenu (used in system tray)

`import Quickshell.DBusMenu` · [`types/Quickshell.DBusMenu/index.md`](types/Quickshell.DBusMenu/index.md)

- [`DBusMenuHandle`](types/Quickshell.DBusMenu/DBusMenuHandle.md) — Handle to a DBusMenu tree.
- [`DBusMenuItem`](types/Quickshell.DBusMenu/DBusMenuItem.md) — Menu item shared by an external program.

### Quickshell.Hyprland — Hyprland specific Quickshell types

`import Quickshell.Hyprland` · [`types/Quickshell.Hyprland/index.md`](types/Quickshell.Hyprland/index.md)

- [`GlobalShortcut`](types/Quickshell.Hyprland/GlobalShortcut.md) — Hyprland global shortcut.
- [`Hyprland`](types/Quickshell.Hyprland/Hyprland.md)
- [`HyprlandEvent`](types/Quickshell.Hyprland/HyprlandEvent.md) — Live Hyprland IPC event.
- [`HyprlandFocusGrab`](types/Quickshell.Hyprland/HyprlandFocusGrab.md) — Input focus grabber
- [`HyprlandMonitor`](types/Quickshell.Hyprland/HyprlandMonitor.md)
- [`HyprlandToplevel`](types/Quickshell.Hyprland/HyprlandToplevel.md)
- [`HyprlandWindow`](types/Quickshell.Hyprland/HyprlandWindow.md) — Hyprland specific QsWindow properties.
- [`HyprlandWorkspace`](types/Quickshell.Hyprland/HyprlandWorkspace.md)

### Quickshell.I3 — I3 specific Quickshell types

`import Quickshell.I3` · [`types/Quickshell.I3/index.md`](types/Quickshell.I3/index.md)

- [`I3`](types/Quickshell.I3/I3.md) — I3/Sway IPC integration
- [`I3Event`](types/Quickshell.I3/I3Event.md) — I3/Sway IPC Events
- [`I3IpcListener`](types/Quickshell.I3/I3IpcListener.md) — I3/Sway IPC event listener
- [`I3Monitor`](types/Quickshell.I3/I3Monitor.md) — I3/Sway monitors
- [`I3Workspace`](types/Quickshell.I3/I3Workspace.md) — I3/Sway workspaces

### Quickshell.Io — Io types

`import Quickshell.Io` · [`types/Quickshell.Io/index.md`](types/Quickshell.Io/index.md)

- [`DataStream`](types/Quickshell.Io/DataStream.md) — Data source that can be streamed into a parser.
- [`DataStreamParser`](types/Quickshell.Io/DataStreamParser.md) — Parser for streamed input data.
- [`FileView`](types/Quickshell.Io/FileView.md) — Simple accessor for small files.
- [`FileViewAdapter`](types/Quickshell.Io/FileViewAdapter.md)
- [`FileViewError`](types/Quickshell.Io/FileViewError.md)
- [`IpcHandler`](types/Quickshell.Io/IpcHandler.md) — Handler for IPC message calls.
- [`JsonAdapter`](types/Quickshell.Io/JsonAdapter.md) — FileView adapter for accessing JSON files.
- [`JsonObject`](types/Quickshell.Io/JsonObject.md)
- [`Process`](types/Quickshell.Io/Process.md) — Child process.
- [`Socket`](types/Quickshell.Io/Socket.md) — Unix socket listener.
- [`SocketServer`](types/Quickshell.Io/SocketServer.md) — Unix socket server.
- [`SplitParser`](types/Quickshell.Io/SplitParser.md) — DataStreamParser for delimited data streams.
- [`StdioCollector`](types/Quickshell.Io/StdioCollector.md) — DataStreamParser that collects all output into a buffer

### Quickshell.Networking — Network API

`import Quickshell.Networking` · [`types/Quickshell.Networking/index.md`](types/Quickshell.Networking/index.md)

- [`ConnectionFailReason`](types/Quickshell.Networking/ConnectionFailReason.md) — The reason a connection failed.
- [`ConnectionState`](types/Quickshell.Networking/ConnectionState.md) — The connection state of a device or network.
- [`DeviceType`](types/Quickshell.Networking/DeviceType.md) — Type of a NetworkDevice.
- [`NMSettings`](types/Quickshell.Networking/NMSettings.md) — A NetworkManager connection settings profile.
- [`Network`](types/Quickshell.Networking/Network.md) — A network.
- [`NetworkBackendType`](types/Quickshell.Networking/NetworkBackendType.md) — The backend supplying the Network service.
- [`NetworkConnectivity`](types/Quickshell.Networking/NetworkConnectivity.md) — The degree to which the host can reach the internet.
- [`NetworkDevice`](types/Quickshell.Networking/NetworkDevice.md) — A network device.
- [`Networking`](types/Quickshell.Networking/Networking.md) — The Network service.
- [`WifiDevice`](types/Quickshell.Networking/WifiDevice.md) — WiFi variant of a NetworkDevice.
- [`WifiDeviceMode`](types/Quickshell.Networking/WifiDeviceMode.md) — The 802.11 mode of a WifiDevice.
- [`WifiNetwork`](types/Quickshell.Networking/WifiNetwork.md) — WiFi subtype of Network.
- [`WifiSecurityType`](types/Quickshell.Networking/WifiSecurityType.md) — The security type of a WifiNetwork.
- [`WiredDevice`](types/Quickshell.Networking/WiredDevice.md) — Wired variant of a NetworkDevice.

### Quickshell.Services.Greetd — Greetd integration

`import Quickshell.Services.Greetd` · [`types/Quickshell.Services.Greetd/index.md`](types/Quickshell.Services.Greetd/index.md)

- [`Greetd`](types/Quickshell.Services.Greetd/Greetd.md)
- [`GreetdState`](types/Quickshell.Services.Greetd/GreetdState.md) — State of the Greetd connection.

### Quickshell.Services.Mpris — Mpris Service

`import Quickshell.Services.Mpris` · [`types/Quickshell.Services.Mpris/index.md`](types/Quickshell.Services.Mpris/index.md)

- [`Mpris`](types/Quickshell.Services.Mpris/Mpris.md)
- [`MprisLoopState`](types/Quickshell.Services.Mpris/MprisLoopState.md) — Loop state of an MprisPlayer
- [`MprisPlaybackState`](types/Quickshell.Services.Mpris/MprisPlaybackState.md) — Playback state of an MprisPlayer
- [`MprisPlayer`](types/Quickshell.Services.Mpris/MprisPlayer.md) — A media player exposed over MPRIS.

### Quickshell.Services.Notifications — Types for implementing a notification daemon

`import Quickshell.Services.Notifications` · [`types/Quickshell.Services.Notifications/index.md`](types/Quickshell.Services.Notifications/index.md)

- [`Notification`](types/Quickshell.Services.Notifications/Notification.md) — A notification emitted by a NotificationServer.
- [`NotificationAction`](types/Quickshell.Services.Notifications/NotificationAction.md) — An action associated with a Notification.
- [`NotificationCloseReason`](types/Quickshell.Services.Notifications/NotificationCloseReason.md) — The reason a Notification was closed.
- [`NotificationServer`](types/Quickshell.Services.Notifications/NotificationServer.md) — Desktop Notifications Server.
- [`NotificationUrgency`](types/Quickshell.Services.Notifications/NotificationUrgency.md) — The urgency level of a Notification.

### Quickshell.Services.Pam — Pam authentication

`import Quickshell.Services.Pam` · [`types/Quickshell.Services.Pam/index.md`](types/Quickshell.Services.Pam/index.md)

- [`PamContext`](types/Quickshell.Services.Pam/PamContext.md) — Connection to pam.
- [`PamError`](types/Quickshell.Services.Pam/PamError.md) — An error that occurred during an authentication.
- [`PamResult`](types/Quickshell.Services.Pam/PamResult.md) — The result of an authentication.

### Quickshell.Services.Pipewire — Pipewire API

`import Quickshell.Services.Pipewire` · [`types/Quickshell.Services.Pipewire/index.md`](types/Quickshell.Services.Pipewire/index.md)

- [`Pipewire`](types/Quickshell.Services.Pipewire/Pipewire.md) — Contains links to all pipewire objects.
- [`PwAudioChannel`](types/Quickshell.Services.Pipewire/PwAudioChannel.md) — Audio channel of a pipewire node.
- [`PwLink`](types/Quickshell.Services.Pipewire/PwLink.md) — A connection between pipewire nodes.
- [`PwLinkGroup`](types/Quickshell.Services.Pipewire/PwLinkGroup.md) — A group of connections between pipewire nodes.
- [`PwLinkState`](types/Quickshell.Services.Pipewire/PwLinkState.md) — State of a pipewire link.
- [`PwNode`](types/Quickshell.Services.Pipewire/PwNode.md) — A node in the pipewire connection graph.
- [`PwNodeAudio`](types/Quickshell.Services.Pipewire/PwNodeAudio.md) — Audio specific properties of pipewire nodes.
- [`PwNodeLinkTracker`](types/Quickshell.Services.Pipewire/PwNodeLinkTracker.md) — Tracks non-monitor link connections to a given node.
- [`PwNodePeakMonitor`](types/Quickshell.Services.Pipewire/PwNodePeakMonitor.md) — Monitors peak levels of an audio node.
- [`PwNodeType`](types/Quickshell.Services.Pipewire/PwNodeType.md) — The type of a pipewire node.
- [`PwObjectTracker`](types/Quickshell.Services.Pipewire/PwObjectTracker.md) — Binds pipewire objects.

### Quickshell.Services.Polkit — Polkit Agent

`import Quickshell.Services.Polkit` · [`types/Quickshell.Services.Polkit/index.md`](types/Quickshell.Services.Polkit/index.md)

- [`AuthFlow`](types/Quickshell.Services.Polkit/AuthFlow.md)
- [`PolkitAgent`](types/Quickshell.Services.Polkit/PolkitAgent.md) — Purpose of a Polkit Agent

### Quickshell.Services.SystemTray — Types for implementing a system tray

`import Quickshell.Services.SystemTray` · [`types/Quickshell.Services.SystemTray/index.md`](types/Quickshell.Services.SystemTray/index.md)

- [`Category`](types/Quickshell.Services.SystemTray/Category.md) — Category of a StatusNotifierItem.
- [`Status`](types/Quickshell.Services.SystemTray/Status.md) — Status of a StatusNotifierItem.
- [`SystemTray`](types/Quickshell.Services.SystemTray/SystemTray.md) — System tray
- [`SystemTrayItem`](types/Quickshell.Services.SystemTray/SystemTrayItem.md) — An item in the system tray.

### Quickshell.Services.UPower — UPower Service

`import Quickshell.Services.UPower` · [`types/Quickshell.Services.UPower/index.md`](types/Quickshell.Services.UPower/index.md)

- [`PerformanceDegradationReason`](types/Quickshell.Services.UPower/PerformanceDegradationReason.md) — Reason for performance degradation exposed by the PowerProfiles service.
- [`PowerProfile`](types/Quickshell.Services.UPower/PowerProfile.md) — Power profile exposed by the PowerProfiles service.
- [`PowerProfiles`](types/Quickshell.Services.UPower/PowerProfiles.md) — Provides access to the Power Profiles service.
- [`UPower`](types/Quickshell.Services.UPower/UPower.md) — Provides access to the UPower service.
- [`UPowerDevice`](types/Quickshell.Services.UPower/UPowerDevice.md) — A device exposed through the UPower system service.
- [`UPowerDeviceState`](types/Quickshell.Services.UPower/UPowerDeviceState.md) — Power state of a UPower device.
- [`UPowerDeviceType`](types/Quickshell.Services.UPower/UPowerDeviceType.md) — Type of a UPower device.

### Quickshell.Wayland — Wayland specific Quickshell types

`import Quickshell.Wayland` · [`types/Quickshell.Wayland/index.md`](types/Quickshell.Wayland/index.md)

- [`BackgroundEffect`](types/Quickshell.Wayland/BackgroundEffect.md) — Background blur effect for Wayland surfaces.
- [`IdleInhibitor`](types/Quickshell.Wayland/IdleInhibitor.md) — Prevents a wayland session from idling
- [`IdleMonitor`](types/Quickshell.Wayland/IdleMonitor.md) — Provides a notification when a wayland session is makred idle
- [`ScreencopyView`](types/Quickshell.Wayland/ScreencopyView.md) — Displays a video stream from other windows or a monitor.
- [`ShortcutInhibitor`](types/Quickshell.Wayland/ShortcutInhibitor.md) — Prevents compositor keyboard shortcuts from being triggered
- [`Toplevel`](types/Quickshell.Wayland/Toplevel.md) — Window from another application.
- [`ToplevelManager`](types/Quickshell.Wayland/ToplevelManager.md) — Exposes a list of Toplevels.
- [`WlSessionLock`](types/Quickshell.Wayland/WlSessionLock.md) — Wayland session locker.
- [`WlSessionLockSurface`](types/Quickshell.Wayland/WlSessionLockSurface.md) — Surface to display with a WlSessionLock.
- [`WlrKeyboardFocus`](types/Quickshell.Wayland/WlrKeyboardFocus.md) — WlrLayershell keyboard focus mode
- [`WlrLayer`](types/Quickshell.Wayland/WlrLayer.md) — WlrLayershell layer.
- [`WlrLayershell`](types/Quickshell.Wayland/WlrLayershell.md) — Wlroots layershell window

### Quickshell.Widgets — Bundled widgets

`import Quickshell.Widgets` · [`types/Quickshell.Widgets/index.md`](types/Quickshell.Widgets/index.md)

- [`ClippingRectangle`](types/Quickshell.Widgets/ClippingRectangle.md) — Rectangle capable of clipping content inside its border.
- [`ClippingWrapperRectangle`](types/Quickshell.Widgets/ClippingWrapperRectangle.md) — ClippingRectangle that handles sizes and positioning for a single visual child.
- [`IconImage`](types/Quickshell.Widgets/IconImage.md) — Image component for displaying widget/icon style images.
- [`MarginWrapperManager`](types/Quickshell.Widgets/MarginWrapperManager.md) — Helper object for applying sizes and margins to a single child item.
- [`WrapperItem`](types/Quickshell.Widgets/WrapperItem.md) — Item that handles sizes and positioning for a single visual child.
- [`WrapperManager`](types/Quickshell.Widgets/WrapperManager.md) — Helper object for creating components with a single visual child.
- [`WrapperMouseArea`](types/Quickshell.Widgets/WrapperMouseArea.md) — MouseArea wrapper item.
- [`WrapperRectangle`](types/Quickshell.Widgets/WrapperRectangle.md) — Rectangle that handles sizes and positioning for a single visual child.

### Quickshell.WindowManager — Window manager interface

`import Quickshell.WindowManager` · [`types/Quickshell.WindowManager/index.md`](types/Quickshell.WindowManager/index.md)

- [`ScreenProjection`](types/Quickshell.WindowManager/ScreenProjection.md) — WindowsetProjection covering one specific screen.
- [`WindowManager`](types/Quickshell.WindowManager/WindowManager.md) — Window management interfaces exposed by the window manager.
- [`Windowset`](types/Quickshell.WindowManager/Windowset.md) — A group of windows worked with by a user, usually known as a Workspace or Tag.
- [`WindowsetProjection`](types/Quickshell.WindowManager/WindowsetProjection.md) — A space occupiable by a Windowset.
