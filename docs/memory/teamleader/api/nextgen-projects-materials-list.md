---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-materials-list
title: materials.list | Teamleader Developers
words: 955
---
- [](/)
- API Reference
- New Projects
- Materials
- materials.list

materials.list

```
POST https://api.focus.teamleader.eu/projects-v2/materials.list
```

Lists all the materials that match the optional filters provided.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]

```json

{

  "filter": {

    "ids": [

      "46156648-87c6-478d-8aa7-1dc3a00dacab",

      "46156648-87c6-478d-8aa7-1dc3a00daca4"

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
  
  Example: 39c64ba9-ebf1-491a-8486-a0b96ff21c07
  
  project object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  group objectnullable
  
  If null, the material is not in any group.
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: nextgenProjectGroup
  
  titlestring
  
  Example: Metal studs
  
  statusstring
  
  Possible values: \[todo, inprogress, on_hold, done]
  
  Example: in_progress
  
  billing\_methodstring
  
  Possible values: \[fixedprice, unitprice, nonbillable, parentfixed_price]
  
  Example: unit_price
  
  billing\_statusBillingStatus
  
  Possible values: \[notbillable, notbilled, partiallybilled, fullybilled]
  
  Example: not_billable
  
  quantitynumbernullable
  
  quantity\_estimatednumbernullable
  
  unit\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  unit\_cost objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  unit objectnullable
  
  null if the default unit is used
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: priceunit
  
  amount\_billed objectnullable
  
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
  
  Possible values: \[manual]
  
  Example: manual
  
  ]
  
  start\_datestringnullable
  
  Example: 2023-01-18
  
  end\_datestringnullable
  
  Example: 2023-03-22
  
  product objectnullable
  
  null if no product is coupled to the material
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: product
  
  ]

```json

{

  "data": [

    {

      "id": "39c64ba9-ebf1-491a-8486-a0b96ff21c07",

      "project": {

        "type": "nextgenProject",

        "id": "018536c0-bf23-77eb-81f5-10e87cad50bc"

      },

      "group": {

        "type": "nextgenProjectGroup",

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471"

      },

      "title": "Metal studs",

      "status": "in_progress",

      "billing_method": "unit_price",

      "billing_status": "not_billable",

      "quantity": null,

      "quantity_estimated": null,

      "unit_price": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "unit_cost": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "unit": {

        "type": "priceunit",

        "id": "f1b7ae71-b610-02e0-8a10-443c31597e11"

      },

      "amount_billed": {

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

          "assign_type": "manual"

        }

      ],

      "start_date": "2023-01-18",

      "end_date": "2023-03-22",

      "product": {

        "type": "product",

        "id": "85fd7319-b094-462a-ae78-ff94d6bcb226"

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "39c64ba9-ebf1-491a-8486-a0b96ff21c07",

      "project": {

        "type": "nextgenProject",

        "id": "018536c0-bf23-77eb-81f5-10e87cad50bc"

      },

      "group": {

        "type": "nextgenProjectGroup",

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471"

      },

      "title": "Metal studs",

      "status": "in_progress",

      "billing_method": "unit_price",

      "billing_status": "not_billable",

      "quantity": null,

      "quantity_estimated": null,

      "unit_price": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "unit_cost": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "unit": {

        "type": "priceunit",

        "id": "f1b7ae71-b610-02e0-8a10-443c31597e11"

      },

      "amount_billed": {

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

          "assign_type": "manual"

        }

      ],

      "start_date": "2023-01-18",

      "end_date": "2023-03-22",

      "product": {

        "type": "product",

        "id": "85fd7319-b094-462a-ae78-ff94d6bcb226"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/materials.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"46156648-87c6-478d-8aa7-1dc3a00dacab\",\n      \"46156648-87c6-478d-8aa7-1dc3a00daca4\"\n    ]\n  }\n}", null, "application/json");
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
      "46156648-87c6-478d-8aa7-1dc3a00dacab",
      "46156648-87c6-478d-8aa7-1dc3a00daca4"
    ]
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Materials

Next  
\
materials.info
