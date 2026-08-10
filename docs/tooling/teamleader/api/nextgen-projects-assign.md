---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-assign
title: projects.assign | Teamleader Developers
words: 221
---
- [](/)
- API Reference
- New Projects
- Projects
- projects.assign

projects.assign

```
POST https://api.focus.teamleader.eu/projects-v2/projects.assign
```

Assign a user or a team to a project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 0184f276-811b-716d-8b79-17628c9573c6
  
  assignee objectrequired
  
  typestringrequired
  
  Possible values: \[team, user]
  
  Example: user
  
  idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b

```json

{

  "id": "0184f276-811b-716d-8b79-17628c9573c6",

  "assignee": {

    "type": "user",

    "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

  }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projects.assign");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"0184f276-811b-716d-8b79-17628c9573c6\",\n  \"assignee\": {\n    \"type\": \"user\",\n    \"id\": \"66abace2-62af-0836-a927-fe3f44b9b47b\"\n  }\n}", null, "application/json");
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
  "assignee": {
    "type": "user",
    "id": "66abace2-62af-0836-a927-fe3f44b9b47b"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.removeOwner

Next  
\
projects.unassign
