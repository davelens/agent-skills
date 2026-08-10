---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Notifications/NotificationServer/
title: Quickshell.Services.Notifications - NotificationServer
words: 409
---
* * *

NotificationServer: QtObject

import Quickshell.Services.Notifications

An implementation of the Desktop Notifications Specification for receiving notifications from external applications.

The server does not advertise most capabilities by default. See the individual properties for details.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- inlineReplySupported :  bool
  
  If the notification server should advertise that it supports inline replies. Defaults to false.
- bodySupported :  bool
  
  If notification body text should be advertised as supported by the notification server. Defaults to true.
  
  Note that returned notifications are likely to return body text even if this property is false, as it is only a hint.
- bodyImagesSupported :  bool
  
  If notification body text should be advertised as supporting images as described in the specification Defaults to false.
  
  Note that returned notifications may still contain images if this property is false, as it is only a hint.
- bodyMarkupSupported :  bool
  
  If notification body text should be advertised as supporting markup as described in \[the specification] Defaults to false.
  
  Note that returned notifications may still contain markup if this property is false, as it is only a hint. By default Text objects will try to render markup. To avoid this if any is sent, change Go to Text.textFormat to PlainText.
- keepOnReload :  bool
  
  If notifications should be re-emitted when quickshell reloads. Defaults to true.
  
  The Go to Notification.lastGeneration flag will be set on notifications from the prior generation for further filtering/handling.
- persistenceSupported :  bool
  
  If the notification server should advertise that it can persist notifications in the background after going offscreen. Defaults to false.
- actionsSupported :  bool
  
  If notification actions should be advertised as supported by the notification server. Defaults to false.
- bodyHyperlinksSupported :  bool
  
  If notification body text should be advertised as supporting hyperlinks as described in the specification Defaults to false.
  
  Note that returned notifications may still contain hyperlinks if this property is false, as it is only a hint.
- trackedNotifications :  ObjectModel &lt;Notification&gt;
  
  readonly
  
  All notifications currently tracked by the server.
- imageSupported :  bool
  
  If the notification server should advertise that it supports images. Defaults to false.
- extraHints :  list &lt;string&gt;
  
  Extra hints to expose to notification clients.
- actionIconsSupported :  bool
  
  If notification actions should be advertised as supporting the display of icons. Defaults to false.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- notification (notification)  [](/docs/configuration/qml-overview#-signals)
  
  Property notification: Notification
  
  Sent when a notification is received by the server.
  
  If this notification should not be discarded, set its tracked property to true.
