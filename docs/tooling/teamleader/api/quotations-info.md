---
url: https://developer.focus.teamleader.eu/docs/api/quotations-info
title: quotations.info | Teamleader Developers
words: 1241
---
- [](/)
- API Reference
- Deals
- Quotations
- quotations.info

quotations.info

```
POST https://api.focus.teamleader.eu/quotations.info
```

Get a quotation.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: e7a3fe2b-2c75-480f-87b9-121816b5257b

```json

{

  "id": "e7a3fe2b-2c75-480f-87b9-121816b5257b"

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
  
  Example: e7a3fe2b-2c75-480f-87b9-121816b5257b
  
  deal object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  grouped\_lines object\[]
  
  Array [
  
  section object
  
  titlestring
  
  line\_items object\[]
  
  Array [
  
  product objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  quantitynumber
  
  Example: 3
  
  descriptionstring
  
  Example: An awesome product
  
  extended\_descriptionstring
  
  Uses Markdown formatting
  
  Example: Some more information about this awesome product
  
  unit objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  unit\_price object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  taxstring
  
  Possible values: \[excluding]
  
  Example: excluding
  
  tax object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  discount objectnullable
  
  valuenumber
  
  Example: 10
  
  typestring
  
  Values between 0 and 100
  
  Possible values: \[percentage]
  
  Example: percentage
  
  total object
  
  tax\_exclusive object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  tax\exclusive\before\_discount object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  tax\_inclusive object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  tax\inclusive\before\_discount object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  purchase\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  periodicity objectnullable
  
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
  
  ]
  
  ]
  
  currencystring
  
  Example: USD
  
  currency\exchange\rate object
  
  fromCurrencyCode
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  Example: USD
  
  toCurrencyCode
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  Example: EUR
  
  ratenumber
  
  Example: 1.1234
  
  textstring
  
  Uses Markdown formatting
  
  Example: Quotation text
  
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
  
  purchase\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  discounts object\[]
  
  Array [
  
  typestring
  
  Values between 0 and 100
  
  Possible values: \[percentage]
  
  Example: percentage
  
  valuenumber
  
  Example: 15.5
  
  descriptionstring
  
  Example: winter promotion
  
  ]
  
  created\_atstringnullable
  
  Example: 2017-05-09T11:25:11+00:00
  
  updated\_atstringnullable
  
  Example: 2017-05-09T11:30:58+00:00
  
  statusstring
  
  Possible values: \[open, accepted, expired, rejected, closed]
  
  Example: open
  
  namestring
  
  Example: Webdevelopment
  
  document\_template object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  expiry object
  
  returned if user has access to quotation expiry and includes=expiry is requested
  
  expires\_afterstring
  
  Example: 2023-04-05
  
  action\after\expirystring
  
  Possible values: \[lock, none]

```json

