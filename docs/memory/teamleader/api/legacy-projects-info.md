---
url: https://developer.focus.teamleader.eu/docs/api/legacy-projects-info
title: projects.info | Teamleader Developers
words: 998
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Projects
- projects.info

projects.info

```
POST https://api.focus.teamleader.eu/projects.info
```

Get details for a single project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 8a04371b-2ffb-407b-9b24-d5b5452009c7

```json

{

  "id": "8a04371b-2ffb-407b-9b24-d5b5452009c7"

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
  
  Example: 8a04371b-2ffb-407b-9b24-d5b5452009c7
  
  referencestring
  
  Example: PRO-1
  
  titlestring
  
  Example: New company website
  
  descriptionstring
  
  statusstring
  
  Possible values: \[active, on_hold, done, cancelled]
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  starts\_onstring
  
  Example: 2016-02-04
  
  due\_onstring
  
  Example: 2016-02-04
  
  source object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  milestones object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  participants object\[]
  
  Array [
  
  participant object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Possible values: \[user]
  
  Example: user
  
  roleRole
  
  Possible values: \[decision_maker, member]
  
  ]
  
  purchase\order\numberstringnullable
  
  Example: 000023
  
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
  
  actuals object
  
  Only accessible for administrators of this project
  
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
  
  profit\_percentagenumber
  
  budget object
  
  Only accessible for administrators of this project
  
  provided object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  spent object
  
  total object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  time object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  materials object
  
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
  
  A prediction of the spent budget upon project completion. This is null if there is not enough data to calculate
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]

```json

{

  "data": {

    "id": "8a04371b-2ffb-407b-9b24-d5b5452009c7",

    "reference": "PRO-1",

    "title": "New company website",

    "description": "",

    "status": "active",

    "customer": {

      "type": "contact",

      "id": "de41d3e8-808f-4279-b6ff-4706b04c8df2"

    },

    "starts_on": "2016-02-04",

    "due_on": "2016-02-04",

    "source": {

      "type": "deal",

      "id": "39abbf9e-9692-4cca-b20d-79577890752c"

    },

    "milestones": [

      {

        "type": "milestone",

        "id": "7c6b5e26-3068-47a6-bf3b-431d7ab7e704"

      }

    ],

    "participants": [

      {

        "participant": {

          "type": "user",

          "id": "b0ef899b-143c-4708-90ce-aecb3350e116"

        },

        "role": "decision_maker"

      }

    ],

    "purchase_order_number": "000023",

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

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

      },

      "profit_percentage": 0

    },

    "budget": {

      "provided": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "spent": {

        "total": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "time": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "materials": {

          "amount": 123.3,

          "currency": "EUR"

        }

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

}
```

```json

{

  "data": {

    "id": "8a04371b-2ffb-407b-9b24-d5b5452009c7",

    "reference": "PRO-1",

    "title": "New company website",

    "description": "",

    "status": "active",

    "customer": {

      "type": "contact",

      "id": "de41d3e8-808f-4279-b6ff-4706b04c8df2"

    },

    "starts_on": "2016-02-04",

    "due_on": "2016-02-04",

    "source": {

      "type": "deal",

      "id": "39abbf9e-9692-4cca-b20d-79577890752c"

    },

    "milestones": [

      {

        "type": "milestone",

        "id": "7c6b5e26-3068-47a6-bf3b-431d7ab7e704"

      }

    ],

    "participants": [

      {

        "participant": {

          "type": "user",

          "id": "b0ef899b-143c-4708-90ce-aecb3350e116"

        },

        "role": "decision_maker"

      }

    ],

    "purchase_order_number": "000023",

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

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

      },

      "profit_percentage": 0

    },

    "budget": {

      "provided": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "spent": {

        "total": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "time": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "materials": {

          "amount": 123.3,

          "currency": "EUR"

        }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"8a04371b-2ffb-407b-9b24-d5b5452009c7\"\n}", null, "application/json");
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
  "id": "8a04371b-2ffb-407b-9b24-d5b5452009c7"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.list

Next  
\
projects.create
