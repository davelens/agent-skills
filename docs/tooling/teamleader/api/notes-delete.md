---
url: https://developer.focus.teamleader.eu/docs/api/notes-delete
title: notes.delete | Teamleader Developers
words: 182
---
- [](/)
- API Reference
- General
- Notes
- notes.delete

notes.delete

```
POST https://api.focus.teamleader.eu/notes.delete
```

Delete a note.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 36386b05-936e-4cc0-9523-bd20d797ebf5

```json

{

  "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/notes.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"36386b05-936e-4cc0-9523-bd20d797ebf5\"\n}", null, "application/json");
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
  "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
notes.update

Next  
\
Email Tracking
