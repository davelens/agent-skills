---
url: https://developer.focus.teamleader.eu/docs/api/legacy-projects-list
title: projects.list | Teamleader Developers
words: 1013
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Projects
- projects.list

projects.list

```
POST https://api.focus.teamleader.eu/projects.list
```

Get a list of projects.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  statusstring
  
  Possible values: \[active, on_hold, done, cancelled]
  
  participant\_idstring
  
  Example: ed544eac-02e4-037b-8a1a-c8dd662bf621
  
  termstring
  
  Searches for a term in title or description
  
  Example: coffee
  
  updated\_sincestring
  
  Example: 2020-06-04T16:44:33+00:00
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[dueon, title, createdat]
  
  Default value: due_on
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  Default value: asc
  
  ]

```json

{

  "filter": {

    "customer": {

      "type": "company",

      "id": "ebafa4c5-fa8a-4409-92e5-1b192243372f"

    },

    "participant_id": "ed544eac-02e4-037b-8a1a-c8dd662bf621",

    "term": "coffee",

    "updated_since": "2020-06-04T16:44:33+00:00"

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "due_on"

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
  
  Example: 624ca743-8998-4f8c-add1-c427bb022166
  
  referencestring
  
  Example: PRO-2
  
  titlestring
  
  Example: New company website
  
  descriptionstring
  
  statusstring
  
  Possible values: \[active, on_hold, done, cancelled]
  
  customer object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  starts\_onstring
  
  Example: 2016-02-04
  
  due\_onstring
  
  Example: 2016-10-14
  
  created\_atstring
  
  Example: 2016-02-01T11:25:41+00:00
  
  source object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
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
  
  ]

```json

{

  "data": [

    {

      "id": "624ca743-8998-4f8c-add1-c427bb022166",

      "reference": "PRO-2",

      "title": "New company website",

      "description": "",

      "status": "active",

      "customer": {

        "type": "contact",

        "id": "abbf02c0-8ff9-4048-b83f-5195035161e1"

      },

      "starts_on": "2016-02-04",

      "due_on": "2016-10-14",

      "created_at": "2016-02-01T11:25:41+00:00",

      "source": {

        "type": "deal",

        "id": "5023d7c2-80d7-4d4b-b2bd-0fcaa6a1f069"

      },

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

  ]

}
```

```json

{

  "data": [

    {

      "id": "624ca743-8998-4f8c-add1-c427bb022166",

      "reference": "PRO-2",

      "title": "New company website",

      "description": "",

      "status": "active",

      "customer": {

        "type": "contact",

        "id": "abbf02c0-8ff9-4048-b83f-5195035161e1"

      },

      "starts_on": "2016-02-04",

      "due_on": "2016-10-14",

      "created_at": "2016-02-01T11:25:41+00:00",

      "source": {

        "type": "deal",

        "id": "5023d7c2-80d7-4d4b-b2bd-0fcaa6a1f069"

      },

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"customer\": {\n      \"type\": \"company\",\n      \"id\": \"ebafa4c5-fa8a-4409-92e5-1b192243372f\"\n    },\n    \"participant_id\": \"ed544eac-02e4-037b-8a1a-c8dd662bf621\",\n    \"term\": \"coffee\",\n    \"updated_since\": \"2020-06-04T16:44:33+00:00\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"due_on\"\n    }\n  ]\n}", null, "application/json");
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
    "customer": {
      "type": "company",
      "id": "ebafa4c5-fa8a-4409-92e5-1b192243372f"
    },
    "participant_id": "ed544eac-02e4-037b-8a1a-c8dd662bf621",
    "term": "coffee",
    "updated_since": "2020-06-04T16:44:33+00:00"
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "due_on"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Legacy Projects

Next  
\
projects.info
