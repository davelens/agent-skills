---
url: https://developer.focus.teamleader.eu/docs/api/mail-templates-list
title: mailTemplates.list | Teamleader Developers
words: 365
---
- [](/)
- API Reference
- Templates
- Mail Templates
- mailTemplates.list

mailTemplates.list

```
POST https://api.focus.teamleader.eu/mailTemplates.list
```

Get a list of all mail templates.

Request​

- application/json;charset=utf-8

<!--THE END-->

- Body
- Example

Bodyrequired

- filter objectrequired
  
  department\_idstring
  
  Example: a344c251-2494-0013-b433-ccee8e8435e5
  
  typestringrequired
  
  Possible values: \[invoice, quotation, workorder, creditnote]
  
  Example: invoice

```shell

{

  "filter": {

    "department_id": "a344c251-2494-0013-b433-ccee8e8435e5",

    "type": "invoice"

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
  
  department objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  namestring
  
  Example: Send link in english
  
  content object
  
  subjectstring
  
  Example: Link for document
  
  bodystring
  
  Example: #LINK \n<link> Thank you for using our services
  
  languagestring
  
  Example: en
  
  typestring
  
  Possible values: \[invoice, quotation, workorder, creditnote]
  
  Example: invoice
  
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

      "name": "Send link in english",

      "content": {

        "subject": "Link for document",

        "body": "#LINK \\n<link> Thank you for using our services"

      },

      "language": "en",

      "type": "invoice"

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

      "name": "Send link in english",

      "content": {

        "subject": "Link for document",

        "body": "#LINK \\n<link> Thank you for using our services"

      },

      "language": "en",

      "type": "invoice"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/mailTemplates.list");
request.Headers.Add("Accept", "application/json;charset=utf-8");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"department_id\": \"a344c251-2494-0013-b433-ccee8e8435e5\",\n    \"type\": \"invoice\"\n  }\n}", null, "application/json;charset=utf-8");
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
    "type": "invoice"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Mail Templates

Next  
\
Migrating
