---
url: https://developer.focus.teamleader.eu/docs/api/migrate-activity-type
title: migrate.activityType | Teamleader Developers
words: 239
---
- [](/)
- API Reference
- Other
- Migrating
- migrate.activityType

migrate.activityType

```
POST https://api.focus.teamleader.eu/migrate.activityType
```

Translates meeting, call and task into their respective activity type UUID.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- typestring
  
  Possible values: \[meeting, call, task]
  
  Example: meeting

```json

{

  "type": "meeting"

}
```

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
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "activityType",

    "id": "28f3639d-9b64-44a8-974d-a4df645af6a5"

  }

}
```

```json

{

  "data": {

    "type": "activityType",

    "id": "28f3639d-9b64-44a8-974d-a4df645af6a5"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/migrate.activityType");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"type\": \"meeting\"\n}", null, "application/json");
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
  "type": "meeting"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
migrate.taxRate

Next  
\
Webhooks
