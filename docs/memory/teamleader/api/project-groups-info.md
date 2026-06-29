---
url: https://developer.focus.teamleader.eu/docs/api/project-groups-info
title: projectGroups.info | Teamleader Developers
words: 932
---
- [](/)
- API Reference
- New Projects
- Groups
- projectGroups.info

projectGroups.info

```
POST https://api.focus.teamleader.eu/projects-v2/projectGroups.info
```

Returns all the information for one group.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: cfe2666c-b0f4-4e85-8d6f-9e1284706d0a

```json

{

  "id": "cfe2666c-b0f4-4e85-8d6f-9e1284706d0a"

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
  
  Example: cfe2666c-b0f4-4e85-8d6f-9e1284706d0a
  
  project object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  titlestring
  
  Example: Website frontpage
  
  descriptionstringnullable
  
  Example: My elaborate description
  
  colorColor
  
  Possible values: \[#00B2B2, #008A8C, #992600, #ED9E00, #D157D3, #A400B2, #0071F2, #004DA6, #64788F, #C0C0C4, #82828C, #1A1C20]
  
  Example: #00B2B2
  
  billing\_methodstring
  
  Possible values: \[timeandmaterials, fixedprice, parentfixedprice, nonbillable]
  
  Example: timeandmaterials
  
  billing\_statusBillingStatus
  
  Possible values: \[notbillable, notbilled, partiallybilled, fullybilled]
  
  Example: not_billable
  
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
  
  external\_budget objectnullable
  
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
  
  start\_datestringnullable
  
  Example: 2023-01-18
  
  end\_datestringnullable
  
  Example: 2023-03-22
  
  time\_estimated objectnullable
  
  The total of all time estimated for every item in this group. Value in seconds, rounded to the nearest minute.
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[seconds]
  
  Example: seconds
  
  time\_tracked objectnullable
  
  The total of all time tracked for every item in this group.
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[seconds]
  
  Example: seconds

```json

{

  "data": {

    "id": "cfe2666c-b0f4-4e85-8d6f-9e1284706d0a",

    "project": {

      "type": "nextgenProject",

      "id": "018536c0-bf23-77eb-81f5-10e87cad50bc"

    },

    "title": "Website frontpage",

    "description": "My elaborate description",

    "color": "#00B2B2",

    "billing_method": "time_and_materials",

    "billing_status": "not_billable",

    "amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "fixed_amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "external_budget": {

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

    "assignees": [

      {

        "assignee": {

          "type": "user",

          "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

        },

        "assign_type": "auto_assigned"

      }

    ],

    "start_date": "2023-01-18",

    "end_date": "2023-03-22",

    "time_estimated": {

      "value": 28800,

      "unit": "seconds"

    },

    "time_tracked": {

      "value": 21100,

      "unit": "seconds"

    }

  }

}
```

```json

{

  "data": {

    "id": "cfe2666c-b0f4-4e85-8d6f-9e1284706d0a",

    "project": {

      "type": "nextgenProject",

      "id": "018536c0-bf23-77eb-81f5-10e87cad50bc"

    },

    "title": "Website frontpage",

    "description": "My elaborate description",

    "color": "#00B2B2",

    "billing_method": "time_and_materials",

    "billing_status": "not_billable",

    "amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "fixed_amount_billed": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "external_budget": {

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

    "assignees": [

      {

        "assignee": {

          "type": "user",

          "id": "66abace2-62af-0836-a927-fe3f44b9b47b"

        },

        "assign_type": "auto_assigned"

      }

    ],

    "start_date": "2023-01-18",

    "end_date": "2023-03-22",

    "time_estimated": {

      "value": 28800,

      "unit": "seconds"

    },

    "time_tracked": {

      "value": 21100,

      "unit": "seconds"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projectGroups.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"cfe2666c-b0f4-4e85-8d6f-9e1284706d0a\"\n}", null, "application/json");
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
  "id": "cfe2666c-b0f4-4e85-8d6f-9e1284706d0a"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projectGroups.list

Next  
\
projectGroups.create
