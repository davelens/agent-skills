---
url: https://docs.voidlinux.org/config/security/apparmor.html
title: AppArmor - The Void Linux Handbook
words: 104
---
AppArmor

AppArmor is a mandatory access control mechanism (like SELinux). It can constrain programs based on pre-defined or generated policy definitions.

Void ships with some default profiles for several services, such as dhcpcd and wpa_supplicant. Container runtimes such as LXC and podman integrate with AppArmor for better security for container payloads.

To use AppArmor install the apparmor package and add apparmor=1 security=apparmor to the kernel cmdline.

By default AppArmor will boot in enforce mode and disallow all policy violations. To boot in complain mode, add apparmor.mode=complain to the kernel cmdline.

AppArmor tools aa-genprof(8) and aa-logprof(8) require either configured syslog or a running auditd(8) service.
