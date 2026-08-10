---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-tasks-list
title: tasks.list | Teamleader Developers
words: 1128
---
- [](/)
- API Reference
- New Projects
- Tasks
- tasks.list

tasks.list

```
POST https://api.focus.teamleader.eu/projects-v2/tasks.list
```

Lists all the tasks that match the optional filters provided.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "filter": {

    "ids": [

      "46156648-87c6-478d-8aa7-1dc3a00dacab",

      "46156648-87c6-478d-8aa7-1dc3a00daca4"

    ]

  },

  "page": {

    "size": 20,

    "number": 1

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/tasks.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"46156648-87c6-478d-8aa7-1dc3a00dacab\",\n      \"46156648-87c6-478d-8aa7-1dc3a00daca4\"\n    ]\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
  },
  "page": {
    "size": 20,
    "number": 1
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Tasks

Next  
\
tasks.info
