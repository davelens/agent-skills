---
url: https://developer.focus.teamleader.eu/docs/api/tickets-list
title: tickets.list | Teamleader Developers
words: 535
---
- [](/)
- API Reference
- Tickets
- Tickets
- tickets.list

tickets.list

```
POST https://api.focus.teamleader.eu/tickets.list
```

Get a list of tickets.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  relates\_to object
  
  Only lists tickets related to given type.
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  project\_idsstring\[]
  
  an array of project ids
  
  exclude object
  
  status\_idsstring\[]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "filter": {

    "ids": [

      "8607faa8-3d2e-0a66-a71e-e69f447a2ed1",

      "21467288-3baa-0027-a910-cd952030dbc2"

    ],

    "relates_to": {

      "type": "contact",

      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

    },

    "project_ids": [

      "082e6289-30c5-45ad-bcd0-190b02d21e81"

    ],

    "exclude": {

      "status_ids": [

        "a344c251-2494-0013-b433-ccee8e8435e6",

        "c11dc02c-3556-0daf-8035-c5b0376eb928"

      ]

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

- application/json

<!--THE END-->

- Schema
- Example (auto)
- Example

Schema

- data object\[]
  
  Array [
  
  idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  referencenumber
  
  Example: 123
  
  subjectstring
  
  status object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  assignee objectnullable
  
  Null if unassigned
  
  typestring
  
  Example: user
  
  idstring
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  created\_atstring
  
  Example: 2017-05-09T11:25:11+00:00
  
  closed\_atstringnullable
  
  Example: 2017-05-09T11:25:11+00:00
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  participant objectnullable
  
  customer object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  project objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  milestone objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  last\message\atstringnullable
  
  Example: 2017-05-09T11:25:11+00:00
  
  ]

```json

{

  "data": [

    {

      "id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "reference": 123,

      "subject": "",

      "status": {

        "type": "ticketStatus",

        "id": "aba0ad66-bf59-49fa-b546-45dcbc5e7e6e"

      },

      "assignee": {

        "type": "user",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      },

      "created_at": "2017-05-09T11:25:11+00:00",

      "closed_at": "2017-05-09T11:25:11+00:00",

      "customer": {

        "type": "contact",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      },

      "participant": {

        "customer": {

          "type": "company",

          "id": "f29abf48-337d-44b4-aad4-585f5277a456"

        }

      },

      "project": {

        "type": "project",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      },

      "milestone": {

        "type": "milestone",

        "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

      },

      "last_message_at": "2017-05-09T11:25:11+00:00"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "reference": 123,

      "subject": "",

      "status": {

        "type": "ticketStatus",

        "id": "aba0ad66-bf59-49fa-b546-45dcbc5e7e6e"

      },

      "assignee": {

        "type": "user",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      },

      "created_at": "2017-05-09T11:25:11+00:00",

      "closed_at": "2017-05-09T11:25:11+00:00",

      "customer": {

        "type": "contact",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      },

      "participant": {

        "customer": {

          "type": "company",

          "id": "f29abf48-337d-44b4-aad4-585f5277a456"

        }

      },

      "project": {

        "type": "project",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      },

      "milestone": {

        "type": "milestone",

        "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

      },

      "last_message_at": "2017-05-09T11:25:11+00:00"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tickets.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"8607faa8-3d2e-0a66-a71e-e69f447a2ed1\",\n      \"21467288-3baa-0027-a910-cd952030dbc2\"\n    ],\n    \"relates_to\": {\n      \"type\": \"contact\",\n      \"id\": \"2659dc4d-444b-4ced-b51c-b87591f604d7\"\n    },\n    \"project_ids\": [\n      \"082e6289-30c5-45ad-bcd0-190b02d21e81\"\n    ],\n    \"exclude\": {\n      \"status_ids\": [\n        \"a344c251-2494-0013-b433-ccee8e8435e6\",\n        \"c11dc02c-3556-0daf-8035-c5b0376eb928\"\n      ]\n    }\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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

Body

- Example (from schema)
- Example

```json
{
  "filter": {
    "ids": [
      "8607faa8-3d2e-0a66-a71e-e69f447a2ed1",
      "21467288-3baa-0027-a910-cd952030dbc2"
    ],
    "relates_to": {
      "type": "contact",
      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"
    },
    "project_ids": [
      "082e6289-30c5-45ad-bcd0-190b02d21e81"
    ],
    "exclude": {
      "status_ids": [
        "a344c251-2494-0013-b433-ccee8e8435e6",
        "c11dc02c-3556-0daf-8035-c5b0376eb928"
      ]
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
Tickets

Next  
\
tickets.info
