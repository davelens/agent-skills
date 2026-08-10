---
url: https://developer.focus.teamleader.eu/docs/api/meetings-info
title: meetings.info | Teamleader Developers
words: 568
---
- [](/)
- API Reference
- Calendar
- Meetings
- meetings.info

meetings.info

```
POST https://api.focus.teamleader.eu/meetings.info
```

Get information about a meeting.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 70af3fdd-b037-0936-ad1a-6d784dd44cf4
  
  includesstring
  
  when used, the response will include tracked_time
  
  Example: tracked_time

```json

{

  "id": "70af3fdd-b037-0936-ad1a-6d784dd44cf4",

  "includes": "tracked_time"

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

Schema

- data object
  
  idstring
  
  Example: 70af3fdd-b037-0936-ad1a-6d784dd44cf4
  
  titlestring
  
  Example: My meeting
  
  descriptionstring
  
  Example: My meeting description
  
  created\_atstring
  
  Example: 2020-02-01T10:33:45+00:00
  
  created\_by objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: user
  
  scheduled\_atstring
  
  Example: 2020-02-04T16:44:33+00:00
  
  duration object
  
  unitstring
  
  Possible values: \[min]
  
  Example: min
  
  valuenumber
  
  Example: 60
  
  tracked\_time object
  
  Only included with request parameter includes=tracked_time
  
  total object
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[min]
  
  Example: min
  
  estimated\_time object
  
  Only included with request parameter includes=estimated_time
  
  total object
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[s]
  
  Example: s
  
  customer objectnullable
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  project objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Possible values: \[project, nextgenProject]
  
  Example: project
  
  milestone objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  group objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  deal objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  location object
  
  oneOf
  
  - With type string
  - With type & address
  - With id, type & address
  
  typestring
  
  Possible values: \[virtual, calendarResource]
  
  Example: virtual
  
  customer\meeting\room objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  attendees object\[]
  
  Array [
  
  typestring
  
  Possible values: \[user, contact]
  
  Example: user
  
  idstring
  
  Example: 6ddd2666-65a0-497f-9f01-54c4343ec1a6
  
  ]
  
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
  
  statusstring
  
  Possible values: \[open, done]
  
  recurrence objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  workOrder objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "id": "70af3fdd-b037-0936-ad1a-6d784dd44cf4",

    "title": "My meeting",

    "description": "My meeting description",

    "created_at": "2020-02-01T10:33:45+00:00",

    "created_by": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "user"

    },

    "scheduled_at": "2020-02-04T16:44:33+00:00",

    "duration": {

      "unit": "min",

      "value": 60

    },

    "tracked_time": {

      "total": {

        "value": 60,

        "unit": "min"

      }

    },

    "estimated_time": {

      "total": {

        "value": 60,

        "unit": "s"

      }

    },

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "project": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "project"

    },

    "milestone": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "group": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "deal": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "location": {

      "type": "virtual"

    },

    "customer_meeting_room": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "attendees": [

      {

        "type": "user",

        "id": "6ddd2666-65a0-497f-9f01-54c4343ec1a6"

      }

    ],

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "status": "open",

    "recurrence": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "workOrder": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/meetings.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"70af3fdd-b037-0936-ad1a-6d784dd44cf4\",\n  \"includes\": \"tracked_time\"\n}", null, "application/json");
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
  "id": "70af3fdd-b037-0936-ad1a-6d784dd44cf4",
  "includes": "tracked_time"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
meetings.list

Next  
\
meetings.schedule
