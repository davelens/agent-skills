---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-duplicate
title: projects.duplicate | Teamleader Developers
words: 248
---
- [](/)
- API Reference
- New Projects
- Projects
- projects.duplicate

projects.duplicate

```
POST https://api.focus.teamleader.eu/projects-v2/projects.duplicate
```

Duplicate a project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 81df9996-6d2c-4844-86d6-202c08d2837e
  
  titlestringrequired
  
  Example: Copy of my project

```json

{

  "id": "81df9996-6d2c-4844-86d6-202c08d2837e",

  "title": "Copy of my project"

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

    "type": "nextgenProject",

    "id": "49b403be-a32e-0901-9b1c-25214f9027c6"

  }

}
```

```json

{

  "data": {

    "type": "nextgenProject",

    "id": "49b403be-a32e-0901-9b1c-25214f9027c6"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projects.duplicate");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"81df9996-6d2c-4844-86d6-202c08d2837e\",\n  \"title\": \"Copy of my project\"\n}", null, "application/json");
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
  "id": "81df9996-6d2c-4844-86d6-202c08d2837e",
  "title": "Copy of my project"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.reopen

Next  
\
projects.delete
