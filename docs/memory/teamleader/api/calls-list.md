---
url: https://developer.focus.teamleader.eu/docs/api/calls-list
title: calls.list | Teamleader Developers
words: 580
---
- [](/)
- API Reference
- Calendar
- Calls
- calls.list

calls.list

```
POST https://api.focus.teamleader.eu/calls.list
```

Get a list of calls.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  scheduled\_afterstring
  
  Filter on calls occurring on or after a given date
  
  Example: 2021-11-21
  
  scheduled\_beforestring
  
  Filter on calls occurring on or before a given date
  
  Example: 2022-05-13
  
  relates\_to object
  
  Filter calls by related object (currently only companies allowed)
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: company
  
  call\outcome\idstring
  
  Filter on completed calls by outcome
  
  Example: 6bd20dd8-dc3f-0e68-8919-dee0be6efe55
  
  page object
  
  sizenumber
  
  The amount of entries returned per request, max 1 to 100
  
  Default value: 20
  
  numbernumber
  
  The current page, the first page is 1
  
  Default value: 1

```json

{

  "filter": {

    "scheduled_after": "2021-11-21",

    "scheduled_before": "2022-05-13",

    "relates_to": {

      "id": "415fa7e0-e319-0952-b973-f067f2b49d56",

      "type": "company"

    },

    "call_outcome_id": "6bd20dd8-dc3f-0e68-8919-dee0be6efe55"

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
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  added\_atstringnullable
  
  Example: 2021-11-21T18:14:15+00:00
  
  participant objectnullable
  
  customer objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  contact objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  descriptionstringnullable
  
  Example: Call with customer
  
  outcome objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  outcome\_summarystringnullable
  
  Example: Called, but was not available
  
  assignee objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  scheduled\_atstring
  
  Example: 2021-11-21T19:14:15+00:00
  
  statusstring
  
  Possible values: \[open, completed]
  
  Example: open
  
  deal objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  meta object
  
  Only included with request parameter includes=pagination
  
  page object
  
  sizenumber
  
  Example: 10
  
  numbernumber
  
  Example: 2
  
  matchesnumber
  
  Example: 12

```json

{

  "data": [

    {

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

      "added_at": "2021-11-21T18:14:15+00:00",

      "participant": {

        "customer": {

          "type": "company",

          "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

        },

        "contact": {

          "type": "contact",

          "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

        }

      },

      "description": "Call with customer",

      "outcome": {

        "type": "callOutcome",

        "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

      },

      "outcome_summary": "Called, but was not available",

      "assignee": {

        "id": "f29abf48-337d-44b4-aad4-585f5277a456",

        "type": "user"

      },

      "scheduled_at": "2021-11-21T19:14:15+00:00",

      "status": "open",

      "deal": {

        "id": "f29abf48-337d-44b4-aad4-585f5277a456",

        "type": "deal"

      }

    }

  ],

  "meta": {

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

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

      "added_at": "2021-11-21T18:14:15+00:00",

      "participant": {

        "customer": {

          "type": "company",

          "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

        },

        "contact": {

          "type": "contact",

          "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

        }

      },

      "description": "Call with customer",

      "outcome": {

        "type": "callOutcome",

        "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

      },

      "outcome_summary": "Called, but was not available",

      "assignee": {

        "id": "f29abf48-337d-44b4-aad4-585f5277a456",

        "type": "user"

      },

      "scheduled_at": "2021-11-21T19:14:15+00:00",

      "status": "open",

      "deal": {

        "id": "f29abf48-337d-44b4-aad4-585f5277a456",

        "type": "deal"

      }

    }

  ],

  "meta": {

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/calls.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"scheduled_after\": \"2021-11-21\",\n    \"scheduled_before\": \"2022-05-13\",\n    \"relates_to\": {\n      \"id\": \"415fa7e0-e319-0952-b973-f067f2b49d56\",\n      \"type\": \"company\"\n    },\n    \"call_outcome_id\": \"6bd20dd8-dc3f-0e68-8919-dee0be6efe55\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
    "scheduled_after": "2021-11-21",
    "scheduled_before": "2022-05-13",
    "relates_to": {
      "id": "415fa7e0-e319-0952-b973-f067f2b49d56",
      "type": "company"
    },
    "call_outcome_id": "6bd20dd8-dc3f-0e68-8919-dee0be6efe55"
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
Calls

Next  
\
calls.info
