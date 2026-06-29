---
url: https://developer.focus.teamleader.eu/docs/api/project-groups-delete
title: projectGroups.delete | Teamleader Developers
words: 196
---
- [](/)
- API Reference
- New Projects
- Groups
- projectGroups.delete

projectGroups.delete

```
POST https://api.focus.teamleader.eu/projects-v2/projectGroups.delete
```

Delete a group.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 01866e6f-f264-7fe5-8b7c-a3f739fa292c
  
  delete\_strategystringrequired
  
  Possible values: \[ungrouptasksandmaterials, deletetasksandmaterials, deletetasksmaterialsandunbilled_timetrackings]
  
  Example: ungrouptasksand_materials

```json

{

  "id": "01866e6f-f264-7fe5-8b7c-a3f739fa292c",

  "delete_strategy": "ungroup_tasks_and_materials"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projectGroups.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"01866e6f-f264-7fe5-8b7c-a3f739fa292c\",\n  \"delete_strategy\": \"ungroup_tasks_and_materials\"\n}", null, "application/json");
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
  "id": "01866e6f-f264-7fe5-8b7c-a3f739fa292c",
  "delete_strategy": "ungroup_tasks_and_materials"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projectGroups.duplicate

Next  
\
projectGroups.assign
