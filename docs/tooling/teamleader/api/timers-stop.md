---
url: https://developer.focus.teamleader.eu/docs/api/timers-stop
title: timers.stop | Teamleader Developers
words: 193
---
- [](/)
- API Reference
- Time Tracking
- Timers
- timers.stop

timers.stop

```
POST https://api.focus.teamleader.eu/timers.stop
```

Stop the current timer. This will add a new time tracking in the background.

Request​

Responses​

- 201

Response Headers

<!--THE END-->

- application/json

<!--THE END-->

- Schema
- Example (auto)
- Example

Schema

- data object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "timeTracking",

    "id": "4ff475b2-f45b-4803-800e-350b9c02aeca"

  }

}
```

```json

{

  "data": {

    "type": "timeTracking",

    "id": "4ff475b2-f45b-4803-800e-350b9c02aeca"

  }

}
```

Authorization: http

```
name: httpBearertype: httpscheme: bearer
```

- csharp
- curl
- dart
- go
- http
- java
- javascript
- kotlin
- c
- nodejs
- objective-c
- ocaml
- php
- postman-cli
- powershell
- python
- r
- ruby
- rust
- shell
- swift

<!--THE END-->

- HTTPCLIENT
- RESTSHARP

```csharp
var client = new HttpClient();
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timers.stop");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var response = await client.SendAsync(request);
response.EnsureSuccessStatusCode();
Console.WriteLine(await response.Content.ReadAsStringAsync());
```

RequestCollapse all

Base URL

Edit

https://api.focus.teamleader.eu

Auth

Bearer Token

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
timers.start

Next  
\
timers.update
