---
url: https://developer.focus.teamleader.eu/docs/api/events-list
title: events.list | Teamleader Developers
words: 639
---
- [](/)
- API Reference
- Calendar
- Calendar events
- events.list

events.list

```
POST https://api.focus.teamleader.eu/events.list
```

Get a list of calendar events.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  user\_idstring
  
  Example: 5309c8c9-e313-47b0-90ba-6850c3dc3e33
  
  activity\type\idstring
  
  Example: edd94120-63e2-4b10-80ed-fdfcfaa0a515
  
  ends\_afterstring
  
  Start of the period for which to return events
  
  Example: 2017-01-01T00:00:00+00:00
  
  starts\_beforestring
  
  End of the period for which to return events
  
  Example: 2018-01-01T00:00:00+00:00
  
  termstring
  
  Searches for a term in title or description
  
  Example: coffee
  
  attendee object
  
  typestringrequired
  
  Possible values: \[contact]
  
  Example: contact
  
  idstringrequired
  
  Example: 2659dc4d-444b-4ced-b51c-b87591f604d7
  
  link object
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[contact, company, deal]
  
  Example: contact
  
  task\_idstring
  
  Example: 5309c8c9-e313-47b0-90ba-6850c3dc3e33
  
  doneboolean
  
  Example: false
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[starts_at]
  
  Default value: starts_at
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  Default value: asc
  
  ]

```json

{

  "filter": {

    "ids": [

      "string"

    ],

    "user_id": "5309c8c9-e313-47b0-90ba-6850c3dc3e33",

    "activity_type_id": "edd94120-63e2-4b10-80ed-fdfcfaa0a515",

    "ends_after": "2017-01-01T00:00:00+00:00",

    "starts_before": "2018-01-01T00:00:00+00:00",

    "term": "coffee",

    "attendee": {

      "type": "contact",

      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

    },

    "link": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "contact"

    },

    "task_id": "5309c8c9-e313-47b0-90ba-6850c3dc3e33",

    "done": false

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "starts_at",

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
  
  Example: 6d64488c-75d8-4de9-b140-2555566fa27d
  
  creator object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  task object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  activity\_type object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  titlestring
  
  Example: Erlich Bachman's birthday
  
  descriptionstring
  
  starts\_atstring
  
  Example: 2016-02-04T16:00:00+00:00
  
  ends\_atstring
  
  Example: 2016-02-04T18:00:00+00:00
  
  locationstring
  
  attendees object\[]
  
  Array [
  
  typestring
  
  Possible values: \[user, contact]
  
  Example: user
  
  idstring
  
  Example: 6ddd2666-65a0-497f-9f01-54c4343ec1a6
  
  ]
  
  links object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Possible values: \[contact, company, deal]
  
  Example: contact
  
  ]
  
  ]

```json

{

  "data": [

    {

      "id": "6d64488c-75d8-4de9-b140-2555566fa27d",

      "creator": {

        "type": "user",

        "id": "e51d1a0e-452e-4d5d-a2a1-2c8f75dde560"

      },

      "task": {

        "type": "task",

        "id": "eb399573-e1ae-4377-bbaf-34358eb19831"

      },

      "activity_type": {

        "type": "activityType",

        "id": "28158af3-2ef3-4178-ac8b-2542b1481af0"

      },

      "title": "Erlich Bachman's birthday",

      "description": "",

      "starts_at": "2016-02-04T16:00:00+00:00",

      "ends_at": "2016-02-04T18:00:00+00:00",

      "location": "",

      "attendees": [

        {

          "type": "contact",

          "id": "8b3afad7-648d-4b4c-b38b-5726d3222282"

        }

      ],

      "links": [

        {

          "type": "company",

          "id": "c9258836-f9a5-40cb-aa2a-d55c22991b93"

        }

      ]

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "6d64488c-75d8-4de9-b140-2555566fa27d",

      "creator": {

        "type": "user",

        "id": "e51d1a0e-452e-4d5d-a2a1-2c8f75dde560"

      },

      "task": {

        "type": "task",

        "id": "eb399573-e1ae-4377-bbaf-34358eb19831"

      },

      "activity_type": {

        "type": "activityType",

        "id": "28158af3-2ef3-4178-ac8b-2542b1481af0"

      },

      "title": "Erlich Bachman's birthday",

      "description": "",

      "starts_at": "2016-02-04T16:00:00+00:00",

      "ends_at": "2016-02-04T18:00:00+00:00",

      "location": "",

      "attendees": [

        {

          "type": "contact",

          "id": "8b3afad7-648d-4b4c-b38b-5726d3222282"

        }

      ],

      "links": [

        {

          "type": "company",

          "id": "c9258836-f9a5-40cb-aa2a-d55c22991b93"

        }

      ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/events.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ],\n    \"user_id\": \"5309c8c9-e313-47b0-90ba-6850c3dc3e33\",\n    \"activity_type_id\": \"edd94120-63e2-4b10-80ed-fdfcfaa0a515\",\n    \"ends_after\": \"2017-01-01T00:00:00+00:00\",\n    \"starts_before\": \"2018-01-01T00:00:00+00:00\",\n    \"term\": \"coffee\",\n    \"attendee\": {\n      \"type\": \"contact\",\n      \"id\": \"2659dc4d-444b-4ced-b51c-b87591f604d7\"\n    },\n    \"link\": {\n      \"id\": \"eab232c6-49b2-4b7e-a977-5e1148dad471\",\n      \"type\": \"contact\"\n    },\n    \"task_id\": \"5309c8c9-e313-47b0-90ba-6850c3dc3e33\",\n    \"done\": false\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"starts_at\",\n      \"order\": \"asc\"\n    }\n  ]\n}", null, "application/json");
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
    "user_id": "5309c8c9-e313-47b0-90ba-6850c3dc3e33",
    "activity_type_id": "edd94120-63e2-4b10-80ed-fdfcfaa0a515",
    "ends_after": "2017-01-01T00:00:00+00:00",
    "starts_before": "2018-01-01T00:00:00+00:00",
    "term": "coffee",
    "attendee": {
      "type": "contact",
      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"
    },
    "link": {
      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",
      "type": "contact"
    },
    "task_id": "5309c8c9-e313-47b0-90ba-6850c3dc3e33",
    "done": false
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "starts_at",
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
Calendar events

Next  
\
events.info
