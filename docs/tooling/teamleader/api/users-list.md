---
url: https://developer.focus.teamleader.eu/docs/api/users-list
title: users.list | Teamleader Developers
words: 503
---
- [](/)
- API Reference
- General
- Users
- users.list

users.list

```
POST https://api.focus.teamleader.eu/users.list
```

Get a list of all users.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  termstring
  
  Filters on first name, last name, email and function
  
  Example: John
  
  statusstring\[]
  
  Filters on status:
  
  - active - Filters on active users
  - deactivated - Filters on deactivated users
  
  Possible values: \[active, deactivated]
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[firstname, lastname, email, function]
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  ]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "filter": {

    "ids": [

      "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

      "f8a57a6f-dd1e-41a3-b8d3-428663f1d09e"

    ],

    "term": "John",

    "status": [

      "active",

      "deactivated"

    ]

  },

  "sort": [

    {

      "field": "first_name"

    }

  ],

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
  
  Example: cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5
  
  account object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: account
  
  first\_namestring
  
  Example: John
  
  last\_namestring
  
  Example: Smith
  
  emailstring
  
  Example: john@teamleader.eu
  
  telephones object\[]
  
  Array [
  
  typestring
  
  Possible values: \[phone, mobile, fax]
  
  Example: phone
  
  numberstring
  
  Example: 092980615
  
  ]
  
  languagestring
  
  Example: nl
  
  functionstring
  
  Example: Sales
  
  statusstring
  
  Possible values: \[active, deactivated]
  
  Example: active
  
  teams object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: team
  
  ]
  
  ]

```json

{

  "data": [

    {

      "id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

      "account": {

        "type": "account",

        "id": "0fc55513-7f68-4865-aba0-de5da9e4e43d"

      },

      "first_name": "John",

      "last_name": "Smith",

      "email": "john@teamleader.eu",

      "telephones": [

        {

          "type": "phone",

          "number": "092980615"

        }

      ],

      "language": "nl",

      "function": "Sales",

      "status": "active",

      "teams": [

        {

          "type": "team",

          "id": "6dd0069e-45da-0ec4-911a-afb351d968cd"

        }

      ]

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

      "account": {

        "type": "account",

        "id": "0fc55513-7f68-4865-aba0-de5da9e4e43d"

      },

      "first_name": "John",

      "last_name": "Smith",

      "email": "john@teamleader.eu",

      "telephones": [

        {

          "type": "phone",

          "number": "092980615"

        }

      ],

      "language": "nl",

      "function": "Sales",

      "status": "active",

      "teams": [

        {

          "type": "team",

          "id": "6dd0069e-45da-0ec4-911a-afb351d968cd"

        }

      ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/users.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5\",\n      \"f8a57a6f-dd1e-41a3-b8d3-428663f1d09e\"\n    ],\n    \"term\": \"John\",\n    \"status\": [\n      \"active\",\n      \"deactivated\"\n    ]\n  },\n  \"sort\": [\n    {\n      \"field\": \"first_name\"\n    }\n  ],\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
      "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",
      "f8a57a6f-dd1e-41a3-b8d3-428663f1d09e"
    ],
    "term": "John",
    "status": [
      "active",
      "deactivated"
    ]
  },
  "sort": [
    {
      "field": "first_name"
    }
  ],
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
users.me

Next  
\
users.info
