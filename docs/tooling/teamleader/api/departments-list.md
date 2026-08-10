---
url: https://developer.focus.teamleader.eu/docs/api/departments-list
title: departments.list | Teamleader Developers
words: 415
---
- [](/)
- API Reference
- General
- Departments
- departments.list

departments.list

```
POST https://api.focus.teamleader.eu/departments.list
```

Get a list of departments.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  Example: ["92296ad0-2d61-4179-b174-9f354ca2157f","53635682-c382-4fbf-9fd9-9506ca4fbcdd"]
  
  statusstring\[]
  
  Filters on status:
  
  - active - Filters on active departments
  - archived - Filters on archived departments
  
  Possible values: \[active, archived]
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  - default_department - When sorting ascending, default departments are listed first.
  - name - Sorts by department name.
  - created_at - Sorts by department creation date.
  
  Possible values: \[defaultdepartment, name, createdat]
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  ]

```json

{

  "filter": {

    "ids": [

      "92296ad0-2d61-4179-b174-9f354ca2157f",

      "53635682-c382-4fbf-9fd9-9506ca4fbcdd"

    ],

    "status": [

      "active"

    ]

  },

  "sort": [

    {

      "field": "default_department",

      "order": "asc"

    }

  ]

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
  
  Example: 67c576e7-7e6f-465d-b6ab-a864f6e5e95b
  
  namestring
  
  Example: Human Resources
  
  vat\_numberstring
  
  Example: BE0899623035
  
  currencystring
  
  Example: EUR
  
  emails object\[]
  
  Array [
  
  typestring
  
  Possible values: \[primary, invoicing]
  
  Example: primary
  
  emailstring
  
  Example: info@piedpiper.eu
  
  ]
  
  statusstring
  
  Possible values: \[active, archived]
  
  Example: active
  
  ]

```json

{

  "data": [

    {

      "id": "67c576e7-7e6f-465d-b6ab-a864f6e5e95b",

      "name": "Human Resources",

      "vat_number": "BE0899623035",

      "currency": "EUR",

      "emails": [

        {

          "type": "primary",

          "email": "info@piedpiper.eu"

        }

      ],

      "status": "active"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "67c576e7-7e6f-465d-b6ab-a864f6e5e95b",

      "name": "Human Resources",

      "vat_number": "BE0899623035",

      "currency": "EUR",

      "emails": [

        {

          "type": "primary",

          "email": "info@piedpiper.eu"

        }

      ],

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/departments.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"92296ad0-2d61-4179-b174-9f354ca2157f\",\n      \"53635682-c382-4fbf-9fd9-9506ca4fbcdd\"\n    ],\n    \"status\": [\n      \"active\"\n    ]\n  },\n  \"sort\": [\n    {\n      \"field\": \"default_department\",\n      \"order\": \"asc\"\n    }\n  ]\n}", null, "application/json");
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

```json
{
  "filter": {
    "ids": [
      "92296ad0-2d61-4179-b174-9f354ca2157f",
      "53635682-c382-4fbf-9fd9-9506ca4fbcdd"
    ],
    "status": [
      "active"
    ]
  },
  "sort": [
    {
      "field": "default_department",
      "order": "asc"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Departments

Next  
\
departments.info
