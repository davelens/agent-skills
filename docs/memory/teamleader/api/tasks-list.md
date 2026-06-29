---
url: https://developer.focus.teamleader.eu/docs/api/tasks-list
title: tasks.list | Teamleader Developers
words: 688
---
- [](/)
- API Reference
- Tasks
- Tasks
- tasks.list

tasks.list

```
POST https://api.focus.teamleader.eu/tasks.list
```

Get a list of tasks.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  user\_idstringnullable
  
  Returns tasks that are assigned to this user or to a team to which this user belongs. When passing null, it returns tasks that are unassigned.
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  milestone\_idstring
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  completedboolean
  
  Example: true
  
  scheduledboolean
  
  Example: true
  
  due\_bystring
  
  Example: 2019-02-04
  
  due\_fromstring
  
  Example: 2019-10-20
  
  termstring
  
  Searches for a term in the description.
  
  Example: website design
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[name]
  
  Example: name
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  ]

```json

{

  "filter": {

    "ids": [

      "string"

    ],

    "user_id": "f29abf48-337d-44b4-aad4-585f5277a456",

    "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

    "completed": true,

    "scheduled": true,

    "due_by": "2019-02-04",

    "due_from": "2019-10-20",

    "term": "website design",

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    }

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "name",

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
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  titlestring
  
  Example: Review code changes
  
  descriptionstring
  
  completedboolean
  
  Example: false
  
  completed\_atstringnullable
  
  Example: 2016-02-04T16:44:33+00:00
  
  due\_onstring
  
  Example: 2016-02-04
  
  added\_atstringnullable
  
  Example: 2016-02-04T16:44:33+00:00
  
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
  
  priorityPriority
  
  Possible values: \[A, B, C, D]
  
  ]

```json

{

  "data": [

    {

      "id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "title": "Review code changes",

      "description": "",

      "completed": false,

      "completed_at": "2016-02-04T16:44:33+00:00",

      "due_on": "2016-02-04",

      "added_at": "2016-02-04T16:44:33+00:00",

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

      "priority": "A"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "title": "Review code changes",

      "description": "",

      "completed": false,

      "completed_at": "2016-02-04T16:44:33+00:00",

      "due_on": "2016-02-04",

      "added_at": "2016-02-04T16:44:33+00:00",

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

      "priority": "A"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tasks.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ],\n    \"user_id\": \"f29abf48-337d-44b4-aad4-585f5277a456\",\n    \"milestone_id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\",\n    \"completed\": true,\n    \"scheduled\": true,\n    \"due_by\": \"2019-02-04\",\n    \"due_from\": \"2019-10-20\",\n    \"term\": \"website design\",\n    \"customer\": {\n      \"type\": \"contact\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    }\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"name\",\n      \"order\": \"asc\"\n    }\n  ]\n}", null, "application/json");
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
    "user_id": "f29abf48-337d-44b4-aad4-585f5277a456",
    "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",
    "completed": true,
    "scheduled": true,
    "due_by": "2019-02-04",
    "due_from": "2019-10-20",
    "term": "website design",
    "customer": {
      "type": "contact",
      "id": "f29abf48-337d-44b4-aad4-585f5277a456"
    }
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "name",
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
Tasks

Next  
\
tasks.info
