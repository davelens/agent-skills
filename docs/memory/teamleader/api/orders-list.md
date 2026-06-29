---
url: https://developer.focus.teamleader.eu/docs/api/orders-list
title: orders.list | Teamleader Developers
words: 814
---
- [](/)
- API Reference
- Deals
- Orders
- orders.list

orders.list

```
POST https://api.focus.teamleader.eu/orders.list
```

Get a list of orders.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  includesstring
  
  Comma-separated list of optional includes
  
  Example: custom_fields

```json

{

  "filter": {

    "ids": [

      "31b9d864-da1d-060e-9811-f683896aeb11",

      "7c3c4edc-fd8d-0cc3-bd1e-9f3f9d7b7db2"

    ]

  },

  "includes": "custom_fields"

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
  
  Example: 31b9d864-da1d-060e-9811-f683896aeb11
  
  namestring
  
  Example: General costs
  
  order\_datestringnullable
  
  Example: 2016-02-04
  
  order\_numbernumbernullable
  
  Example: 32
  
  delivery\_datestringnullable
  
  Example: 2016-10-14
  
  payment\_term objectnullable
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
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
  
  purchase\price\tax\_exclusive objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  purchase\price\tax\_inclusive objectnullable
  
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
  
  Example: https://focus.teamleader.eu/order_detail.php?id=31b9d864-da1d-060e-9811-f683896aeb11
  
  supplier objectnullable
  
  typestring
  
  Possible values: \[company, contact]
  
  Example: contact
  
  idstring
  
  Example: e2314517-3cab-4aa9-8471-450e73449040
  
  department objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  deal objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  project objectnullable
  
  Only available for users that have access to the old projects module
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  assignee objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  custom\_fields object\[]
  
  Only included with request parameter includes=custom_fields
  
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
  
  ]

```json

{

  "data": [

    {

      "id": "31b9d864-da1d-060e-9811-f683896aeb11",

      "name": "General costs",

      "order_date": "2016-02-04",

      "order_number": 32,

      "delivery_date": "2016-10-14",

      "payment_term": {

        "type": "cash",

        "days": 0

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

        "purchase_price_tax_exclusive": {

          "amount": 123.3,

          "currency": "BAM"

        },

        "purchase_price_tax_inclusive": {

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

      "web_url": "https://focus.teamleader.eu/order_detail.php?id=31b9d864-da1d-060e-9811-f683896aeb11",

      "supplier": {

        "type": "contact",

        "id": "e2314517-3cab-4aa9-8471-450e73449040"

      },

      "department": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "string"

      },

      "deal": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "string"

      },

      "project": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "string"

      },

      "assignee": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "string"

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

  ]

}
```

```json

{

  "data": [

    {

      "id": "31b9d864-da1d-060e-9811-f683896aeb11",

      "name": "General costs",

      "order_date": "2016-02-04",

      "delivery_date": "2016-10-14",

      "payment_term": {

        "type": "cash"

      },

      "total": {

        "tax_exclusive": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "tax_inclusive": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "purchase_price_tax_exclusive": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "purchase_price_tax_inclusive": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "taxes": [

          {

            "rate": 0.21,

            "taxable": {

              "amount": 123.3,

              "currency": "EUR"

            },

            "tax": {

              "amount": 123.3,

              "currency": "EUR"

            }

          }

        ]

      },

      "web_url": "https://focus.teamleader.eu/order_detail.php?id=31b9d864-da1d-060e-9811-f683896aeb11",

      "supplier": {

        "type": "contact",

        "id": "e2314517-3cab-4aa9-8471-450e73449040"

      },

      "department": {

        "type": "department",

        "id": "aa849e5d-5678-4d41-a052-2e4e5420707d"

      },

      "deal": {

        "type": "deal",

        "id": "a7431439-5795-433c-8503-089cc2fff03a"

      },

      "project": {

        "type": "project",

        "id": "656e4faa-8006-4a58-9de9-ffe509633743"

      },

      "assignee": {

        "type": "user",

        "id": "7ba98a20-5e2b-4b46-81b9-a3364432d4f0"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/orders.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"31b9d864-da1d-060e-9811-f683896aeb11\",\n      \"7c3c4edc-fd8d-0cc3-bd1e-9f3f9d7b7db2\"\n    ]\n  },\n  \"includes\": \"custom_fields\"\n}", null, "application/json");
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
      "31b9d864-da1d-060e-9811-f683896aeb11",
      "7c3c4edc-fd8d-0cc3-bd1e-9f3f9d7b7db2"
    ]
  },
  "includes": "custom_fields"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
orders.info

Next  
\
Meetings
