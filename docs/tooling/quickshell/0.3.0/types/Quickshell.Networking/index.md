---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Networking/
title: Quickshell.Networking Module Types
words: 130
---
* * *

Quickshell.Networking Definitions

Network API

ConnectionFailReason

The reason a connection failed.

ConnectionState

The connection state of a device or network.

DeviceType

Type of a NetworkDevice.

NMSettings

A NetworkManager connection settings profile.

Network

A network.

NetworkBackendType

The backend supplying the Network service.

NetworkConnectivity

The degree to which the host can reach the internet.

NetworkDevice

A network device.

Networking

The Network service.

WifiDevice

WiFi variant of a NetworkDevice.

WifiDeviceMode

The 802.11 mode of a WifiDevice.

WifiNetwork

WiFi subtype of Network.

WifiSecurityType

The security type of a WifiNetwork.

WiredDevice

Wired variant of a NetworkDevice.

This module exposes Network management APIs provided by a supported network backend. For now, the only backend available is the NetworkManager DBus interface. Both DBus and NetworkManager must be running to use it.

See the Networking singleton.
