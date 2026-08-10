---
url: https://developer.focus.teamleader.eu/docs/api/notes-create
title: notes.create | Teamleader Developers
words: 315
---
- [](/)
- API Reference
- General
- Notes
- notes.create

notes.create

```
POST https://api.focus.teamleader.eu/notes.create
```

Create a new note.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- subject objectrequired
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typeNoteSubjectTypesrequired
  
  Possible values: \[company, contact, creditNote, deal, invoice, meeting, nextgenProject, product, quotation, subscription]
  
  contentstringrequired
  
  Example: new note content
  
  notify object\[]
  
  Array [
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[user]
  
  Example: user
  
  ]

```json

{

  "subject": {

    "type": "contact",

    "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

  },

  "content": "new note content",

  "notify": [

    {

      "type": "user",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    }

  ]

}
```

Responses​

- 201

Response Headers

<!--THE END-->

- application/json

<!--THE END-->

- Schema
- Example (auto)
- Example

Schema

- data object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "note",

    "id": "ee94b4c0-5786-0517-9d26-8dd1e6406f20"

  }

}
```

```json

{

  "data": {

    "type": "note",

    "id": "ee94b4c0-5786-0517-9d26-8dd1e6406f20"

  }

}
```

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/notes.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"subject\": {\n    \"type\": \"contact\",\n    \"id\": \"36386b05-936e-4cc0-9523-bd20d797ebf5\"\n  },\n  \"content\": \"new note content\",\n  \"notify\": [\n    {\n      \"type\": \"user\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    }\n  ]\n}", null, "application/json");
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
  "subject": {
    "type": "contact",
    "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"
  },
  "content": "new note content",
  "notify": [
    {
      "type": "user",
      "id": "f29abf48-337d-44b4-aad4-585f5277a456"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
notes.list

Next  
\
notes.update
