---
url: https://developer.focus.teamleader.eu/docs/api/reservations-list
title: reservations.list | Teamleader Developers
words: 406
---
- [](/)
- API Reference
- Planning
- Reservations
- reservations.list

reservations.list

```
POST https://api.focus.teamleader.eu/reservations.list
```

Lists all reservations that match the optional filters provided.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  plannable\item\idsstring\[]
  
  project\_idsstring\[]
  
  work\type\idsstring\[]
  
  start\_datestring
  
  Example: 2024-01-11
  
  end\_datestring
  
  Example: 2024-01-12
  
  assignees object\[]
  
  To fetch unassigned reservations, provide null instead of the type/id object
  
  Array [
  
  typestringrequired
  
  Possible values: \[team, user]
  
  Example: user
  
  idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  ]
  
  sources object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typeSourceType
  
  Possible values: \[call, closingDay, dayOffType, externalEvent, meeting, task]
  
  ]
  
  source\_typesSourceType\[]
  
  Possible values: \[call, closingDay, dayOffType, externalEvent, meeting, task]
  
  termstring
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "plannable_item_ids": [

    "46156648-87c6-478d-8aa7-1dc3a00dacab"

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
  
  Example: 39c64ba9-ebf1-491a-8486-a0b96ff21c07
  
  plannable\_item object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: plannableItem
  
  datestring
  
  Example: 2024-01-11
  
  duration object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  assignee object
  
  typestringrequired
  
  Possible values: \[team, user]
  
  Example: user
  
  idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  origin object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: dayOff
  
  ]

```json

{

  "data": [

    {

      "id": "018d79a1-2b99-7fbd-b323-500b01305371",

      "plannable_item": {

        "type": "plannableItem",

        "id": "46156648-87c6-478d-8aa7-1dc3a00dacab"

      },

      "date": "2024-01-02",

      "duration": {

        "value": 60,

        "currency": "minutes"

      },

      "assignee": null,

      "origin": null,

      "source": {

        "type": "task",

        "id": "948b8ca5-58aa-0844-ba34-cee255aa9694"

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "018d79a1-2b99-7fbd-b323-500b01305371",

      "plannable_item": {

        "type": "plannableItem",

        "id": "46156648-87c6-478d-8aa7-1dc3a00dacab"

      },

      "date": "2024-01-02",

      "duration": {

        "value": 60,

        "currency": "minutes"

      },

      "assignee": null,

      "origin": null,

      "source": {

        "type": "task",

        "id": "948b8ca5-58aa-0844-ba34-cee255aa9694"

      }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/reservations.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"plannable_item_ids\": [\n    \"46156648-87c6-478d-8aa7-1dc3a00dacab\"\n  ]\n}", null, "application/json");
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
  "plannable_item_ids": [
    "46156648-87c6-478d-8aa7-1dc3a00dacab"
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Reservations

Next  
\
reservations.create
