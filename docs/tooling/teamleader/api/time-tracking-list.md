---
url: https://developer.focus.teamleader.eu/docs/api/time-tracking-list
title: timeTracking.list | Teamleader Developers
words: 930
---
- [](/)
- API Reference
- Time Tracking
- Time Tracking
- timeTracking.list

timeTracking.list

```
POST https://api.focus.teamleader.eu/timeTracking.list
```

Get a list of tracked time.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  user\_idstring
  
  Example: 87982c96-f2fe-4b05-838c-ff42c0525758
  
  started\_afterstring
  
  Start of the period for which to return time tracking. This includes time tracking that started on the date provided.
  
  Example: 2017-04-26T10:01:49+00:00
  
  started\_beforestring
  
  End of the period for which to return time tracking. This includes time tracking that started on the date provided.
  
  Example: 2017-04-26T10:01:49+00:00
  
  ended\_afterstring
  
  Start of the period for which to return time tracking. This includes time tracking that ended at the date provided.
  
  Example: 2017-04-26T10:01:49+00:00
  
  ended\_beforestring
  
  End of the period for which to return time tracking. This includes time tracking that ended at the date provided.
  
  Example: 2017-05-26T10:01:49+00:00
  
  subject object
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[company, contact, event, todo, milestone, ticket]
  
  subject\_typesstring\[]
  
  Include all tracked time with one of the provided subject types. For tracked time without a subject type, provide null
  
  Possible values: \[company, contact, event, todo, milestone, ticket]
  
  relates\_to object
  
  Find all tracked time linked directly and indirectly to a subject
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[milestone, project, nextgenProject, nextgenProjectGroup]
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[starts_on]
  
  Default value: starts_on
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  ]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  includesstring
  
  Comma-separated list of optional includes
  
  Example: materials,relates_to

```json

{

  "filter": {

    "ids": [

      "string"

    ],

    "user_id": "87982c96-f2fe-4b05-838c-ff42c0525758",

    "started_after": "2017-04-26T10:01:49+00:00",

    "started_before": "2017-04-26T10:01:49+00:00",

    "ended_after": "2017-04-26T10:01:49+00:00",

    "ended_before": "2017-05-26T10:01:49+00:00",

    "subject": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "company"

    },

    "subject_types": [

      "company"

    ],

    "relates_to": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "milestone"

    }

  },

  "sort": [

    {

      "field": "starts_on",

      "order": "asc"

    }

  ],

  "page": {

    "size": 20,

    "number": 1

  },

  "includes": "materials,relates_to"

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
  
  Example: 4f4288b2-c21b-4dac-87f6-a97511309079
  
  user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  work\_type object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  started\_onstring
  
  Example: 2017-04-26
  
  started\_atstringnullable
  
  Example: 2017-04-26T10:01:49+00:00
  
  ended\_atstringnullable
  
  Example: 2017-04-26T11:01:49+00:00
  
  durationnumber
  
  In seconds
  
  Example: 3600
  
  descriptionstring
  
  Example: Timer description
  
  subject object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Possible values: \[company, contact, event, todo, milestone, ticket]
  
  invoiceableboolean
  
  Example: true
  
  billing\_info objectnullable
  
  typestring
  
  Possible values: \[invoice, prepaid]
  
  Example: invoice
  
  invoice objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  materials object\[]
  
  Only included with request parameter includes=materials
  
  Array [
  
  product objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  descriptionstring
  
  Example: Product description
  
  unit\_price object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  quantitynumber
  
  Example: 5
  
  ]
  
  relates\_to object\[]
  
  Only included with request parameter includes=relates_to
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typeTimeTrackingRelatesToTypes
  
  Possible values: \[contact, company, project, milestone, ticket, nextgenProject, nextgenProjectGroup, nextgenTask]
  
  ]
  
  hourly\_rate object
  
  Only included for users with access to invoicing
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  ]

```json

