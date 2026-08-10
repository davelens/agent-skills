---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-materials-delete
title: materials.delete | Teamleader Developers
words: 182
---
- [](/)
- API Reference
- New Projects
- Materials
- materials.delete

materials.delete

```
POST https://api.focus.teamleader.eu/projects-v2/materials.delete
```

Delete a material.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 0184f276-811b-716d-8b79-17628c9573c6

```json

{

  "id": "0184f276-811b-716d-8b79-17628c9573c6"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/materials.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"0184f276-811b-716d-8b79-17628c9573c6\"\n}", null, "application/json");
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
  "id": "0184f276-811b-716d-8b79-17628c9573c6"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
materials.duplicate

Next  
\
materials.assign
