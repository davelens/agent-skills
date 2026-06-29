---
url: https://developer.focus.teamleader.eu/docs/api/legacy-milestones-info
title: milestones.info | Teamleader Developers
words: 861
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Milestones
- milestones.info

milestones.info

```
POST https://api.focus.teamleader.eu/milestones.info
```

Get details for a single milestone.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 64349fa2-6ca2-4b19-82e6-d3258ceab2d8

```json

{

  "id": "64349fa2-6ca2-4b19-82e6-d3258ceab2d8"

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
  
  Example: 64349fa2-6ca2-4b19-82e6-d3258ceab2d8
  
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
  
  descriptionstring
  
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

  "data": {

    "id": "64349fa2-6ca2-4b19-82e6-d3258ceab2d8",

    "project": {

      "type": "project",

      "id": "fffaf951-b65a-4cb1-bfb6-4b93e0e60c10"

    },

    "starts_on": "2017-01-01",

    "due_on": "2018-01-01",

    "name": "Initial setup",

    "description": "",

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

}
```

```json

{

  "data": {

    "id": "64349fa2-6ca2-4b19-82e6-d3258ceab2d8",

    "project": {

      "type": "project",

      "id": "fffaf951-b65a-4cb1-bfb6-4b93e0e60c10"

    },

    "starts_on": "2017-01-01",

    "due_on": "2018-01-01",

    "name": "Initial setup",

    "description": "",

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/milestones.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"64349fa2-6ca2-4b19-82e6-d3258ceab2d8\"\n}", null, "application/json");
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
  "id": "64349fa2-6ca2-4b19-82e6-d3258ceab2d8"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
milestones.list

Next  
\
milestones.create
