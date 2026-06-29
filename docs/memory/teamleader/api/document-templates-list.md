---
url: https://developer.focus.teamleader.eu/docs/api/document-templates-list
title: documentTemplates.list | Teamleader Developers
words: 366
---
- [](/)
- API Reference
- General
- Document Templates
- documentTemplates.list

documentTemplates.list

```
POST https://api.focus.teamleader.eu/documentTemplates.list
```

Get a list of all document templates.

Request​

- application/json;charset=utf-8

<!--THE END-->

- Body
- Example

Bodyrequired

- filter objectrequired
  
  department\_idstringrequired
  
  Example: a344c251-2494-0013-b433-ccee8e8435e5
  
  document\_typeDocumentTyperequired
  
  Possible values: \[deliverynote, invoice, order, orderconfirmation, quotation, timetracking_report, workorder]
  
  Example: invoice
  
  statusstring\[]
  
  Filters on status:
  
  - active - Filters on active departments
  - archived - Filters on archived departments
  
  Possible values: \[active, archived]

```shell

{

  "filter": {

    "department_id": "a344c251-2494-0013-b433-ccee8e8435e5",

    "document_type": "invoice",

    "status": [

      "active",

      "archived"

    ]

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
  
  department object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: department
  
  document\_typeDocumentType
  
  Possible values: \[deliverynote, invoice, order, orderconfirmation, quotation, timetracking_report, workorder]
  
  Example: invoice
  
  is\_defaultboolean
  
  Example: true
  
  namestring
  
  Example: new logo
  
  statusstring
  
  Possible values: \[active, archived]
  
  Example: active
  
  ]

```json

{

  "data": [

    {

      "id": "a344c251-2494-0013-b433-ccee8e8435e5",

      "department": {

        "type": "department",

        "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

      },

      "document_type": "invoice",

      "is_default": true,

      "name": "new logo",

      "status": "active"

    }

  ]

}
```

```shell

{

  "data": [

    {

      "id": "a344c251-2494-0013-b433-ccee8e8435e5",

      "department": {

        "type": "department",

        "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

      },

      "document_type": "invoice",

      "is_default": true,

      "name": "new logo",

      "status": "active"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/documentTemplates.list");
request.Headers.Add("Accept", "application/json;charset=utf-8");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"department_id\": \"a344c251-2494-0013-b433-ccee8e8435e5\",\n    \"document_type\": \"invoice\",\n    \"status\": [\n      \"active\",\n      \"archived\"\n    ]\n  }\n}", null, "application/json;charset=utf-8");
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
    "department_id": "a344c251-2494-0013-b433-ccee8e8435e5",
    "document_type": "invoice",
    "status": [
      "active",
      "archived"
    ]
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Document Templates

Next  
\
Currencies