{

  "data": {

    "id": "e7a3fe2b-2c75-480f-87b9-121816b5257b",

    "deal": {

      "type": "deal",

      "id": "53474a7a-f9b2-4dd4-88a8-40ce773c7a64"

    },

    "grouped_lines": [

      {

        "section": {

          "title": ""

        },

        "line_items": [

          {

            "product": {

              "type": "product",

              "id": "e2314517-3cab-4aa9-8471-450e73449040"

            },

            "quantity": 3,

            "description": "An awesome product",

            "extended_description": "Some more information about this awesome product",

            "unit": {

              "type": "unitOfMeasure",

              "id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71"

            },

            "unit_price": {

              "amount": 123.3,

              "currency": "EUR",

              "tax": "excluding"

            },

            "tax": {

              "type": "taxRate",

              "id": "e2314517-3cab-4aa9-8471-450e73449042"

            },

            "discount": {

              "type": "percentage",

              "value": 15

            },

            "purchase_price": {

              "amount": 123.3,

              "currency": "EUR"

            },

            "total": {

              "tax_exclusive": {

                "amount": 123.3,

                "currency": "EUR"

              },

              "tax_exclusive_before_discount": {

                "amount": 123.3,

                "currency": "EUR"

              },

              "tax_inclusive": {

                "amount": 123.3,

                "currency": "EUR"

              },

              "tax_inclusive_before_discount": {

                "amount": 123.3,

                "currency": "EUR"

              }

            },

            "periodicity": {

              "unit": "week",

              "period": 2

            }

          }

        ]

      }

    ],

    "currency": "USD",

    "currency_exchange_rate": {

      "from": "USD",

      "to": "EUR",

      "rate": 1.1234

    },

    "text": "Quotation text",

    "total": {

      "tax_exclusive": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "tax_inclusive": {

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

      ],

      "purchase_price": {

        "amount": 123.3,

        "currency": "EUR"

      }

    },

    "discounts": [

      {

        "type": "percentage",

        "value": 15.5,

        "description": "winter promotion"

      }

    ],

    "created_at": "2017-05-09T11:25:11+00:00",

    "updated_at": "2017-05-09T11:30:58+00:00",

    "status": "open",

    "name": "Webdevelopment",

    "document_template": {

      "type": "documentTemplate",

      "id": "179e1564-493b-4305-8c54-a34fc80920fc"

    },

    "expiry": {

      "expires_after": "2023-04-05",

      "action_after_expiry": "lock"

    }

  }

}
```

```json

{

  "data": {

    "id": "e7a3fe2b-2c75-480f-87b9-121816b5257b",

    "deal": {

      "type": "deal",

      "id": "53474a7a-f9b2-4dd4-88a8-40ce773c7a64"

    },

    "grouped_lines": [

      {

        "section": {

          "title": ""

        },

        "line_items": [

          {

            "product": {

              "type": "product",

              "id": "e2314517-3cab-4aa9-8471-450e73449040"

            },

            "quantity": 3,

            "description": "An awesome product",

            "extended_description": "Some more information about this awesome product",

            "unit": {

              "type": "unitOfMeasure",

              "id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71"

            },

            "unit_price": {

              "amount": 123.3,

              "currency": "EUR",

              "tax": "excluding"

            },

            "tax": {

              "type": "taxRate",

              "id": "e2314517-3cab-4aa9-8471-450e73449042"

            },

            "discount": {

              "type": "percentage",

              "value": 15

            },

            "purchase_price": {

              "amount": 123.3,

              "currency": "EUR"

            },

            "total": {

              "tax_exclusive": {

                "amount": 123.3,

                "currency": "EUR"

              },

              "tax_exclusive_before_discount": {

                "amount": 123.3,

                "currency": "EUR"

              },

              "tax_inclusive": {

                "amount": 123.3,

                "currency": "EUR"

              },

              "tax_inclusive_before_discount": {

                "amount": 123.3,

                "currency": "EUR"

              }

            },

            "periodicity": {

              "unit": "week",

              "period": 2

            }

          }

        ]

      }

    ],

    "currency": "USD",

    "currency_exchange_rate": {

      "from": "USD",

      "to": "EUR",

      "rate": 1.1234

    },

    "text": "Quotation text",

    "total": {

      "tax_exclusive": {

        "amount": 123.3,

        "currency": "EUR"

      },

      "tax_inclusive": {

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

      ],

      "purchase_price": {

        "amount": 123.3,

        "currency": "EUR"

      }

    },

    "discounts": [

      {

        "type": "percentage",

        "value": 15.5,

        "description": "winter promotion"

      }

    ],

    "created_at": "2017-05-09T11:25:11+00:00",

    "updated_at": "2017-05-09T11:30:58+00:00",

    "status": "open",

    "name": "Webdevelopment",

    "document_template": {

      "type": "documentTemplate",

      "id": "179e1564-493b-4305-8c54-a34fc80920fc"

    },

    "expiry": {

      "expires_after": "2023-04-05",

      "action_after_expiry": "lock"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/quotations.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"e7a3fe2b-2c75-480f-87b9-121816b5257b\"\n}", null, "application/json");
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
  "id": "e7a3fe2b-2c75-480f-87b9-121816b5257b"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
quotations.list

Next  
\
quotations.download
