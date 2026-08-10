---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Polkit/AuthFlow/
title: Quickshell.Services.Polkit - AuthFlow
words: 375
---
* * *

AuthFlow: QtObject

uncreatable

import Quickshell.Services.Polkit

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- iconName :  string
  
  readonly
  
  The icon to present to the user in association with the message.
  
  The icon name follows the FreeDesktop icon naming specification. Use Quickshell.iconPath() to resolve the icon name to an actual file path for display.
- inputPrompt :  string
  
  readonly
  
  This message is used to prompt the user for required input.
- responseVisible :  bool
  
  readonly
  
  Indicates whether the user’s response should be visible. (e.g. for passwords this should be false)
- selectedIdentity :  unknown
  
  The identity that will be used to authenticate.
  
  Changing this will abort any ongoing authentication conversations and start a new one.
- supplementaryMessage :  string
  
  readonly
  
  An additional message to present to the user.
  
  This may be used to show errors or supplementary information. See Go to supplementaryIsError to determine if this is an error message.
- cookie :  string
  
  readonly
  
  A cookie that identifies this authentication request.
  
  This is an internal identifier and not recommended to show to users.
- supplementaryIsError :  bool
  
  readonly
  
  Indicates whether the supplementary message is an error.
- isCompleted :  bool
  
  readonly
  
  Has the authentication request been completed.
- isSuccessful :  bool
  
  readonly
  
  Indicates whether the authentication request was successful.
- isCancelled :  bool
  
  readonly
  
  Indicates whether the current authentication request was cancelled.
- isResponseRequired :  bool
  
  readonly
  
  Indicates that a response from the user is required from the user, typically a password.
- identities :  list
  
  readonly
  
  The list of identities that may be used to authenticate.
  
  Each identity may be a user or a group. You may select any of them to authenticate by setting Go to selectedIdentity. By default, the first identity in the list is selected.
- message :  string
  
  readonly
  
  The main message to present to the user.
- actionId :  string
  
  readonly
  
  The action ID represents the action that is being authorized.
  
  This is a machine-readable identifier.
- failed :  bool
  
  readonly
  
  Indicates whether an authentication attempt has failed at least once during this authentication flow.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- cancelAuthenticationRequest () :  void
  
  Cancel the ongoing authentication request from the user side.
- submit (value) :  void
  
  Property value: string
  
  Submit a response to a request that was previously emitted. Typically the password.
