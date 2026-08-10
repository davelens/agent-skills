---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-tasks-duplicate
title: tasks.duplicate | Teamleader Developers
words: 240
---
- [](/)
- API Reference
- New Projects
- Tasks
- tasks.duplicate

tasks.duplicate

```
POST https://api.focus.teamleader.eu/projects-v2/tasks.duplicate
```

Duplicate a task, without its time trackings.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- origin\_idstringrequired
  
  The id of the task that is being duplicated
  
  Example: 0186a6b5-32d9-73d4-a416-d9f86cba567d

```json

{

  "origin_id": "0186a6b5-32d9-73d4-a416-d9f86cba567d"

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

    "type": "nextgenTask",

    "id": "0186a721-3879-729a-bf52-91576e0522f3"

  }

}
```

```json

{

  "data": {

    "type": "nextgenTask",

    "id": "0186a721-3879-729a-bf52-91576e0522f3"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/tasks.duplicate");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"origin_id\": \"0186a6b5-32d9-73d4-a416-d9f86cba567d\"\n}", null, "application/json");
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
  "origin_id": "0186a6b5-32d9-73d4-a416-d9f86cba567d"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tasks.update

Next  
\
tasks.delete
