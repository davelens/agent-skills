---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-delete
title: projects.delete | Teamleader Developers
words: 196
---
- [](/)
- API Reference
- New Projects
- Projects
- projects.delete

projects.delete

```
POST https://api.focus.teamleader.eu/projects-v2/projects.delete
```

Delete a project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 81df9996-6d2c-4844-86d6-202c08d2837e
  
  delete\_strategystringrequired
  
  Possible values: \[unlinktasksandtimetrackings, deletetasksandtimetrackings, deletetasksunlinktimetrackings]
  
  Example: unlinktasksandtimetrackings

```json

{

  "id": "81df9996-6d2c-4844-86d6-202c08d2837e",

  "delete_strategy": "unlink_tasks_and_time_trackings"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projects.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"81df9996-6d2c-4844-86d6-202c08d2837e\",\n  \"delete_strategy\": \"unlink_tasks_and_time_trackings\"\n}", null, "application/json");
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
  "delete_strategy": "unlink_tasks_and_time_trackings"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.duplicate

Next  
\
projects.addOwner
