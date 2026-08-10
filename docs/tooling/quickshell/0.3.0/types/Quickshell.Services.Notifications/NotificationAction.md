---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Notifications/NotificationAction/
title: Quickshell.Services.Notifications - NotificationAction
words: 80
---
* * *

NotificationAction: QtObject

uncreatable

import Quickshell.Services.Notifications

See Go to Notification.actions.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- identifier :  string
  
  readonly
  
  The identifier of the action.
  
  When Go to Notification.hasActionIcons is true, this property will be an icon name. When it is false, this property is irrelevant.
- text :  string
  
  readonly
  
  The localized text that should be displayed on a button.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- invoke () :  void
  
  Invoke the action. If Go to Notification.resident is false it will be dismissed.
