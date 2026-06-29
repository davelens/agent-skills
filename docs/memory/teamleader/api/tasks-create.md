---
url: https://developer.focus.teamleader.eu/docs/api/tasks-create
title: tasks.create | Teamleader Developers
words: 464
---
- [](/)
- API Reference
- Tasks
- Tasks
- tasks.create

tasks.create

```
POST https://api.focus.teamleader.eu/tasks.create
```

Create a new task.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Bodyrequired

- titlestringrequired
  
  descriptionstring
  
  due\_onstringrequired
  
  Example: 2016-02-04
  
  work\type\idstringrequired
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  milestone\_idstring
  
  Only available for users that have access to the old projects module
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  project\_idstring
  
  Only available for users that have access to the new projects module
  
  Example: 0185aa33-603c-7fd5-bf0d-5bd83d503b96
  
  deal\_idstring
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  ticket\_idstring
  
  Example: 8607faa8-3d2e-0a66-a71e-e69f447a2ed1
  
  estimated\_duration object
  
  unitstring
  
  Possible values: \[min]
  
  Example: min
  
  valuenumber
  
  Example: 60
  
  assignee objectnullable
  
  Use null if the task is unassigned
  
  typestring
  
  Possible values: \[team, user]
  
  Example: user
  
  idstring
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  custom\_fields object\[]
  
  Array [
  
  idstring
  
  Example: bf6765de-56eb-40ec-ad14-9096c5dc5fe1
  
  value object
  
  oneOf
  
  - string
  - number
  - multiple selection
  - boolean
  - object
  
  string
  
  For strings
  
  Example: 092980616
  
  ]

```json

{

  "title": "string",

  "description": "string",

  "due_on": "2016-02-04",

  "work_type_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

  "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

  "project_id": "0185aa33-603c-7fd5-bf0d-5bd83d503b96",

  "deal_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

  "ticket_id": "8607faa8-3d2e-0a66-a71e-e69f447a2ed1",

  "estimated_duration": {

    "unit": "min",

    "value": 60

  },

  "assignee": {

    "type": "user",

    "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

  },

  "customer": {

    "type": "contact",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

  },

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ]

}
```

Responses​

- 201

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
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "task",

    "id": "1759dfc1-7365-4f1b-8d90-d29787a5d29d"

  }

}
```

```json

{

  "data": {

    "type": "task",

    "id": "1759dfc1-7365-4f1b-8d90-d29787a5d29d"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tasks.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"title\": \"string\",\n  \"description\": \"string\",\n  \"due_on\": \"2016-02-04\",\n  \"work_type_id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\",\n  \"milestone_id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\",\n  \"project_id\": \"0185aa33-603c-7fd5-bf0d-5bd83d503b96\",\n  \"deal_id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\",\n  \"ticket_id\": \"8607faa8-3d2e-0a66-a71e-e69f447a2ed1\",\n  \"estimated_duration\": {\n    \"unit\": \"min\",\n    \"value\": 60\n  },\n  \"assignee\": {\n    \"type\": \"user\",\n    \"id\": \"66abace2-62af-0836-a927-fe3f44b9b47b\"\n  },\n  \"customer\": {\n    \"type\": \"contact\",\n    \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n  },\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ]\n}", null, "application/json");
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

```json
{
  "title": "string",
  "description": "string",
  "due_on": "2016-02-04",
  "work_type_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",
  "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",
  "project_id": "0185aa33-603c-7fd5-bf0d-5bd83d503b96",
  "deal_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",
  "ticket_id": "8607faa8-3d2e-0a66-a71e-e69f447a2ed1",
  "estimated_duration": {
    "unit": "min",
    "value": 60
  },
  "assignee": {
    "type": "user",
    "id": "66abace2-62af-0836-a927-fe3f44b9b47b"
  },
  "customer": {
    "type": "contact",
    "id": "f29abf48-337d-44b4-aad4-585f5277a456"
  },
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tasks.info

Next  
\
tasks.update
