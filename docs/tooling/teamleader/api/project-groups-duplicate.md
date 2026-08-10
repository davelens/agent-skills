---
url: https://developer.focus.teamleader.eu/docs/api/project-groups-duplicate
title: projectGroups.duplicate | Teamleader Developers
words: 243
---
- [](/)
- API Reference
- New Projects
- Groups
- projectGroups.duplicate

projectGroups.duplicate

```
POST https://api.focus.teamleader.eu/projects-v2/projectGroups.duplicate
```

Duplicate a group and its entities, without any time trackings.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- origin\_idstringrequired
  
  The id of the group that is being duplicated
  
  Example: 0186a6b5-2fdc-749a-983a-c4a1303546d7

```json

{

  "origin_id": "0186a6b5-2fdc-749a-983a-c4a1303546d7"

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

    "type": "nextgenProjectGroup",

    "id": "0186a6b5-682c-7b0e-95c9-090627a73d3b"

  }

}
```

```json

{

  "data": {

    "type": "nextgenProjectGroup",

    "id": "0186a6b5-682c-7b0e-95c9-090627a73d3b"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projectGroups.duplicate");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"origin_id\": \"0186a6b5-2fdc-749a-983a-c4a1303546d7\"\n}", null, "application/json");
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
  "origin_id": "0186a6b5-2fdc-749a-983a-c4a1303546d7"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projectGroups.update

Next  
\
projectGroups.delete
