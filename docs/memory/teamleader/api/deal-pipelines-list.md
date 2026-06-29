---
url: https://developer.focus.teamleader.eu/docs/api/deal-pipelines-list
title: dealPipelines.list | Teamleader Developers
words: 354
---
- [](/)
- API Reference
- Deals
- Deal Pipelines
- dealPipelines.list

dealPipelines.list

```
POST https://api.focus.teamleader.eu/dealPipelines.list
```

Get a list of all deal pipelines.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  statusstring\[]
  
  Possible values: \[open, pending_deletion]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "filter": {

    "ids": [

      "string"

    ],

    "status": [

      "open"

    ]

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
  
  Example: 811a5825-96f4-4318-83c3-2840935c6003
  
  namestring
  
  ]
  
  meta object
  
  Only included with request parameter includes=pagination
  
  page object
  
  sizenumber
  
  Example: 10
  
  numbernumber
  
  Example: 2
  
  matchesnumber
  
  Only included with request parameter includes=pagination
  
  Example: 12
  
  defaultstring
  
  Example: f350e48a-fbc3-0a79-e62a-53aa1ae86d44

```json

{

  "data": [

    {

      "id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44",

      "name": "Main Pipeline"

    }

  ],

  "meta": {

    "default": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44",

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

  }

}
```

```json

{

  "data": [

    {

      "id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44",

      "name": "Main Pipeline"

    }

  ],

  "meta": {

    "default": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44",

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealPipelines.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ],\n    \"status\": [\n      \"open\"\n    ]\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
    "status": [
      "open"
    ]
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
Deal Pipelines

Next  
\
dealPipelines.create
