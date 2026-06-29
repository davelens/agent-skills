---
url: https://developer.focus.teamleader.eu/docs/api/work-types-list
title: workTypes.list | Teamleader Developers
words: 336
---
- [](/)
- API Reference
- General
- Work Types
- workTypes.list

workTypes.list

```
POST https://api.focus.teamleader.eu/workTypes.list
```

Get a list of all work types, sorted alphabetically (on their name).

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  termstring
  
  Searches in the work type name only
  
  Example: design
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object
  
  fieldstringrequired
  
  Default value: name
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  Default value: asc

```json

{

  "filter": {

    "ids": [

      "string"

    ],

    "term": "design"

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": {

    "field": "name",

    "order": "asc"

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
  
  Example: 811a5825-96f4-4318-83c3-2840935c6003
  
  namestring
  
  ]

```json

{

  "data": [

    {

      "id": "811a5825-96f4-4318-83c3-2840935c6003",

      "name": "Planning"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "811a5825-96f4-4318-83c3-2840935c6003",

      "name": "Planning"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/workTypes.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ],\n    \"term\": \"design\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": {\n    \"field\": \"name\",\n    \"order\": \"asc\"\n  }\n}", null, "application/json");
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
      "string"
    ],
    "term": "design"
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": {
    "field": "name",
    "order": "asc"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Work Types

Next  
\
Document Templates
