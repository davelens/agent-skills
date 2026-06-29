---
url: https://developer.focus.teamleader.eu/docs/api/tasks-schedule
title: tasks.schedule | Teamleader Developers
words: 248
---
- [](/)
- API Reference
- Tasks
- Tasks
- tasks.schedule

tasks.schedule

```
POST https://api.focus.teamleader.eu/tasks.schedule
```

Schedule a task in your calendar.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 7c70c54e-6e50-4e6a-b5fd-80234eb535cf
  
  starts\_atstringrequired
  
  Example: 2016-02-04T16:00:00+00:00
  
  ends\_atstringrequired
  
  Example: 2016-02-04T18:00:00+00:00

```json

{

  "id": "7c70c54e-6e50-4e6a-b5fd-80234eb535cf",

  "starts_at": "2016-02-04T16:00:00+00:00",

  "ends_at": "2016-02-04T18:00:00+00:00"

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

    "type": "event",

    "id": "d7d2d100-d440-46c2-a4a3-177ad4b2a860"

  }

}
```

```json

{

  "data": {

    "type": "event",

    "id": "d7d2d100-d440-46c2-a4a3-177ad4b2a860"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tasks.schedule");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"7c70c54e-6e50-4e6a-b5fd-80234eb535cf\",\n  \"starts_at\": \"2016-02-04T16:00:00+00:00\",\n  \"ends_at\": \"2016-02-04T18:00:00+00:00\"\n}", null, "application/json");
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
  "id": "7c70c54e-6e50-4e6a-b5fd-80234eb535cf",
  "starts_at": "2016-02-04T16:00:00+00:00",
  "ends_at": "2016-02-04T18:00:00+00:00"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tasks.delete

Next  
\
Time Tracking
