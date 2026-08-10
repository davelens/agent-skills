---
url: https://developer.focus.teamleader.eu/docs/api/credit-notes-list
title: creditNotes.list | Teamleader Developers
words: 770
---
- [](/)
- API Reference
- Invoicing
- Credit Notes
- creditNotes.list

creditNotes.list

```
POST https://api.focus.teamleader.eu/creditNotes.list
```

List credit notes.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  department\_idstring
  
  The ID of the department you wish to filter on.
  
  Example: 080aac72-ff1a-4627-bfe3-146b6eee979c
  
  updated\_sincestring
  
  Example: 2016-02-04T16:44:33+00:00
  
  invoice\_idstring
  
  Example: 60f03745-4289-4ae7-8c74-d797860bc887
  
  project\_idstring
  
  Example: 082e6289-30c5-45ad-bcd0-190b02d21e81
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  credit\note\date\_afterstring
  
  This date is inclusive
  
  Example: 2022-01-01
  
  credit\note\date\_beforestring
  
  This date is exclusive
  
  Example: 2023-01-01
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "filter": {

    "ids": [

      "string"

    ],

    "department_id": "080aac72-ff1a-4627-bfe3-146b6eee979c",

    "updated_since": "2016-02-04T16:44:33+00:00",

    "invoice_id": "60f03745-4289-4ae7-8c74-d797860bc887",

    "project_id": "082e6289-30c5-45ad-bcd0-190b02d21e81",

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "credit_note_date_after": "2022-01-01",

    "credit_note_date_before": "2023-01-01"

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
  
  Example: 2b43633b-22d1-41b6-b87b-e1fd742325d4
  
  department object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  credit\note\numberstringnullable
  
  Example: 2017/5
  
  credit\note\datestringnullable
  
  Example: 2016-02-04
  
  statusstring
  
  Possible values: \[booked]
  
  Example: booked
  
  invoice objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  paidboolean
  
  Example: true
  
  paid\_atstringnullable
  
  Example: 2016-03-03T16:44:33+00:00
  
  invoicee object
  
  namestring
  
  Example: De Rode Duivels
  
  vat\_numberstringnullable
  
  Example: BE0899623035
  
  customer object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
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
  
  payable object
  
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
  
  created\_atstring
  
  Example: 2016-02-04T16:44:33+00:00
  
  updated\_atstring
  
  Example: 2016-02-05T16:44:33+00:00
  
  ]

```json

{

  "data": [

    {

      "id": "2b43633b-22d1-41b6-b87b-e1fd742325d4",

      "department": {

        "type": "department",

        "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

      },

      "credit_note_number": "2017/5",

      "credit_note_date": "2016-02-04",

      "status": "booked",

      "invoice": {

        "type": "invoice",

        "id": "53484141-8382-4948-9a4c-9cd7e79b30bd"

      },

      "paid": true,

      "paid_at": "2016-03-03T16:44:33+00:00",

      "invoicee": {

        "name": "De Rode Duivels",

        "vat_number": "BE0899623035",

        "customer": {

          "type": "contact",

          "id": "dc2a40bf-f050-4c8e-a002-872a051150b9"

        }

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

        "payable": {

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

      "created_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "2b43633b-22d1-41b6-b87b-e1fd742325d4",

      "department": {

        "type": "department",

        "id": "36386b05-936e-4cc0-9523-bd20d797ebf5"

      },

      "credit_note_number": "2017/5",

      "credit_note_date": "2016-02-04",

      "status": "booked",

      "invoice": {

        "type": "invoice",

        "id": "53484141-8382-4948-9a4c-9cd7e79b30bd"

      },

      "paid": true,

      "paid_at": "2016-03-03T16:44:33+00:00",

      "invoicee": {

        "name": "De Rode Duivels",

        "vat_number": "BE0899623035",

        "customer": {

          "type": "contact",

          "id": "dc2a40bf-f050-4c8e-a002-872a051150b9"

        }

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

        "payable": {

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

      "created_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/creditNotes.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ],\n    \"department_id\": \"080aac72-ff1a-4627-bfe3-146b6eee979c\",\n    \"updated_since\": \"2016-02-04T16:44:33+00:00\",\n    \"invoice_id\": \"60f03745-4289-4ae7-8c74-d797860bc887\",\n    \"project_id\": \"082e6289-30c5-45ad-bcd0-190b02d21e81\",\n    \"customer\": {\n      \"type\": \"contact\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    },\n    \"credit_note_date_after\": \"2022-01-01\",\n    \"credit_note_date_before\": \"2023-01-01\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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

```json
{
  "filter": {
    "ids": [
      "string"
    ],
    "department_id": "080aac72-ff1a-4627-bfe3-146b6eee979c",
    "updated_since": "2016-02-04T16:44:33+00:00",
    "invoice_id": "60f03745-4289-4ae7-8c74-d797860bc887",
    "project_id": "082e6289-30c5-45ad-bcd0-190b02d21e81",
    "customer": {
      "type": "contact",
      "id": "f29abf48-337d-44b4-aad4-585f5277a456"
    },
    "credit_note_date_after": "2022-01-01",
    "credit_note_date_before": "2023-01-01"
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
Credit Notes

Next  
\
creditNotes.info
