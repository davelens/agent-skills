---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-tasks-delete
title: tasks.delete | Teamleader Developers
words: 195
---
- [](/)
- API Reference
- New Projects
- Tasks
- tasks.delete

tasks.delete

```
POST https://api.focus.teamleader.eu/projects-v2/tasks.delete
```

Delete a task.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: ff19a113-50ba-4afc-9fff-2e5c5c5a5485
  
  delete\_strategystringrequired
  
  Possible values: \[unlinktimetracking, deletetimetracking]
  
  Example: unlinktimetracking

```json

{

  "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485",

  "delete_strategy": "unlink_time_tracking"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/tasks.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"ff19a113-50ba-4afc-9fff-2e5c5c5a5485\",\n  \"delete_strategy\": \"unlink_time_tracking\"\n}", null, "application/json");
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
  "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485",
  "delete_strategy": "unlink_time_tracking"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tasks.duplicate

Next  
\
tasks.assign
