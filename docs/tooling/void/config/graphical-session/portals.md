---
url: https://docs.voidlinux.org/config/graphical-session/portals.html
title: XDG Desktop Portals - The Void Linux Handbook
words: 146
---
XDG Desktop Portals

Some applications, including Flatpak, use XDG Desktop Portals to provide access to various system interfaces, including file open and save dialogs, the clipboard, screencasting, opening URLs, and more.

Installation

XDG Desktop Portals require a user D-Bus session bus. Install xdg-desktop-portal and one or more backends:

BackendNotes xdg-desktop-portal-gnomeProvides most common and GNOME-specific interfaces (GTK+ UI) xdg-desktop-portal-gtkProvides most common interfaces (GTK+ UI) xdg-desktop-portal-kdeProvides most common and KDE-specific interfaces (Qt/KF5 UI) xdg-desktop-portal-lxqtOnly provides a file chooser (based on libfm-qt) io.elementary.filesOnly provides a file chooser xdg-desktop-portal-wlrOnly provides a screenshot and screencasting interface for wlroots compositors

If unsure what to choose, xdg-desktop-portal-gtk is a good default choice.

Configuration

In most cases, the default configuration, located at /usr/share/xdg-desktop-portal/portals.conf, should suffice. If necessary, this configuration can be overridden for specific desktop environments and portal interfaces by creating $XDGCURRENTDESKTOP-portals.conf or portals.conf at the system or user level as described in portals.conf(5).
