---
url: https://developer.focus.teamleader.eu/docs/api/credit-notes-info
title: creditNotes.info | Teamleader Developers
words: 1257
---
- [](/)
- API Reference
- Invoicing
- Credit Notes
- creditNotes.info

creditNotes.info

```
POST https://api.focus.teamleader.eu/creditNotes.info
```

Get details for a single credit note

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 27300f09-6250-4a23-8557-d84c52f99ecf

```json

{

  "id": "27300f09-6250-4a23-8557-d84c52f99ecf"

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
  
  Example: 27300f09-6250-4a23-8557-d84c52f99ecf
  
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
  
  emailstringnullable
  
  Example: duivels@test.com
  
  national\identification\numberstringnullable
  
  Example: 123
  
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
  
  product\_category objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
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
  
  created\_atstring
  
  Example: 2016-02-04T16:44:33+00:00
  
  updated\_atstring
  
  Example: 2016-02-05T16:44:33+00:00
  
  document\_template object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  peppol\_statusPeppolStatusnullable
  
  Possible values: \[sending, sendingfailed, sent, applicationacknowledged, applicationaccepted, applicationrejected, receiveracknowledged, receiveraccepted, receiverrejected, receiverisprocessing, receiverawaitsfeedback, receiverconditionallyaccepted, receiverpaid]
  
  Example: sent
  
  ]

```json

{

  "data": [

    {

      "id": "27300f09-6250-4a23-8557-d84c52f99ecf",

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

        },

        "email": "duivels@test.com",

        "national_identification_number": "123"

      },

      "discounts": [

        {

          "type": "percentage",

          "value": 15.5,

          "description": "winter promotion"

        }

      ],

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

              "product_category": {

                "id": "e2314517-3cab-4aa9-8471-450e73449041",

                "type": "productCategory"

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

      "created_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00",

      "document_template": {

        "type": "documentTemplate",

        "id": "179e1564-493b-4305-8c54-a34fc80920fc"

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "27300f09-6250-4a23-8557-d84c52f99ecf",

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

        },

        "email": "duivels@test.com",

        "national_identification_number": "123"

      },

      "discounts": [

        {

          "type": "percentage",

          "value": 15.5,

          "description": "winter promotion"

        }

      ],

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

              "product_category": {

                "id": "e2314517-3cab-4aa9-8471-450e73449041",

                "type": "productCategory"

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

      "created_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00",

      "document_template": {

        "type": "documentTemplate",

        "id": "179e1564-493b-4305-8c54-a34fc80920fc"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/creditNotes.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"27300f09-6250-4a23-8557-d84c52f99ecf\"\n}", null, "application/json");
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
  "id": "27300f09-6250-4a23-8557-d84c52f99ecf"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
creditNotes.list

Next  
\
creditNotes.download
