---
url: https://developer.focus.teamleader.eu/docs/api/project-lines-add-to-group
title: projectLines.addToGroup | Teamleader Developers
words: 210
---
- [](/)
- API Reference
- New Projects
- Project lines
- projectLines.addToGroup

projectLines.addToGroup

```
POST https://api.focus.teamleader.eu/projects-v2/projectLines.addToGroup
```

Add an existing task or material to a group.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- line\_idstringrequired
  
  The ID of the task or material. May not be a group.
  
  Example: a14a464d-320a-49bb-b6ee-b510c7f4f66c
  
  group\_idstringrequired
  
  Example: 0daf76e6-5141-4fb0-866f-01916a873a38

```json

{

  "line_id": "a14a464d-320a-49bb-b6ee-b510c7f4f66c",

  "group_id": "0daf76e6-5141-4fb0-866f-01916a873a38"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projectLines.addToGroup");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"line_id\": \"a14a464d-320a-49bb-b6ee-b510c7f4f66c\",\n  \"group_id\": \"0daf76e6-5141-4fb0-866f-01916a873a38\"\n}", null, "application/json");
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
  "line_id": "a14a464d-320a-49bb-b6ee-b510c7f4f66c",
  "group_id": "0daf76e6-5141-4fb0-866f-01916a873a38"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projectLines.list

Next  
\
projectLines.removeFromGroup
