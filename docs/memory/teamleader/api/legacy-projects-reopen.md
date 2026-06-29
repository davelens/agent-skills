---
url: https://developer.focus.teamleader.eu/docs/api/legacy-projects-reopen
title: projects.reopen | Teamleader Developers
words: 188
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Projects
- projects.reopen

projects.reopen

```
POST https://api.focus.teamleader.eu/projects.reopen
```

Reopens a project, changing its status to "active".

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 01548b10-4932-4a18-8a89-005ad09db2c8

```json

{

  "id": "01548b10-4932-4a18-8a89-005ad09db2c8"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects.reopen");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"01548b10-4932-4a18-8a89-005ad09db2c8\"\n}", null, "application/json");
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
  "id": "01548b10-4932-4a18-8a89-005ad09db2c8"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.close

Next  
\
projects.delete
