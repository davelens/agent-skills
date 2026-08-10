---
url: https://developer.focus.teamleader.eu/docs/api/project-lines-remove-from-group
title: projectLines.removeFromGroup | Teamleader Developers
words: 204
---
- [](/)
- API Reference
- New Projects
- Project lines
- projectLines.removeFromGroup

projectLines.removeFromGroup

```
POST https://api.focus.teamleader.eu/projects-v2/projectLines.removeFromGroup
```

Remove a task or material from the group it is currently in.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- line\_idstringrequired
  
  The ID of the task or material. May not be a group.
  
  Example: a14a464d-320a-49bb-b6ee-b510c7f4f66c

```json

{

  "line_id": "a14a464d-320a-49bb-b6ee-b510c7f4f66c"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projectLines.removeFromGroup");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"line_id\": \"a14a464d-320a-49bb-b6ee-b510c7f4f66c\"\n}", null, "application/json");
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
  "line_id": "a14a464d-320a-49bb-b6ee-b510c7f4f66c"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projectLines.addToGroup

Next  
\
Groups
