---
url: https://developer.focus.teamleader.eu/docs/api/time-tracking-update
title: timeTracking.update | Teamleader Developers
words: 267
---
- [](/)
- API Reference
- Time Tracking
- Time Tracking
- timeTracking.update

timeTracking.update

```
POST https://api.focus.teamleader.eu/timeTracking.update
```

Update tracked time.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Bodyrequired

- oneOf
  
  - Update with started\_at
  - Update with started\_on
  
  started\_atdate-timerequired
  
  Example: 2017-04-26T10:01:49+00:00
  
  idstringrequired
  
  Example: 66621f54-3d0d-420f-8d4b-ddd7fc473bf2
  
  work\type\idstringnullable
  
  Example: a12f4289-3580-4780-bb6d-b4e9f84f80ad
  
  durationintegerrequired
  
  In seconds
  
  Example: 3600
  
  descriptionstringnullable
  
  subject objectnullable
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[company, contact, event, todo, milestone, ticket]
  
  invoiceableboolean
  
  Example: true

```json

{

  "id": "66621f54-3d0d-420f-8d4b-ddd7fc473bf2",

  "work_type_id": "a12f4289-3580-4780-bb6d-b4e9f84f80ad",

  "duration": 3600,

  "description": "string",

  "subject": {

    "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

    "type": "company"

  },

  "invoiceable": true,

  "started_at": "2017-04-26T10:01:49+00:00"

}
```

Responses​

- 204

Response Headers

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timeTracking.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"66621f54-3d0d-420f-8d4b-ddd7fc473bf2\",\n  \"work_type_id\": \"a12f4289-3580-4780-bb6d-b4e9f84f80ad\",\n  \"duration\": 3600,\n  \"description\": \"string\",\n  \"subject\": {\n    \"id\": \"eab232c6-49b2-4b7e-a977-5e1148dad471\",\n    \"type\": \"company\"\n  },\n  \"invoiceable\": true,\n  \"started_at\": \"2017-04-26T10:01:49+00:00\"\n}", null, "application/json");
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

```json
{
  "id": "66621f54-3d0d-420f-8d4b-ddd7fc473bf2",
  "work_type_id": "a12f4289-3580-4780-bb6d-b4e9f84f80ad",
  "duration": 3600,
  "description": "string",
  "subject": {
    "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",
    "type": "company"
  },
  "invoiceable": true,
  "started_at": "2017-04-26T10:01:49+00:00"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
timeTracking.add

Next  
\
timeTracking.resume
