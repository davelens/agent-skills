---
url: https://docs.voidlinux.org/config/services/logging.html
title: Logging - The Void Linux Handbook
words: 111
---
Logging

Syslog

The default installation comes with no syslog daemon. However, there are syslog implementations available in the Void repositories.

Socklog

socklog(8) is a syslog implementation from the author of runit(8). Use socklog if you're not sure which syslog implementation to use. To enable it, install the socklog-void package and enable the socklog-unix and nanoklogd services. Ensure no other syslog daemon is running.

The logs are saved in sub-directories of /var/log/socklog/, and svlogtail can be used to access them conveniently.

The ability to read logs is limited to root and users who are part of the socklog group.

Other syslog daemons

The Void repositories also include packages for rsyslog and metalog.
