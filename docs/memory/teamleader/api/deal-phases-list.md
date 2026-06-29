---
url: https://developer.focus.teamleader.eu/docs/api/deal-phases-list
title: dealPhases.list | Teamleader Developers
words: 378
---
- [](/)
- API Reference
- Deals
- Deal Phases
- dealPhases.list

dealPhases.list

```
POST https://api.focus.teamleader.eu/dealPhases.list
```

Get a list of all phases a deal can go through, sorted by their order in the flow.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  deal\pipeline\idstring
  
  Example: 53a7e592-a136-4bae-ae15-517befd3d75d
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "filter": {

    "ids": [

      "53a7e592-a136-4bae-ae15-517befd3d75d",

      "bb50af79-55cd-4be0-8306-e9626c70a90f"

    ],

    "deal_pipeline_id": "53a7e592-a136-4bae-ae15-517befd3d75d"

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
  
  Example: 21efc56e-1ba8-469d-926a-e89502591b47
  
  namestring
  
  Example: New
  
  actionsstring\[]
  
  Only returned when user has access to planning and deal automation
  
  Possible values: \[createevent, createcall, create_task]
  
  requires\attention\after object
  
  Time period in this phase after which a deal requires attention
  
  amountnumber
  
  Example: 7
  
  unitstring
  
  Possible values: \[days, weeks]
  
  Example: days
  
  probabilitynumber
  
  Example: 0.75
  
  ]

```json

{

  "data": [

    {

      "id": "21efc56e-1ba8-469d-926a-e89502591b47",

      "name": "New",

      "actions": [

        "create_event"

      ],

      "requires_attention_after": {

        "amount": 7,

        "unit": "days"

      },

      "probability": 0.75

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "21efc56e-1ba8-469d-926a-e89502591b47",

      "name": "New",

      "actions": [

        "create_event"

      ],

      "requires_attention_after": {

        "amount": 7,

        "unit": "days"

      },

      "probability": 0.75

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealPhases.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"53a7e592-a136-4bae-ae15-517befd3d75d\",\n      \"bb50af79-55cd-4be0-8306-e9626c70a90f\"\n    ],\n    \"deal_pipeline_id\": \"53a7e592-a136-4bae-ae15-517befd3d75d\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
      "53a7e592-a136-4bae-ae15-517befd3d75d",
      "bb50af79-55cd-4be0-8306-e9626c70a90f"
    ],
    "deal_pipeline_id": "53a7e592-a136-4bae-ae15-517befd3d75d"
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
Deal Phases

Next  
\
dealPhases.create
