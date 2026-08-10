---
url: https://developer.focus.teamleader.eu/docs/api/plannable-items-list
title: plannableItems.list | Teamleader Developers
words: 435
---
- [](/)
- API Reference
- Planning
- Plannable items
- plannableItems.list

plannableItems.list

```
POST https://api.focus.teamleader.eu/plannableItems.list
```

Lists all plannable items that match the optional filters provided.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  statusstring\[]
  
  Possible values: \[active, deactivated]
  
  termstring
  
  Example: Set-up
  
  start\_datestring
  
  Example: 2023-10-02
  
  end\_datestring
  
  Example: 2023-10-06
  
  project\_idsstring\[]
  
  assignees object\[]
  
  To fetch unassigned plannable items, provide null instead of the type/id object
  
  Array [
  
  typestringrequired
  
  Possible values: \[team, user]
  
  Example: user
  
  idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  ]
  
  work\type\idsstring\[]
  
  completion\_statusesstring\[]
  
  Possible values: \[to_do, done]
  
  planned\time\statusesstring\[]
  
  Possible values: \[unplanned, partiallyplanned, fullyplanned, overbooked]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[id, enddate, totalduration]
  
  Default value: id
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  Default value: asc
  
  ]

```json

{

  "filter": {

    "ids": [

      "018d79a1-2b99-7fbd-b323-500b01305371"

    ]

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
  
  Example: 018d55af-d0d7-76be-8185-ee970a7f3826
  
  source object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: task
  
  total\_duration object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  planned\_duration object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  unplanned\_duration object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  ]

```json

{

  "data": [

    {

      "id": "018d79a1-2b99-7fbd-b323-500b01305371",

      "source": {

        "type": "task",

        "id": "948b8ca5-58aa-0844-ba34-cee255aa9694"

      },

      "total_duration": {

        "value": 600,

        "currency": "minutes"

      },

      "planned_duration": {

        "value": 600,

        "currency": "minutes"

      },

      "unplanned_duration": {

        "value": 0,

        "currency": "minutes"

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

      "source": {

        "type": "task",

        "id": "948b8ca5-58aa-0844-ba34-cee255aa9694"

      },

      "total_duration": {

        "value": 600,

        "currency": "minutes"

      },

      "planned_duration": {

        "value": 600,

        "currency": "minutes"

      },

      "unplanned_duration": {

        "value": 0,

        "currency": "minutes"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/plannableItems.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"018d79a1-2b99-7fbd-b323-500b01305371\"\n    ]\n  }\n}", null, "application/json");
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
      "018d79a1-2b99-7fbd-b323-500b01305371"
    ]
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Plannable items

Next  
\
plannableItems.info
