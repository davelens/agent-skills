---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-tasks-info
title: tasks.info | Teamleader Developers
words: 1173
---
- [](/)
- API Reference
- New Projects
- Tasks
- tasks.info

tasks.info

```
POST https://api.focus.teamleader.eu/projects-v2/tasks.info
```

Returns all the information for one task.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: ff19a113-50ba-4afc-9fff-2e5c5c5a5485

```json

{

  "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485"

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
  
  Example: ff19a113-50ba-4afc-9fff-2e5c5c5a5485
  
  project object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  group objectnullable
  
  If null, the task is not in any group.
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: nextgenProjectGroup
  
  work\_type objectnullable
  
  If null, the task does not have a specific work type.
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: workType
  
  task\_type objectnullable
  
  DEPRECATED - Use work_type instead.
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: workType
  
  statusstring
  
  Possible values: \[todo, inprogress, on_hold, done]
  
  Example: in_progress
  
  titlestring
  
  Example: Write API documentation
  
  descriptionstringnullable
  
  Example: I buy a house and garden somewhere, along a country road a piece
  
  billing\_methodstring
  
  Possible values: \[userrate, worktyperate, customrate, fixedprice, parentfixedprice, nonbillable]
  
  Example: user_rate
  
  billing\_statusBillingStatus
  
  Possible values: \[notbillable, notbilled, partiallybilled, fullybilled]
  
  Example: not_billable
  
  custom\_rate objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  amount\_billed objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  external\_budget objectnullable
  
  Also known as "budget". Value set by user to compare with price.
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  external\budget\spent objectnullable
  
  Simulated price if billing method were time\and\materials (dependent on type).
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  internal\_budget objectnullable
  
  Also known as "cost budget". Value set by user to compare with cost.
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  unit\_price objectnullable
  
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
  
  unit\_cost objectnullable
  
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
  
  time\_estimated objectnullable
  
  Value in seconds, rounded to the nearest minute.
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[seconds]
  
  Example: seconds
  
  time\_tracked objectnullable
  
  The total of all time tracked for this task.
  
  valuenumber
  
  Example: 60
  
  unitstring
  
  Possible values: \[seconds]
  
  Example: seconds
  
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

    "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485",

    "project": {

      "type": "nextgenProject",

      "id": "018536c0-bf23-77eb-81f5-10e87cad50bc"

    },

    "group": {

      "type": "nextgenProjectGroup",

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471"

    },

    "work_type": {

      "type": "workType",

      "id": "0f517e20-2e76-4684-8d6c-3334f6d7148c"

    },

    "task_type": {

      "type": "workType",

      "id": "0f517e20-2e76-4684-8d6c-3334f6d7148c"

    },

    "status": "in_progress",

    "title": "Write API documentation",

    "description": "I buy a house and garden somewhere, along a country road a piece",

    "billing_method": "user_rate",

    "billing_status": "not_billable",

    "custom_rate": {

      "amount": 123.3,

      "currency": "EUR"

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

    "unit_price": {

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

    "unit_cost": {

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

    "time_estimated": {

      "value": 28800,

      "unit": "seconds"

    },

    "time_tracked": {

      "value": 21100,

      "unit": "seconds"

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

    "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485",

    "project": {

      "type": "nextgenProject",

      "id": "018536c0-bf23-77eb-81f5-10e87cad50bc"

    },

    "group": {

      "type": "nextgenProjectGroup",

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471"

    },

    "work_type": {

      "type": "workType",

      "id": "0f517e20-2e76-4684-8d6c-3334f6d7148c"

    },

    "task_type": {

      "type": "workType",

      "id": "0f517e20-2e76-4684-8d6c-3334f6d7148c"

    },

    "status": "in_progress",

    "title": "Write API documentation",

    "description": "I buy a house and garden somewhere, along a country road a piece",

    "billing_method": "user_rate",

    "billing_status": "not_billable",

    "custom_rate": {

      "amount": 123.3,

      "currency": "EUR"

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

    "unit_price": {

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

    "unit_cost": {

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

    "time_estimated": {

      "value": 28800,

      "unit": "seconds"

    },

    "time_tracked": {

      "value": 21100,

      "unit": "seconds"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/tasks.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"ff19a113-50ba-4afc-9fff-2e5c5c5a5485\"\n}", null, "application/json");
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
  "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tasks.list

Next  
\
tasks.create
