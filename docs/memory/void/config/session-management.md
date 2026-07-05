---
url: https://docs.voidlinux.org/config/session-management.html
title: Session and Seat Management - The Void Linux Handbook
words: 545
---
Session and Seat Management

Session and seat management is not necessary for every setup, but it can be used to safely create temporary runtime directories, provide access to hardware devices and multi-seat capabilities, and control system shutdown.

D-Bus

D-Bus is an IPC (inter-process communication) mechanism used by userspace software in Linux. D-Bus can provide a system bus and/or a session bus, the latter being specific to a user session.

- To provide a system bus, you should enable the dbus service. This might require a system reboot to work properly.
- To provide a session bus, you can start a given program (usually a window manager or interactive shell) with dbus-run-session(1). Most desktop environments, if launched through an adequate display manager, will launch a D-Bus session themselves. If a D-Bus session is active for the current session, the environment variable DBUSSESSIONBUS_ADDRESS should be defined.

Note that some software assumes the presence of a system bus, while other software assumes the presence of a session bus.

When using a session bus, it might be necessary to export display environment variables, such as DISPLAY (for X or XWayland) and WAYLAND_DISPLAY (for Wayland) to the D-Bus activation environment. This is used, for example, by programs that expect to be able to launch a prompt for user interaction. dbus-update-activation-environment(1) can be used to export variables from your environment.

elogind

elogind(8) manages user logins and system power, as a standalone version of systemd-logind. elogind provides necessary features for most desktop environments and Wayland compositors. It can also be one of the mechanisms for rootless Xorg.

Please read the "Power Management" section for things to consider before installing elogind.

To make use of its features, install the elogind package and make sure the system D-Bus is enabled. You might need to log out and in again.

If you're having any issues with elogind, enable its service, as waiting for a D-Bus activation can lead to issues.

turnstile

turnstile is an alternative session manager, and can be used with or without elogind.

If using turnstile with elogind, disable rundir (XDGRUNTIMEDIR) management in /etc/turnstile/turnstiled.conf by setting manage_rundir to no. Note that while elogind and turnstile currently can coexist, this may change in the future.

If using turnstile without elogind, consider installing and enabling seatd for seat management and acpid for power management.

To use it, enable the turnstiled service and re-log in.

Turnstile can also manage per-user services (including running a D-Bus session bus), removing the need for wrapping graphical sessions with dbus-run-session.

seatd

seatd(1) is a minimal seat management daemon and an alternative to elogind primarily for wlroots compositors.

To use it, install the seatd package and enable its service. If you want non-root users to be able to access the seatd session, add them to the _seatd group.

Note that, unlike elogind, seatd doesn't do anything besides managing seats.

XDG\RUNTIME\DIR

XDGRUNTIMEDIR is an environment variable defined by the XDG Base Directory Specification. Its value sets the path to the base directory where programs should store user-specific runtime files.

Install elogind or turnstile as your session manager to automatically set up XDGRUNTIMEDIR.

Alternatively, manually set the environment variable through the shell. Make sure to create a dedicated user directory and set its permissions to 700. A good default location is /run/user/$(id -u).
