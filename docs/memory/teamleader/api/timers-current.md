---
url: https://developer.focus.teamleader.eu/docs/api/timers-current
title: timers.current | Teamleader Developers
words: 271
---
- [](/)
- API Reference
- Time Tracking
- Timers
- timers.current

timers.current

```
POST https://api.focus.teamleader.eu/timers.current
```

Get the current running timer.

Request​

Responses​

- 200

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
  
  Example: 2b282dec-ba9d-4faa-9b39-944b99ee5c0a
  
  user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  work\_type object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  started\_atstring
  
  Example: 2017-04-26T10:01:49+00:00
  
  descriptionstring
  
  Example: Timer description
  
  subject object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Possible values: \[company, contact, event, todo, milestone, ticket]
  
  invoiceableboolean
  
  Example: true

```json

{

  "data": {

    "id": "2b282dec-ba9d-4faa-9b39-944b99ee5c0a",

    "user": {

      "type": "user",

      "id": "5443a1b9-7673-4922-921f-1da4ff557783"

    },

    "work_type": {

      "type": "workType",

      "id": "d02de940-9435-4e35-bc0b-3d17f3d0ea7b"

    },

    "started_at": "2017-04-26T10:01:49+00:00",

    "description": "Timer description",

    "subject": {

      "type": "milestone",

      "id": "31931bc9-4ae8-4c50-ba8d-9ea88498c1c1"

    },

    "invoiceable": true

  }

}
```

```json

{

  "data": {

    "id": "2b282dec-ba9d-4faa-9b39-944b99ee5c0a",

    "user": {

      "type": "user",

      "id": "5443a1b9-7673-4922-921f-1da4ff557783"

    },

    "work_type": {

      "type": "workType",

      "id": "d02de940-9435-4e35-bc0b-3d17f3d0ea7b"

    },

    "started_at": "2017-04-26T10:01:49+00:00",

    "description": "Timer description",

    "subject": {

      "type": "milestone",

      "id": "31931bc9-4ae8-4c50-ba8d-9ea88498c1c1"

    },

    "invoiceable": true

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timers.current");
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
Timers

Next  
\
timers.start
