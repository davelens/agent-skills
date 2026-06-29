---
url: https://developer.focus.teamleader.eu/docs/api/time-tracking-add
title: timeTracking.add | Teamleader Developers
words: 341
---
- [](/)
- API Reference
- Time Tracking
- Time Tracking
- timeTracking.add

timeTracking.add

```
POST https://api.focus.teamleader.eu/timeTracking.add
```

Add tracked time.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Bodyrequired

Note that the time tracking entry will be split up if the time span passes midnight.

- oneOf
  
  - With started\_at & duration
  - With end date
  - With started\_on & duration
  
  started\_atdate-timerequired
  
  Example: 2017-04-26T10:01:49+00:00
  
  durationnumberrequired
  
  Example: 3600
  
  work\type\idstring
  
  Example: 2175597d-484e-4a1c-a781-cbc3d9f893ba
  
  descriptionstring
  
  subject object
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[company, contact, event, milestone, nextgenTask, ticket, todo]
  
  invoiceableboolean
  
  Example: true
  
  user\_idstring
  
  To add tracked time for a different user.
  
  Example: 87982c96-f2fe-4b05-838c-ff42c0525758

```json

{

  "work_type_id": "2175597d-484e-4a1c-a781-cbc3d9f893ba",

  "description": "string",

  "subject": {

    "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

    "type": "company"

  },

  "invoiceable": true,

  "user_id": "87982c96-f2fe-4b05-838c-ff42c0525758",

  "started_at": "2017-04-26T10:01:49+00:00",

  "duration": 3600

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

    "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

    "type": "string"

  }

}
```

```json

{

  "data": {

    "type": "timetracking",

    "id": "6f052357-142e-499e-a647-36b55ecf447c"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timeTracking.add");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"work_type_id\": \"2175597d-484e-4a1c-a781-cbc3d9f893ba\",\n  \"description\": \"string\",\n  \"subject\": {\n    \"id\": \"eab232c6-49b2-4b7e-a977-5e1148dad471\",\n    \"type\": \"company\"\n  },\n  \"invoiceable\": true,\n  \"user_id\": \"87982c96-f2fe-4b05-838c-ff42c0525758\",\n  \"started_at\": \"2017-04-26T10:01:49+00:00\",\n  \"duration\": 3600\n}", null, "application/json");
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
  "work_type_id": "2175597d-484e-4a1c-a781-cbc3d9f893ba",
  "description": "string",
  "subject": {
    "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",
    "type": "company"
  },
  "invoiceable": true,
  "user_id": "87982c96-f2fe-4b05-838c-ff42c0525758",
  "started_at": "2017-04-26T10:01:49+00:00",
  "duration": 3600
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
timeTracking.info

Next  
\
timeTracking.update
