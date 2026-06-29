---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-info
title: projects.info | Teamleader Developers
words: 1464
---
- [](/)
- API Reference
- New Projects
- Projects
- projects.info

projects.info

```
POST https://api.focus.teamleader.eu/projects-v2/projects.info
```

Returns all the information of a single project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 0184f276-811b-716d-8b79-17628c9573c6
  
  includesstring
  
  Comma-separated list of optional includes
  
  Example: legacy_project

```json

{

  "id": "0184f276-811b-716d-8b79-17628c9573c6",

  "includes": "legacy_project"

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
  
  Example: 49b403be-a32e-0901-9b1c-25214f9027c6
  
  project\_keynumber
  
  Positive, sequential integer representing the index of the project for the account
  
  Example: 123
  
  titlestring
  
  Example: My project title
  
  descriptionstringnullable
  
  Example: My project description
  
  statusstring
  
  Possible values: \[open, closed]
  
  update\_rightsstring
  
  Possible values: \[owners, ownersandassignees, everyone]
  
  Example: owners
  
  billing\_methodstring
  
  Possible values: \[timeandmaterials, fixedprice, nonbillable]
  
  Example: timeandmaterials
  
  time\_budget objectnullable
  
  Value in seconds, rounded to the nearest minute
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[seconds]
  
  Example: seconds
  
  time\_tracked objectnullable
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[seconds]
  
  Example: seconds
  
  amount\_billed objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  fixed\amount\billed objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  amount\_paid objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  external\_budget objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  task\external\budget\_spent objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  material\external\budget\_spent objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  external\budget\spent objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  internal\_budget objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  fixed\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  calculated\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  cost objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  margin objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  margin\_percentagenumbernullable
  
  null if the user does not have access to "Costs on projects"
  
  start\_datestringnullable
  
  Example: 2022-02-23
  
  end\_datestringnullable
  
  Example: 2022-02-28
  
  purchase\order\numberstringnullable
  
  Example: 000023
  
  company\_entity objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  owners object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  colorColor
  
  Possible values: \[#00B2B2, #008A8C, #992600, #ED9E00, #D157D3, #A400B2, #0071F2, #004DA6, #64788F, #C0C0C4, #82828C, #1A1C20]
  
  Example: #00B2B2
  
  assignees object\[]
  
  Array [
  
  assignee object
  
  typestring
  
  Possible values: \[team, user]
  
  Example: user
  
  idstring
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  assign\_typestring
  
  Possible values: \[manual, autoassigned, manualandautoassigned]
  
  Example: auto_assigned
  
  ]
  
  customers object\[]
  
  Array [
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  ]
  
  deals object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  quotations object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  custom\user\rates object\[]
  
  Array [
  
  user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  custom\_rate object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  ]
  
  custom\_fields object\[]
  
  Auto-increment custom fields are not supported on projects.
  
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
  
  legacy\_project objectnullable
  
  Only included if legacy_project is in the optional includes. null if there is no corresponding legacy project
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: project
  
  external\_parties object\[]
  
  Array [
  
  idstring
  
  Example: e80e3e0f-4008-47cc-aa94-3d71a42052bf
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  functionstring
  
  Example: Sales representative
  
  sub\_functionstring
  
  Example: Teamleader Focus FR
  
  ]

```json