{

  "data": [

    {

      "id": "4f4288b2-c21b-4dac-87f6-a97511309079",

      "user": {

        "type": "user",

        "id": "eb1eb8b8-d0cb-4385-b60a-c995953ec6be"

      },

      "work_type": {

        "type": "workType",

        "id": "8a146eda-c9af-4b11-b63a-ddac47bb254d"

      },

      "started_on": "2017-04-26",

      "started_at": "2017-04-26T10:01:49+00:00",

      "ended_at": "2017-04-26T11:01:49+00:00",

      "duration": 3600,

      "description": "Timer description",

      "subject": {

        "type": "milestone",

        "id": "58f5b799-51c4-4eb9-8308-b1aa02e0a873"

      },

      "invoiceable": true,

      "billing_info": {

        "type": "invoice",

        "invoice": {

          "type": "invoice",

          "id": "b2b4b2b4-4b2b-4b2b-4b2b-4b2b4b2b4b2b"

        }

      },

      "materials": [

        {

          "product": {

            "type": "product",

            "id": "e2314517-3cab-4aa9-8471-450e73449040"

          },

          "description": "Product description",

          "unit_price": {

            "amount": 123.3,

            "currency": "EUR"

          },

          "quantity": 5

        }

      ],

      "relates_to": [

        {

          "type": "contact",

          "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

        }

      ],

      "hourly_rate": {

        "amount": 123.3,

        "currency": "EUR"

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "4f4288b2-c21b-4dac-87f6-a97511309079",

      "user": {

        "type": "user",

        "id": "eb1eb8b8-d0cb-4385-b60a-c995953ec6be"

      },

      "work_type": {

        "type": "workType",

        "id": "8a146eda-c9af-4b11-b63a-ddac47bb254d"

      },

      "started_on": "2017-04-26",

      "started_at": "2017-04-26T10:01:49+00:00",

      "ended_at": "2017-04-26T11:01:49+00:00",

      "duration": 3600,

      "description": "Timer description",

      "subject": {

        "type": "milestone",

        "id": "58f5b799-51c4-4eb9-8308-b1aa02e0a873"

      },

      "invoiceable": true,

      "billing_info": {

        "type": "invoice",

        "invoice": {

          "type": "invoice",

          "id": "b2b4b2b4-4b2b-4b2b-4b2b-4b2b4b2b4b2b"

        }

      },

      "materials": [

        {

          "product": {

            "type": "product",

            "id": "e2314517-3cab-4aa9-8471-450e73449040"

          },

          "description": "Product description",

          "unit_price": {

            "amount": 123.3,

            "currency": "EUR"

          },

          "quantity": 5

        }

      ],

      "relates_to": [

        {

          "type": "contact",

          "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

        }

      ],

      "hourly_rate": {

        "amount": 123.3,

        "currency": "EUR"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timeTracking.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ],\n    \"user_id\": \"87982c96-f2fe-4b05-838c-ff42c0525758\",\n    \"started_after\": \"2017-04-26T10:01:49+00:00\",\n    \"started_before\": \"2017-04-26T10:01:49+00:00\",\n    \"ended_after\": \"2017-04-26T10:01:49+00:00\",\n    \"ended_before\": \"2017-05-26T10:01:49+00:00\",\n    \"subject\": {\n      \"id\": \"eab232c6-49b2-4b7e-a977-5e1148dad471\",\n      \"type\": \"company\"\n    },\n    \"subject_types\": [\n      \"company\"\n    ],\n    \"relates_to\": {\n      \"id\": \"eab232c6-49b2-4b7e-a977-5e1148dad471\",\n      \"type\": \"milestone\"\n    }\n  },\n  \"sort\": [\n    {\n      \"field\": \"starts_on\",\n      \"order\": \"asc\"\n    }\n  ],\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"includes\": \"materials,relates_to\"\n}", null, "application/json");
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
    "user_id": "87982c96-f2fe-4b05-838c-ff42c0525758",
    "started_after": "2017-04-26T10:01:49+00:00",
    "started_before": "2017-04-26T10:01:49+00:00",
    "ended_after": "2017-04-26T10:01:49+00:00",
    "ended_before": "2017-05-26T10:01:49+00:00",
    "subject": {
      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",
      "type": "company"
    },
    "subject_types": [
      "company"
    ],
    "relates_to": {
      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",
      "type": "milestone"
    }
  },
  "sort": [
    {
      "field": "starts_on",
      "order": "asc"
    }
  ],
  "page": {
    "size": 20,
    "number": 1
  },
  "includes": "materials,relates_to"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Time Tracking

Next  
\
timeTracking.info
