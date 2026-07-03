---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Pam/PamContext/
title: Quickshell.Services.Pam - PamContext
words: 332
---
* * *

PamContext: QtObject

import Quickshell.Services.Pam

Connection to pam. See the module documentation for pam configuration advice.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- active :  bool
  
  If the pam context is actively performing an authentication.
  
  Setting this value behaves exactly the same as calling start() and abort().
- user :  string
  
  The user to authenticate as. If unset the current user will be used.
  
  This property may not be set while Go to active is true.
- message :  string
  
  readonly
  
  The last message sent by pam.
- configDirectory :  string
  
  The pam configuration directory to use. Defaults to “/etc/pam.d”.
  
  The configuration directory is resolved relative to the current file if not an absolute path.
  
  On FreeBSD this property is ignored as the pam configuration directory cannot be changed.
  
  This property may not be set while Go to active is true.
- messageIsError :  bool
  
  readonly
  
  If the last message should be shown as an error.
- responseVisible :  bool
  
  readonly
  
  If the user’s response should be visible. Only valid when Go to responseRequired is true.
- config :  string
  
  The pam configuration to use. Defaults to “login”.
  
  The configuration should name a file inside Go to configDirectory.
  
  This property may not be set while Go to active is true.
- responseRequired :  bool
  
  readonly
  
  If pam currently wants a response.
  
  Responses can be returned with the respond() function.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- abort () :  void
  
  Abort a running authentication session.
- respond (response) :  void
  
  Property response: string
  
  Respond to pam.
  
  May not be called unless Go to responseRequired is true.
- start () :  bool
  
  Start an authentication session. Returns if the session was started successfully.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- completed (result)  [](/docs/configuration/qml-overview#-signals)
  
  Property result: PamResult
  
  Emitted whenever authentication completes.
- pamMessage ()  [](/docs/configuration/qml-overview#-signals)
  
  Emitted whenever pam sends a new message, after the change signals for message, messageIsError, and responseRequired.
- error (error)  [](/docs/configuration/qml-overview#-signals)
  
  Property error: PamError
  
  Emitted if pam fails to perform authentication normally.
  
  A completed(PamResult.Error) will be emitted after this event.
