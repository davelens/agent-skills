---
url: https://quickshell.org/docs/v0.3.0/types/Quickshell.Services.Greetd/Greetd/
title: Quickshell.Services.Greetd - Greetd
words: 504
---
* * *

Greetd: QtObject

singleton

import Quickshell.Services.Greetd

This object provides access to a running greetd instance if present. With it you can authenticate a user and launch a session.

See the greetd wiki for instructions on how to set up a graphical greeter.

Properties [\[?\]](/docs/v0.3.0/guide/qml-language#properties)

- available :  bool
  
  readonly
  
  If the greetd socket is available.
- user :  string
  
  readonly
  
  The currently authenticating user.
- state :  GreetdState
  
  readonly
  
  The current state of the greetd connection.

Functions [\[?\]](/docs/v0.3.0/guide/qml-language#functions)

- cancelSession () :  void
  
  Cancel the active greetd session.
- createSession (user) :  void
  
  Property user: string
  
  Create a greetd session for the given user.
- launch (command) :  void
  
  Property command: list
  
  Launch the session, exiting quickshell. Go to state must be GreetdState.ReadyToLaunch to call this function.
- launch (command, environment) :  void
  
  Property command: list Property environment: list
  
  Launch the session, exiting quickshell. Go to state must be GreetdState.ReadyToLaunch to call this function.
- launch (command, environment, quit) :  void
  
  Property command: list Property environment: list Property quit: bool
  
  Launch the session, exiting quickshell if Go to quit is true. Go to state must be GreetdState.ReadyToLaunch to call this function.
  
  The Go to launched signal can be used to perform an action after greetd has acknowledged the desired session.
  
  WARNING
  
  Note that greetd expects the greeter to terminate as soon as possible after setting a target session, and waiting too long may lead to unexpected behavior such as the greeter restarting.
  
  Performing animations and such should be done before calling Go to launch.
- respond (response) :  void
  
  Property response: string
  
  Respond to an authentication message.
  
  May only be called in response to an Go to authMessage() with responseRequired set to true.

Signals [\[?\]](/docs/v0.3.0/guide/qml-language#signals)

- authFailure (message)  [](/docs/configuration/qml-overview#-signals)
  
  Property message: string
  
  Authentication has failed an the session has terminated.
  
  Usually this is something like a timeout or a failed password entry.
- authMessage (message, error, responseRequired, echoResponse)  [](/docs/configuration/qml-overview#-signals)
  
  Property message: string Property error: bool Property responseRequired: bool Property echoResponse: bool
  
  An authentication message has been sent by greetd.
  
  - message - the text of the message
  - error - if the message should be displayed as an error
  - responseRequired - if a response via respond() is required for this message
  - echoResponse - if the response should be displayed in clear text to the user
  
  Note that error and responseRequired are mutually exclusive.
  
  Errors are sent through authMessage when they are recoverable, such as a fingerprint scanner not being able to read a finger correctly, while definite failures such as a bad password are sent through authFailure.
- launched ()  [](/docs/configuration/qml-overview#-signals)
  
  Greetd has acknowledged the launch request and the greeter should quit as soon as possible.
  
  This signal is sent right before quickshell exits automatically if the launch was not specifically requested not to exit. You usually don’t need to use this signal.
- error (error)  [](/docs/configuration/qml-overview#-signals)
  
  Property error: string
  
  Greetd has encountered an error.
- readyToLaunch ()  [](/docs/configuration/qml-overview#-signals)
  
  Authentication has finished successfully and greetd can now launch a session.
