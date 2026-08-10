---
url: https://developer.focus.teamleader.eu/docs/api/notes-list
title: notes.list | Teamleader Developers
words: 357
---
- [](/)
- API Reference
- General
- Notes
- notes.list

notes.list

```
POST https://api.focus.teamleader.eu/notes.list
```

Get a list of all notes.

Request​

- application/json;charset=utf-8

<!--THE END-->

- Body
- Example

Bodyrequired

- filter objectrequired
  
  subject objectrequired
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typeNoteSubjectTypesrequired
  
  Possible values: \[company, contact, creditNote, deal, invoice, meeting, nextgenProject, product, project, quotation, subscription]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```shell

{

  "filter": {

    "subject": {

      "type": "contact",

      "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

    }

  },

  "page": {

    "size": 20,

    "number": 1

  }

}
```

Responses​

- 200

Response Headers

<!--THE END-->

- application/json;charset=utf-8

<!--THE END-->

- Schema
- Example (auto)
- Example

Schema

- data object\[]
  
  Array [
  
  idstring
  
  Example: a344c251-2494-0013-b433-ccee8e8435e5
  
  contentstring
  
  Example: new note content
  
  subject object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typeNoteSubjectTypes
  
  Possible values: \[company, contact, creditNote, deal, invoice, meeting, nextgenProject, product, project, quotation, subscription]
  
  added\_atstring
  
  Example: 2016-01-01T00:00:00+00:00
  
  ]

```json

{

  "data": [

    {

      "id": "a344c251-2494-0013-b433-ccee8e8435e5",

      "content": "new note content",

      "subject": {

        "type": "contact",

        "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

      },

      "added_at": "2016-01-01T00:00:00+00:00"

    }

  ]

}
```

```shell

{

  "data": [

    {

      "id": "a344c251-2494-0013-b433-ccee8e8435e5",

      "content": "new note content",

      "subject": {

        "type": "contact",

        "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

      },

      "added_at": "2016-01-01T00:00:00+00:00"

    }

  ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/notes.list");
request.Headers.Add("Accept", "application/json;charset=utf-8");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"subject\": {\n      \"type\": \"contact\",\n      \"id\": \"36386b05-936e-4cc0-9523-bd20d797ebf5\"\n    }\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json;charset=utf-8");
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
  "filter": {
    "subject": {
      "type": "contact",
      "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"
    }
  },
  "page": {
    "size": 20,
    "number": 1
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Notes

Next  
\
notes.create
