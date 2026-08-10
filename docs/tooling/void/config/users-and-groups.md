---
url: https://docs.voidlinux.org/config/users-and-groups.html
title: Users and Groups - The Void Linux Handbook
words: 341
---
Users and Groups

The useradd(8), userdel(8) and usermod(8) commands are used to add, delete and modify users respectively. The passwd(1) command is used to change passwords.

The groupadd(8), groupdel(8) and groupmod(8) commands are used to add, delete and modify groups respectively. The groups(1) command lists all groups a user belongs to.

Default shell

The default shell for a user can be changed with chsh(1):

```
$ chsh -s <shell> <user_name>
```

<shell> must be the path to the shell as specified by /etc/shells or the output of chsh -l, which provides a list of installed shells.

sudo

sudo(8) is installed by default, but might not be configured appropriately for your needs. It is only necessary to configure sudo if you wish to use it.

Use visudo(8) as root to edit the sudoers(5) file.

To create a superuser, uncomment the line

```
#%wheel ALL=(ALL) ALL
```

and add users to the wheel group.

Default Groups

Void Linux defines a number of groups by default.

GroupDescription rootComplete access to the system. binUnused - present for historical reasons. sysUnused - present for historical reasons. kmemAbility to read from /dev/mem and /dev/port. wheelElevated privileges for specific system administration tasks. ttyAccess to TTY-like devices: /dev/tty, /dev/pts, /dev/vcs. tapeAccess to tape devices. daemonSystem daemons that need to write to files on disk. floppyAccess to floppy drives. diskRaw access to /dev/sd and /dev/loop. lpAccess to printers. dialoutAccess to serial ports. audioAccess to audio devices. videoAccess to video devices. utmpAbility to write to /var/run/utmp, /var/log/wtmp and /var/log/btmp. admUnused - present for historical reasons. This group was traditionally used for system monitoring, such as viewing files in /var/log. cdromAccess to CD devices. opticalAccess to DVD/CD-RW devices. mailUsed by some mail packages, e.g. dma. storageAccess to removable storage devices. scannerAbility to access scanners. networkUsed by some networking-related packages, e.g. connman, NetworkManager, wicd. kvmAbility to use KVM for virtual machines, e.g. via QEMU. inputAccess to input devices: /dev/mouse, /dev/event. plugdevAccess to pluggable devices. nogroupSystem daemons that don't need to own any files. usbmonAccess to /dev/usbmon. usersOrdinary users. xbuilderTo use xbps-uchroot(1) with xbps-src.
