---
url: https://docs.voidlinux.org/config/graphical-session/wayland.html
title: Wayland - The Void Linux Handbook
words: 480
---
Wayland

This section details the manual installation and configuration of Wayland compositors and related services and utilities.

Installation

Unlike Xorg, Wayland implementations combine the display server, the window manager and the compositor in a single application.

Desktop Environments

GNOME, KDE Plasma and Enlightenment have Wayland sessions. GNOME uses its Wayland session by default. When using these desktop environments, applications built with GTK+ will automatically choose the Wayland backend, while Qt5 and EFL applications might require setting some environment variables if used outside KDE or Enlightenment, respectively.

Standalone compositors

Void Linux currently packages the following Wayland compositors:

- Weston: reference compositor for Wayland
- Sway: an i3-compatible Wayland compositor
- Wayfire: 3D Wayland compositor
- Hikari: a stacking compositor with some tiling features
- Cage: a Wayland kiosk
- River: a dynamic tiling Wayland compositor
- Niri: a scrolling-tiling Wayland compositor
- labwc: a window-stacking compositor, inspired by Openbox
- Qtile: a dynamic tiling Wayland compositor (via qtile-wayland)

Some compositors do not depend on any fonts, which can cause many applications to not work. Install a font package to fix this.

Video drivers

Both GNOME and KDE Plasma have EGLStreams backends for Wayland, which means they can use the proprietary NVIDIA drivers. Most other Wayland compositors require drivers that implement the GBM interface. The main driver for this purpose is provided by the mesa-dri package. The "Graphics Drivers" section has more details regarding setting up graphics in different systems.

Seat management

Wayland compositors require some way of controlling the video display and accessing input devices. In Void systems, this requires a seat manager service, which can be either elogind or seatd. Enabling them is explained in the "Session and Seat Management" session.

Native applications

Qt5- and Qt6-based applications require installing the qt5-wayland or qt6-wayland package and setting the environment variable QTQPAPLATFORM=wayland to enable their Wayland backend. Some KDE specific applications also require installing the kwayland package. EFL-based applications require setting the environment variable ELMDISPLAY=wl, and can have issues without it, due to not supporting XWayland properly. SDL-based applications require setting the environment variable SDLVIDEODRIVER=wayland. GTK+-based applications should use the Wayland backend automatically.

Media applications, such as mpv(1), vlc(1) and imv work natively on Wayland.

Web browsers

Mozilla Firefox and Google Chromium support Wayland by default. Browsers based on GTK+ or Qt (e.g. qutebrowser(1)) should work on Wayland natively, given their toolkit is configured properly.

Running X applications inside Wayland

If an application doesn't support Wayland, it can still be used in a Wayland context. XWayland is an X server that bridges this gap for most Wayland compositors, and is installed as a dependency for most of them. Its package is xorg-server-xwayland.

Configuration

The Wayland library requires the XDGRUNTIMEDIR environment variable to determine the directory for the Wayland socket.

It is also possible that some applications use the XDGSESSIONTYPE environment variable in some way, which requires that you set it to wayland.
