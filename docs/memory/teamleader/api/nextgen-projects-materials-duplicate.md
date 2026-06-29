---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-materials-duplicate
title: materials.duplicate | Teamleader Developers
words: 236
---
- [](/)
- API Reference
- New Projects
- Materials
- materials.duplicate

materials.duplicate

```
POST https://api.focus.teamleader.eu/projects-v2/materials.duplicate
```

Duplicate a material.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- origin\_idstringrequired
  
  The id of the material that is being duplicated
  
  Example: 0186a74b-b640-7458-9717-7c84356b26fd

```json

{

  "origin_id": "0186a74b-b640-7458-9717-7c84356b26fd"

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

    "type": "nextgenMaterial",

    "id": "0186a2f3-32a5-7c81-b3a9-55809146ad0c"

  }

}
```

```json

{

  "data": {

    "type": "nextgenMaterial",

    "id": "0186a2f3-32a5-7c81-b3a9-55809146ad0c"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/materials.duplicate");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"origin_id\": \"0186a74b-b640-7458-9717-7c84356b26fd\"\n}", null, "application/json");
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
  "origin_id": "0186a74b-b640-7458-9717-7c84356b26fd"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
materials.update

Next  
\
materials.delete
