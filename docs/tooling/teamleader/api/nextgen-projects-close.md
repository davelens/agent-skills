---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-close
title: projects.close | Teamleader Developers
words: 195
---
- [](/)
- API Reference
- New Projects
- Projects
- projects.close

projects.close

```
POST https://api.focus.teamleader.eu/projects-v2/projects.close
```

Mark a project as closed.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 0184f276-811b-716d-8b79-17628c9573c6
  
  closing\_strategystringrequired
  
  Possible values: \[marktasksandmaterialsas_done, none]

```json

{

  "id": "0184f276-811b-716d-8b79-17628c9573c6",

  "closing_strategy": "mark_tasks_and_materials_as_done"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projects.close");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"0184f276-811b-716d-8b79-17628c9573c6\",\n  \"closing_strategy\": \"mark_tasks_and_materials_as_done\"\n}", null, "application/json");
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
  "closing_strategy": "mark_tasks_and_materials_as_done"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.update

Next  
\
projects.reopen
