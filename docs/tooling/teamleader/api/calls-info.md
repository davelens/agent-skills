---
url: https://developer.focus.teamleader.eu/docs/api/calls-info
title: calls.info | Teamleader Developers
words: 458
---
- [](/)
- API Reference
- Calendar
- Calls
- calls.info

calls.info

```
POST https://api.focus.teamleader.eu/calls.info
```

Get information about a call.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 6fac0bf0-e803-424e-af67-76863a3d7d16

```json

{

  "id": "6fac0bf0-e803-424e-af67-76863a3d7d16"

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

- data object
  
  idstring
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  added\_atstringnullable
  
  Example: 2016-02-01T16:44:33+00:00
  
  completed\_atstringnullable
  
  Example: 2016-02-04T16:44:33+00:00
  
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
  
  Example: Description of the call
  
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
  
  Example: 2016-02-04T16:00:00+00:00
  
  statusstring
  
  Possible values: \[open, completed]
  
  Example: open
  
  deal objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  custom\_fields object\[]
  
  Array [
  
  definition object
  
  typestring
  
  Example: customFieldDefinition
  
  idstring
  
  Example: bf6765de-56eb-40ec-ad14-9096c5dc5fe1
  
  value object
  
  oneOf
  
  - string
  - numbers
  - multiple selection
  - boolean
  - object
  
  string
  
  For strings
  
  Example: 092980616
  
  ]

```json

{

  "data": {

    "id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

    "added_at": "2016-02-01T16:44:33+00:00",

    "completed_at": "2016-02-04T16:44:33+00:00",

    "participant": {

      "customer": {

        "type": "company",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      },

      "contact": {

        "type": "contact",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      }

    },

    "description": "Description of the call",

    "outcome": {

      "type": "callOutcome",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "outcome_summary": "Called, but was not available",

    "assignee": {

      "type": "user",

      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

    },

    "scheduled_at": "2016-02-04T16:00:00+00:00",

    "status": "open",

    "deal": {

      "id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "type": "deal"

    },

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ]

  }

}
```

```json

{

  "data": {

    "id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

    "added_at": "2016-02-01T16:44:33+00:00",

    "completed_at": "2016-02-04T16:44:33+00:00",

    "participant": {

      "customer": {

        "type": "company",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      },

      "contact": {

        "type": "contact",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      }

    },

    "description": "Description of the call",

    "outcome": {

      "type": "callOutcome",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "outcome_summary": "Called, but was not available",

    "assignee": {

      "type": "user",

      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

    },

    "scheduled_at": "2016-02-04T16:00:00+00:00",

    "status": "open",

    "deal": {

      "id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "type": "deal"

    },

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/calls.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"6fac0bf0-e803-424e-af67-76863a3d7d16\"\n}", null, "application/json");
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
  "id": "6fac0bf0-e803-424e-af67-76863a3d7d16"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
calls.list

Next  
\
calls.add
