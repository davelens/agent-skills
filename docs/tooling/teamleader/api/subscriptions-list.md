---
url: https://developer.focus.teamleader.eu/docs/api/subscriptions-list
title: subscriptions.list | Teamleader Developers
words: 800
---
- [](/)
- API Reference
- Invoicing
- Subscriptions
- subscriptions.list

subscriptions.list

```
POST https://api.focus.teamleader.eu/subscriptions.list
```

Get a list of subscriptions.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  invoice\_idstring
  
  Find subscriptions that generated the given invoice
  
  Example: 60f03745-4289-4ae7-8c74-d797860bc887
  
  deal\_idstring
  
  Filter on subscriptions created from a deal
  
  Example: fddf42f9-bda1-0c49-a22b-0bf147cd1e3f
  
  department\_idstring
  
  Filter on subscriptions of a specific department (company entity)
  
  Example: af48fe9e-d44c-0eac-8813-8be051b10921
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  statusstring\[]
  
  Filters on status:
  
  - active - Filters on active subscriptions
  - deactivated - Filters on deactivated subscriptions
  
  Possible values: \[active, deactivated]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[title, created_at, status]
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  ]

```json

{

  "filter": {

    "ids": [

      "46156648-87c6-478d-8aa7-1dc3a00dacab",

      "46156648-87c6-478d-8aa7-1dc3a00daca4"

    ],

    "invoice_id": "60f03745-4289-4ae7-8c74-d797860bc887",

    "deal_id": "fddf42f9-bda1-0c49-a22b-0bf147cd1e3f",

    "department_id": "af48fe9e-d44c-0eac-8813-8be051b10921",

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "status": [

      "active",

      "deactivated"

    ]

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "title"

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

Schema

- data object\[]
  
  Array [
  
  idstring
  
  Example: e2314517-3cab-4aa9-8471-450e73449041
  
  titlestring
  
  Example: Subscription for cookies
  
  notestringnullable
  
  Uses Markdown formatting
  
  Example: Some more information about this subscription
  
  statusstring
  
  Possible values: \[active, deactivated]
  
  Example: active
  
  department object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  invoicee object
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  for\attention\of objectnullable
  
  namestringnullable
  
  Example: Radja Nainggolan
  
  contact objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  project objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  starts\_onstring
  
  Example: 2022-05-21
  
  ends\_onstringnullable
  
  Example: 2023-07-21
  
  next\renewal\datestringnullable
  
  Example: 2022-06-21
  
  billing\_cycle object
  
  periodicity object
  
  oneOf
  
  - By Week
  - By Month
  - By Year
  
  unitstringrequired
  
  Possible values: \[week]
  
  Example: week
  
  periodnumberrequired
  
  Possible values: \[1, 2]
  
  Example: 2
  
  days\in\advanceinteger
  
  Possible values: \[0, 7, 14, 21, 28]
  
  Example: 7
  
  total object
  
  tax\_exclusive object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  tax\_inclusive object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  taxes object\[]
  
  Array [
  
  ratenumber
  
  Example: 0.21
  
  taxable object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  tax object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  ]
  
  web\_urlstring
  
  Example: https://focus.teamleader.eu/subscription_detail.php?id=e2314517-3cab-4aa9-8471-450e73449041
  
  purchase\order\numberstringnullable
  
  Example: 000023
  
  delivery\_information objectnullable
  
  typestring
  
  Possible values: \[setdaysafterinvoicedate]
  
  number\of\days\after\invoice\_dateinteger
  
  Example: 5
  
  created\_atstringnullable
  
  Example: 2022-04-18T16:44:33+00:00
  
  ]

```json

{

  "data": [

    {

      "id": "e2314517-3cab-4aa9-8471-450e73449041",

      "title": "Subscription for cookies",

      "note": "Some more **information** about this subscription",

      "status": "active",

      "department": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "string"

      },

      "invoicee": {

        "customer": {

          "type": "contact",

          "id": "f29abf48-337d-44b4-aad4-585f5277a456"

        },

        "for_attention_of": {

          "name": "Radja Nainggolan",

          "contact": {

            "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

            "type": "string"

          }

        }

      },

      "project": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "string"

      },

      "starts_on": "2022-05-21",

      "ends_on": "2023-07-21",

      "next_renewal_date": "2022-06-21",

      "billing_cycle": {

        "periodicity": {

          "unit": "week",

          "period": 2

        },

        "days_in_advance": 7

      },

      "total": {

        "tax_exclusive": {

          "amount": 123.3,

          "currency": "BAM"

        },

        "tax_inclusive": {

          "amount": 123.3,

          "currency": "BAM"

        },

        "taxes": [

          {

            "rate": 0.21,

            "taxable": {

              "amount": 123.3,

              "currency": "BAM"

            },

            "tax": {

              "amount": 123.3,

              "currency": "BAM"

            }

          }

        ]

      },

      "web_url": "https://focus.teamleader.eu/subscription_detail.php?id=e2314517-3cab-4aa9-8471-450e73449041",

      "purchase_order_number": "000023",

      "delivery_information": {

        "type": "set_days_after_invoice_date",

        "number_of_days_after_invoice_date": 5

      },

      "created_at": "2022-04-18T16:44:33+00:00"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/subscriptions.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"46156648-87c6-478d-8aa7-1dc3a00dacab\",\n      \"46156648-87c6-478d-8aa7-1dc3a00daca4\"\n    ],\n    \"invoice_id\": \"60f03745-4289-4ae7-8c74-d797860bc887\",\n    \"deal_id\": \"fddf42f9-bda1-0c49-a22b-0bf147cd1e3f\",\n    \"department_id\": \"af48fe9e-d44c-0eac-8813-8be051b10921\",\n    \"customer\": {\n      \"type\": \"contact\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    },\n    \"status\": [\n      \"active\",\n      \"deactivated\"\n    ]\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"title\"\n    }\n  ]\n}", null, "application/json");
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
    ],
    "invoice_id": "60f03745-4289-4ae7-8c74-d797860bc887",
    "deal_id": "fddf42f9-bda1-0c49-a22b-0bf147cd1e3f",
    "department_id": "af48fe9e-d44c-0eac-8813-8be051b10921",
    "customer": {
      "type": "contact",
      "id": "f29abf48-337d-44b4-aad4-585f5277a456"
    },
    "status": [
      "active",
      "deactivated"
    ]
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "title"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Subscriptions

Next  
\
subscriptions.info