{

  "data": {

    "id": "49b403be-a32e-0901-9b1c-25214f9027c6",

    "project_key": 123,

    "title": "My project title",

    "description": "My project description",

    "status": "open",

    "update_rights": "owners",

    "billing_method": "time_and_materials",

    "time_budget": {

      "value": 43200,

      "unit": "seconds"

    },

    "time_tracked": {

      "value": 43200,

      "unit": "seconds"

    },

    "amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "fixed_amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "amount_paid": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "external_budget": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "task_external_budget_spent": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "material_external_budget_spent": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "external_budget_spent": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "internal_budget": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "fixed_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "calculated_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "cost": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "margin": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "margin_percentage": null,

    "start_date": "2022-02-23",

    "end_date": "2022-02-28",

    "purchase_order_number": "000023",

    "company_entity": {

      "type": "department",

      "id": "0d0dec5a-7096-4009-be37-07eab117db07"

    },

    "owners": [

      {

        "type": "user",

        "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

      }

    ],

    "color": "#00B2B2",

    "assignees": [

      {

        "assignee": {

          "type": "user",

          "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

        },

        "assign_type": "auto_assigned"

      }

    ],

    "customers": [

      {

        "type": "contact",

        "id": "1106f231-0464-41b7-8b0b-19451af81afe"

      }

    ],

    "deals": [

      {

        "type": "deal",

        "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

      }

    ],

    "quotations": [

      {

        "type": "quotation",

        "id": "a7f15c40-3b65-09ae-9f1b-d55786bc7b01"

      }

    ],

    "custom_user_rates": [

      {

        "user": {

          "type": "user",

          "id": "55d3707c-14dc-4b62-a072-e3f4c1413462"

        },

        "custom_rate": {

          "amount": 123.3,

          "currency": "EUR"

        }

      }

    ],

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "legacy_project": {

      "type": "project",

      "id": "624ca743-8998-4f8c-add1-c427bb022166"

    },

    "external_parties": {

      "id": "f7fcf4eb-583c-4e6b-88be-2a9e83afdb81",

      "customer": {

        "type": "contact",

        "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

      },

      "function": "Sales representative",

      "sub_function": "Teamleader Focus FR"

    }

  }

}
```

```json

{

  "data": {

    "id": "49b403be-a32e-0901-9b1c-25214f9027c6",

    "project_key": 123,

    "title": "My project title",

    "description": "My project description",

    "status": "open",

    "update_rights": "owners",

    "billing_method": "time_and_materials",

    "time_budget": {

      "value": 43200,

      "unit": "seconds"

    },

    "time_tracked": {

      "value": 43200,

      "unit": "seconds"

    },

    "amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "fixed_amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "amount_paid": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "external_budget": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "task_external_budget_spent": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "material_external_budget_spent": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "external_budget_spent": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "internal_budget": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "fixed_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "calculated_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "cost": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "margin": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "margin_percentage": null,

    "start_date": "2022-02-23",

    "end_date": "2022-02-28",

    "purchase_order_number": "000023",

    "company_entity": {

      "type": "department",

      "id": "0d0dec5a-7096-4009-be37-07eab117db07"

    },

    "owners": [

      {

        "type": "user",

        "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

      }

    ],

    "color": "#00B2B2",

    "assignees": [

      {

        "assignee": {

          "type": "user",

          "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

        },

        "assign_type": "auto_assigned"

      }

    ],

    "customers": [

      {

        "type": "contact",

        "id": "1106f231-0464-41b7-8b0b-19451af81afe"

      }

    ],

    "deals": [

      {

        "type": "deal",

        "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

      }

    ],

    "quotations": [

      {

        "type": "quotation",

        "id": "a7f15c40-3b65-09ae-9f1b-d55786bc7b01"

      }

    ],

    "custom_user_rates": [

      {

        "user": {

          "type": "user",

          "id": "55d3707c-14dc-4b62-a072-e3f4c1413462"

        },

        "custom_rate": {

          "amount": 123.3,

          "currency": "EUR"

        }

      }

    ],

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "legacy_project": {

      "type": "project",

      "id": "624ca743-8998-4f8c-add1-c427bb022166"

    },

    "external_parties": [

      {

        "id": "f7fcf4eb-583c-4e6b-88be-2a9e83afdb81",

        "customer": {

          "type": "contact",

          "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

        },

        "function": "Sales representative",

        "sub_function": "Teamleader Focus FR"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projects.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"0184f276-811b-716d-8b79-17628c9573c6\",\n  \"includes\": \"legacy_project\"\n}", null, "application/json");
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
  "id": "0184f276-811b-716d-8b79-17628c9573c6",
  "includes": "legacy_project"
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
