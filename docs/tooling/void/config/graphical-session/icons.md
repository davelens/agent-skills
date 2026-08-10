---
url: https://docs.voidlinux.org/config/graphical-session/icons.html
title: Icons - The Void Linux Handbook
words: 79
---
Icons

GTK

By default, GTK-based applications try to use the Adwaita icon theme for application icons. Consequently, installation of the gtk+3 package will also install the adwaita-icon-theme package. If you wish to use a different theme, install the relevant package, then specify the theme in /etc/gtk-3.0/settings.ini or ~/.config/gtk-3.0/settings.ini. adwaita-icon-theme can be removed after ignoring the package.

For information about how to specify a different GTK icon theme in settings.ini, refer to the GtkSettings documentation, in particular the "gtk-icon-theme-name" property.
