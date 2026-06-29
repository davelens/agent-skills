---
url: https://developer.focus.teamleader.eu/docs/api/notes-update
title: notes.update | Teamleader Developers
words: 199
---
- [](/)
- API Reference
- General
- Notes
- notes.update

notes.update

```
POST https://api.focus.teamleader.eu/notes.update
```

Update an existing note.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 36386b05-936e-4cc0-9523-bd20d797ebf5
  
  contentstring
  
  Example: new note content

```json

{

  "id": "36386b05-936e-4cc0-9523-bd20d797ebf5",

  "content": "new note content"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/notes.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"36386b05-936e-4cc0-9523-bd20d797ebf5\",\n  \"content\": \"new note content\"\n}", null, "application/json");
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
  "id": "36386b05-936e-4cc0-9523-bd20d797ebf5",
  "content": "new note content"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
notes.create

Next  
\
notes.delete
