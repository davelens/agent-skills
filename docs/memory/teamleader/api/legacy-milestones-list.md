---
url: https://developer.focus.teamleader.eu/docs/api/legacy-milestones-list
title: milestones.list | Teamleader Developers
words: 941
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Milestones
- milestones.list

milestones.list

```
POST https://api.focus.teamleader.eu/milestones.list
```

Get a list of project milestones.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  project\_idstring
  
  Example: 082e6289-30c5-45ad-bcd0-190b02d21e81
  
  statusstring
  
  Possible values: \[open, closed]
  
  due\_beforestring
  
  Example: 2017-01-01
  
  due\_afterstring
  
  Example: 2017-01-01
  
  termstring
  
  Searches for a term in title
  
  Example: coffee
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[startson, dueon]
  
  Default value: due_on
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  Default value: asc
  
  ]

```json

{

  "filter": {

    "ids": [

      "bbbfe0da-e692-4ee3-9d3d-0716808d6523",

      "722e1eb9-53d5-4b8c-9d17-154dcc65c610"

    ],

    "project_id": "082e6289-30c5-45ad-bcd0-190b02d21e81",

    "due_before": "2017-01-01",

    "due_after": "2017-01-01",

    "term": "coffee"

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "starts_on"

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
  
  Example: cfb4146d-06be-41f1-bb39-aa3c929c71dc
  
  project object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  starts\_onstringnullable
  
  Example: 2017-01-01
  
  due\_onstring
  
  Example: 2018-01-01
  
  namestring
  
  Example: Initial setup
  
  responsible\_user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  statusstring
  
  Possible values: \[open, closed]
  
  invoicing\_methodstring
  
  Possible values: \[timeandmaterials, fixedprice, noninvoiceable]
  
  Example: timeandmaterials
  
  depends\_on objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  dependency\_for object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  actuals object
  
  Only accessible for administrators of the project this milestone belongs to
  
  billable\_amount object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  costs object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  result object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  budget object
  
  Only accessible for administrators of the project this milestone belongs to
  
  provided object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  spent object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  remaining object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  allocated objectnullable
  
  The amount of money still expected to be spent. This is null if there is not enough data to calculate
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  forecasted objectnullable
  
  A prediction of the spent budget upon milestone completion. This is null if there is not enough data to calculate
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  ]

```json

{

  "data": [

    {

      "id": "cfb4146d-06be-41f1-bb39-aa3c929c71dc",

      "project": {

        "type": "project",

        "id": "944534fb-15f1-4eea-aab1-82a427aa2d0d"

      },

      "starts_on": "2017-01-01",

      "due_on": "2018-01-01",

      "name": "Initial setup",

      "responsible_user": {

        "type": "user",

        "id": "e1240972-6cfc-4549-b49c-edda7568cc48"

      },

      "status": "open",

      "invoicing_method": "time_and_materials",

      "depends_on": {

        "type": "milestone",

        "id": "0488d792-ba9b-059f-bd57-bea75d3f4f4e"

      },

      "dependency_for": [

        {

          "type": "milestone",

          "id": "b71ff11f-074e-0705-9450-589342af4f4f"

        }

      ],

      "actuals": {

        "billable_amount": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "costs": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "result": {

          "amount": 123.3,

          "currency": "EUR"

        }

      },

      "budget": {

        "provided": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "spent": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "remaining": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "allocated": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "forecasted": {

          "amount": 123.3,

          "currency": "EUR"

        }

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "cfb4146d-06be-41f1-bb39-aa3c929c71dc",

      "project": {

        "type": "project",

        "id": "944534fb-15f1-4eea-aab1-82a427aa2d0d"

      },

      "starts_on": "2017-01-01",

      "due_on": "2018-01-01",

      "name": "Initial setup",

      "responsible_user": {

        "type": "user",

        "id": "e1240972-6cfc-4549-b49c-edda7568cc48"

      },

      "status": "open",

      "invoicing_method": "time_and_materials",

      "depends_on": {

        "type": "milestone",

        "id": "0488d792-ba9b-059f-bd57-bea75d3f4f4e"

      },

      "dependency_for": [

        {

          "type": "milestone",

          "id": "b71ff11f-074e-0705-9450-589342af4f4f"

        }

      ],

      "actuals": {

        "billable_amount": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "costs": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "result": {

          "amount": 123.3,

          "currency": "EUR"

        }

      },

      "budget": {

        "provided": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "spent": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "remaining": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "allocated": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "forecasted": {

          "amount": 123.3,

          "currency": "EUR"

        }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/milestones.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"bbbfe0da-e692-4ee3-9d3d-0716808d6523\",\n      \"722e1eb9-53d5-4b8c-9d17-154dcc65c610\"\n    ],\n    \"project_id\": \"082e6289-30c5-45ad-bcd0-190b02d21e81\",\n    \"due_before\": \"2017-01-01\",\n    \"due_after\": \"2017-01-01\",\n    \"term\": \"coffee\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"starts_on\"\n    }\n  ]\n}", null, "application/json");
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
      "bbbfe0da-e692-4ee3-9d3d-0716808d6523",
      "722e1eb9-53d5-4b8c-9d17-154dcc65c610"
    ],
    "project_id": "082e6289-30c5-45ad-bcd0-190b02d21e81",
    "due_before": "2017-01-01",
    "due_after": "2017-01-01",
    "term": "coffee"
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "starts_on"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Legacy Milestones

Next  
\
milestones.info
