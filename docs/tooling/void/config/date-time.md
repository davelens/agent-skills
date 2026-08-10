---
url: https://docs.voidlinux.org/config/date-time.html
title: Date and Time - The Void Linux Handbook
words: 392
---
Date and Time

To view your system's current date and time information, as well as make direct changes to it, use date(1).

Timezone

The default system timezone can be set by linking the timezone file to /etc/localtime:

```
# ln -sf /usr/share/zoneinfo/<timezone> /etc/localtime
```

> Note: If the variable TIMEZONE is set in /etc/rc.conf, it should be removed or commented out, as this will override what has been set with ln on reboot.

To change the timezone on a per user basis, the TZ variable can be exported from your shell's profile:

```
export TZ=<timezone>
```

Note that setting the timezone does not set the time (or date); instead, it simply specifies an offset from UTC, as described in timezone(3).

Hardware clock

By default, the hardware clock in Void is stored as UTC. Windows does not use UTC by default, and if you are dual-booting, this will conflict with Void. You can either change Windows to use UTC, or change Void Linux to use localtime by setting the HARDWARECLOCK variable in /etc/rc.conf:

```
export HARDWARECLOCK=localtime
```

For more details, see hwclock(8).

NTP

To maintain accuracy of your system's clock, you can use the Network Time Protocol (NTP).

Void provides packages for the following NTP daemons: NTP, OpenNTPD, Chrony and ntpd-rs.

Once you have installed an NTP daemon, you can enable the service for it, either through its own service or the ntpd service managed by xbps-alternatives(1).

ISC NTP

NTP is the official reference implementation of the Network Time Protocol.

The ntp package provides NTP and the isc-ntpd service.

For further information, visit the NTP site.

OpenNTPD

OpenNTPD focuses on providing a secure, lean NTP implementation which "just works" with reasonable accuracy for a majority of use-cases.

The openntpd package provides OpenNTPD and the openntpd service.

For further information, visit the OpenNTPD site.

Chrony

Chrony is designed to work well in a variety of conditions; it can synchronize faster and with greater accuracy than NTP.

The chrony package provides Chrony and the chronyd service.

The Chrony site provides a brief overview of its advantages over NTP, as well as a detailed feature comparison between Chrony, NTP and OpenNTPD.

ntpd-rs

ntpd-rs is a full-featured NTP server and client implementation, including NTS support.

The ntpd-rs package provides ntpd-rs and the ntpd-rs service.

For further information and migration guides from other implementations, visit the ntpd-rs docs.
