---
url: https://developer.focus.teamleader.eu/docs/api/tickets-info
title: tickets.info | Teamleader Developers
words: 461
---
- [](/)
- API Reference
- Tickets
- Tickets
- tickets.info

tickets.info

```
POST https://api.focus.teamleader.eu/tickets.info
```

Get details for a single ticket.

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

  "id": "f29abf48-337d-44b4-aad4-585f5277a456"

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

- idstring
  
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
  
  last\message\atstringnullable
  
  Example: 2017-05-09T11:25:11+00:00
  
  descriptionstring
  
  Example: My ticket details
  
  project objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  milestone objectnullable
  
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

  "last_message_at": "2017-05-09T11:25:11+00:00",

  "description": "My ticket details",

  "project": {

    "type": "project",

    "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

  },

  "milestone": {

    "type": "milestone",

    "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

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
```

```json

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

  "last_message_at": "2017-05-09T11:25:11+00:00",

  "description": "My ticket details",

  "project": {

    "type": "project",

    "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

  },

  "milestone": {

    "type": "milestone",

    "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tickets.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n}", null, "application/json");
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
  "id": "f29abf48-337d-44b4-aad4-585f5277a456"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tickets.list

Next  
\
tickets.create
