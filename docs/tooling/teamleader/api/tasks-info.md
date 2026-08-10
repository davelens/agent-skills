---
url: https://developer.focus.teamleader.eu/docs/api/tasks-info
title: tasks.info | Teamleader Developers
words: 518
---
- [](/)
- API Reference
- Tasks
- Tasks
- tasks.info

tasks.info

```
POST https://api.focus.teamleader.eu/tasks.info
```

Get information about a task.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: ff19a113-50ba-4afc-9fff-2e5c5c5a5485

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
  
  Example: 6fac0bf0-e803-424e-af67-76863a3d7d16
  
  titlestring
  
  Example: Review code changes
  
  descriptionstring
  
  completedboolean
  
  Example: false
  
  completed\_atstringnullable
  
  Example: 2016-02-04T16:44:33+00:00
  
  due\_onstring
  
  Example: 2016-02-04
  
  estimated\_duration object
  
  unitstring
  
  Possible values: \[min]
  
  Example: min
  
  valuenumber
  
  Example: 60
  
  work\_type objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  assignee objectnullable
  
  Null if the task is unassigned
  
  typestring
  
  Possible values: \[team, user]
  
  Example: user
  
  idstring
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  customer objectnullable
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  milestone objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  deal objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  project objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ticket objectnullable
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: ticket
  
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
  
  priorityPriority
  
  Possible values: \[A, B, C, D]

```json

{

  "data": {

    "id": "6fac0bf0-e803-424e-af67-76863a3d7d16",

    "title": "Review code changes",

    "description": "",

    "completed": false,

    "completed_at": "2016-02-04T16:44:33+00:00",

    "due_on": "2016-02-04",

    "estimated_duration": {

      "unit": "min",

      "value": 60

    },

    "work_type": {

      "type": "workType",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "assignee": {

      "type": "user",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "milestone": {

      "type": "milestone",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "deal": {

      "type": "deal",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "project": {

      "type": "project",

      "id": "bbbb772b-e7ad-06c5-935c-b0f6ef61d6bc"

    },

    "ticket": {

      "type": "ticket",

      "id": "8607faa8-3d2e-0a66-a71e-e69f447a2ed1"

    },

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "priority": "A"

  }

}
```

```json

{

  "data": {

    "id": "6fac0bf0-e803-424e-af67-76863a3d7d16",

    "title": "Review code changes",

    "description": "",

    "completed": false,

    "completed_at": "2016-02-04T16:44:33+00:00",

    "due_on": "2016-02-04",

    "estimated_duration": {

      "unit": "min",

      "value": 60

    },

    "work_type": {

      "type": "workType",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "assignee": {

      "type": "user",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "milestone": {

      "type": "milestone",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "deal": {

      "type": "deal",

      "id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

    },

    "project": {

      "type": "project",

      "id": "bbbb772b-e7ad-06c5-935c-b0f6ef61d6bc"

    },

    "ticket": {

      "type": "ticket",

      "id": "8607faa8-3d2e-0a66-a71e-e69f447a2ed1"

    },

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "priority": "A"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tasks.info");
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
tasks.list

Next  
\
tasks.create
