---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Notifications/Notification/
title: Quickshell.Services.Notifications - Notification
words: 481
---
* * *

Notification: QtObject

uncreatable

import Quickshell.Services.Notifications

A notification emitted by a NotificationServer.

NOTE

This type is Retainable. It can be retained after destruction if necessary.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- body :  string
  
  readonly
  
  No details provided
- inlineReplyPlaceholder :  string
  
  readonly
  
  The placeholder text/button caption for the inline reply.
- actions :  list &lt;NotificationAction&gt;
  
  readonly
  
  Actions that can be taken for this notification.
- image :  string
  
  readonly
  
  An image associated with the notification.
  
  This image is often something like a profile picture in instant messaging applications.
- resident :  bool
  
  readonly
  
  If true, the notification will not be destroyed after an action is invoked.
- summary :  string
  
  readonly
  
  The image associated with this notification, or "" if none.
- id :  int
  
  readonly
  
  Id of the notification as given to the client.
- tracked :  bool
  
  If the notification is tracked by the notification server.
  
  Setting this property to false is equivalent to calling dismiss().
- hasActionIcons :  bool
  
  readonly
  
  If actions associated with this notification have icons available.
  
  See Go to NotificationAction.identifier for details.
- hasInlineReply :  bool
  
  readonly
  
  If true, the notification has an inline reply action.
  
  A quick reply text field should be displayed and the reply can be sent using sendInlineReply().
- appName :  string
  
  readonly
  
  The sending application’s name.
- hints :  unknown
  
  readonly
  
  All hints sent by the client application as a javascript object. Many common hints are exposed via other properties.
- appIcon :  string
  
  readonly
  
  The sending application’s icon. If none was provided, then the icon from an associated desktop entry will be retrieved. If none was found then "".
- lastGeneration :  bool
  
  readonly
  
  If this notification was carried over from the last generation when quickshell reloaded.
  
  Notifications from the last generation will only be emitted if Go to NotificationServer.keepOnReload is true.
- desktopEntry :  string
  
  readonly
  
  The name of the sender’s desktop entry or "" if none was supplied.
- expireTimeout :  real
  
  readonly
  
  Time in seconds the notification should be valid for
- urgency :  NotificationUrgency
  
  readonly
  
  No details provided
- transient :  bool
  
  readonly
  
  If true, the notification should skip any kind of persistence function like a notification area.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- dismiss () :  void
  
  Destroy the notification and hint to the remote application that it was explicitly closed by the user.
- expire () :  void
  
  Destroy the notification and hint to the remote application that it has timed out an expired.
- sendInlineReply (replyText) :  void
  
  Property replyText: string
  
  Send an inline reply to the notification with an inline reply action.
  
  WARNING
  
  This method can only be called if Go to hasInlineReply is true and the server has Go to NotificationServer.inlineReplySupported set to true.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- closed (reason)  [](/docs/configuration/qml-overview#-signals)
  
  Property reason: NotificationCloseReason
  
  Sent when a notification has been closed.
  
  The notification object will be destroyed as soon as all signal handlers exit.
