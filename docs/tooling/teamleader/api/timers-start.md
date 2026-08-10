---
url: https://developer.focus.teamleader.eu/docs/api/timers-start
title: timers.start | Teamleader Developers
words: 290
---
- [](/)
- API Reference
- Time Tracking
- Timers
- timers.start

timers.start

```
POST https://api.focus.teamleader.eu/timers.start
```

Start a new timer.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- work\type\idstring
  
  Example: db41328a-7a25-4e85-8fb9-830baacb7f40
  
  started\_atstring
  
  If not provided, current time will be used
  
  Example: 2017-04-26T10:01:49+00:00
  
  descriptionstring
  
  subject object
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[company, contact, event, todo, milestone, ticket]
  
  invoiceableboolean
  
  Example: true

```json

{

  "work_type_id": "db41328a-7a25-4e85-8fb9-830baacb7f40",

  "started_at": "2017-04-26T10:01:49+00:00",

  "subject": {

    "type": "milestone",

    "id": "29ff471c-7d8f-40d5-8c95-9a9cab841e65"

  },

  "invoiceable": true

}
```

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

    "type": "timer",

    "id": "4ff475b2-f45b-4803-800e-350b9c02aeca"

  }

}
```

```json

{

  "data": {

    "type": "timer",

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timers.start");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"work_type_id\": \"db41328a-7a25-4e85-8fb9-830baacb7f40\",\n  \"started_at\": \"2017-04-26T10:01:49+00:00\",\n  \"subject\": {\n    \"type\": \"milestone\",\n    \"id\": \"29ff471c-7d8f-40d5-8c95-9a9cab841e65\"\n  },\n  \"invoiceable\": true\n}", null, "application/json");
request.Content = content;
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

Body required

- Example (from schema)
- Example

```json
{
  "work_type_id": "db41328a-7a25-4e85-8fb9-830baacb7f40",
  "started_at": "2017-04-26T10:01:49+00:00",
  "subject": {
    "type": "milestone",
    "id": "29ff471c-7d8f-40d5-8c95-9a9cab841e65"
  },
  "invoiceable": true
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
timers.current

Next  
\
timers.stop
