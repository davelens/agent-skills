---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-remove-owner
title: projects.removeOwner | Teamleader Developers
words: 200
---
- [](/)
- API Reference
- New Projects
- Projects
- projects.removeOwner

projects.removeOwner

```
POST https://api.focus.teamleader.eu/projects-v2/projects.removeOwner
```

Remove a user as owner. Doesn't fail if the user wasn't linked.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 0184f276-811b-716d-8b79-17628c9573c6
  
  user\_idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b

```json

{

  "id": "0184f276-811b-716d-8b79-17628c9573c6",

  "user_id": "66abace2-62af-0836-a927-fe3f44b9b47b"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projects.removeOwner");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"0184f276-811b-716d-8b79-17628c9573c6\",\n  \"user_id\": \"66abace2-62af-0836-a927-fe3f44b9b47b\"\n}", null, "application/json");
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
  "id": "0184f276-811b-716d-8b79-17628c9573c6",
  "user_id": "66abace2-62af-0836-a927-fe3f44b9b47b"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.addOwner

Next  
\
projects.assign
