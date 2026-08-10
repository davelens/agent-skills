---
url: https://developer.focus.teamleader.eu/docs/api/invoices-info
title: invoices.info | Teamleader Developers
words: 1603
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.info

invoices.info

```
POST https://api.focus.teamleader.eu/invoices.info
```

Get details for a single invoice.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstring
  
  Example: 27300f09-6250-4a23-8557-d84c52f99ecf
  
  includesstring
  
  when used, the response will include totals.dueincassoinclusive, totals.fixedlatefee and totals.interest
  
  Example: late_fees

```json

{

  "id": "27300f09-6250-4a23-8557-d84c52f99ecf",

  "includes": "late_fees"

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

- data object
  
  idstring
  
  Example: e540fe7e-dce2-459e-bf7e-24e605fc18b3
  
  department object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  invoice\_numberstringnullable
  
  Example: 2017 / 5
  
  invoice\_datestringnullable
  
  Example: 2016-02-04
  
  statusstring
  
  Possible values: \[draft, outstanding, matched]
  
  Example: matched
  
  due\_onstringnullable
  
  Example: 2016-03-03
  
  paidboolean
  
  Example: true
  
  paid\_atstringnullable
  
  Example: 2016-02-04T16:44:33+00:00
  
  sentboolean
  
  Example: true
  
  purchase\order\numberstringnullable
  
  Example: 000023
  
  invoicee object
  
  namestring
  
  Example: De Rode Duivels
  
  vat\_numberstringnullable
  
  Example: BE0899623035
  
  customer object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  for\attention\of objectnullable
  
  namestringnullable
  
  Example: Radja Nainggolan
  
  contact objectnullable
  
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
  
  extended\_descriptionstringnullable
  
  Uses Markdown formatting
  
  Example: Some more information about this awesome product
  
  unit objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  unit\_price object
  
  amountnumberrequired
  
  Example: 123.3
  
  taxstringrequired
  
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
  
  withheld\_tax objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  ]
  
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
  
  withheld\_taxes object\[]
  
  Array [
  
  idstring
  
  Example: e2314517-3cab-4aa9-8471-450e73449040
  
  taxable object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  withheld object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  ]
  
  payable object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  due object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  due\incasso\inclusive object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  fixed\late\fee object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  interest object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  payment\_term object
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  payments object\[]
  
  Array [
  
  paid\_atstring
  
  Example: 2016-03-03T16:44:33+00:00
  
  payment object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  ]
  
  payment\_referencestringnullable
  
  Example: +++084/2613/66074+++
  
  notestringnullable
  
  This is the remarks field
  
  Example: 'Some extra remarks about the invoice'
  
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
  
  expected\payment\method objectnullable
  
  oneOf
  
  - With method & optional reference
  - With method only
  - SEPA direct debit
  
  methodstring
  
  Possible values: \[directdebit, creditcard]
  
  Example: credit_card
  
  referencestringnullable
  
  Example: AB1234
  
  file objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  deal objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  project objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  on\hold\sincestringnullable
  
  Example: 2016-02-01
  
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
  
  created\_atstring
  
  Example: 2016-02-04T16:44:33+00:00
  
  updated\_atstring
  
  Example: 2016-02-05T16:44:33+00:00
  
  document\_template object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  delivery\_datestringnullable
  
  Example: 2025-12-08
  
  peppol\_statusPeppolStatusnullable
  
  Possible values: \[sending, sendingfailed, sent, applicationacknowledged, applicationaccepted, applicationrejected, receiveracknowledged, receiveraccepted, receiverrejected, receiverisprocessing, receiverawaitsfeedback, receiverconditionallyaccepted, receiverpaid]
  
  Example: sent

```json

{

  "data": {

    "id": "e540fe7e-dce2-459e-bf7e-24e605fc18b3",

    "department": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "invoice_number": "2017 / 5",

    "invoice_date": "2016-02-04",

    "status": "matched",

    "due_on": "2016-03-03",

    "paid": true,

    "paid_at": "2016-02-04T16:44:33+00:00",

    "sent": true,

    "purchase_order_number": "000023",

    "invoicee": {

      "name": "De Rode Duivels",

      "vat_number": "BE0899623035",

      "customer": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "string"

      },

      "for_attention_of": {

        "name": "Radja Nainggolan",

        "contact": {

          "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

          "type": "string"

        }

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

    "grouped_lines": [

      {

        "section": {

          "title": "string"

        },

        "line_items": [

          {

            "product": {

              "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

              "type": "string"

            },

            "quantity": 3,

            "description": "An awesome product",

            "extended_description": "Some more information about this awesome product",

            "unit": {

              "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

              "type": "string"

            },

            "unit_price": {

              "amount": 123.3,

              "tax": "excluding"

            },

            "tax": {

              "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

              "type": "string"

            },

            "discount": {

              "value": 10,

              "type": "percentage"

            },

            "total": {

              "tax_exclusive": {

                "amount": 123.3,

                "currency": "BAM"

              },

              "tax_exclusive_before_discount": {

                "amount": 123.3,

                "currency": "BAM"

              },

              "tax_inclusive": {

                "amount": 123.3,

                "currency": "BAM"

              },

              "tax_inclusive_before_discount": {

                "amount": 123.3,

                "currency": "BAM"

              }

            },

            "product_category": {

              "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

              "type": "string"

            },

            "withheld_tax": {

              "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

              "type": "string"

            }

          }

        ]

      }

    ],

    "total": {

      "tax_exclusive": {

        "amount": 123.3,

        "currency": "BAM"

      },

      "tax_exclusive_before_discount": {

        "amount": 123.3,

        "currency": "BAM"

      },

      "tax_inclusive": {

        "amount": 123.3,

        "currency": "BAM"

      },

      "tax_inclusive_before_discount": {

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

      ],

      "withheld_taxes": [

        {

          "id": "e2314517-3cab-4aa9-8471-450e73449040",

          "taxable": {

            "amount": 123.3,

            "currency": "BAM"

          },

          "withheld": {

            "amount": 123.3,

            "currency": "BAM"

          }

        }

      ],

      "payable": {

        "amount": 123.3,

        "currency": "BAM"

      },

      "due": {

        "amount": 123.3,

        "currency": "BAM"

      },

      "due_incasso_inclusive": {

        "amount": 123.3,

        "currency": "BAM"

      },

      "fixed_late_fee": {

        "amount": 123.3,

        "currency": "BAM"

      },

      "interest": {

        "amount": 123.3,

        "currency": "BAM"

      }

    },

    "payment_term": {

      "type": "cash",

      "days": 0

    },

    "payments": [

      {

        "paid_at": "2016-03-03T16:44:33+00:00",

        "payment": {

          "amount": 123.3,

          "currency": "BAM"

        }

      }

    ],

    "payment_reference": "+++084/2613/66074+++",

    "note": "'Some extra remarks about the invoice'",

    "currency": "USD",

    "currency_exchange_rate": {

      "from": "USD",

      "to": "EUR",

      "rate": 1.1234

    },

    "expected_payment_method": {

      "method": "credit_card",

      "reference": "AB1234"

    },

    "file": {

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

    "on_hold_since": "2016-02-01",

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "created_at": "2016-02-04T16:44:33+00:00",

    "updated_at": "2016-02-05T16:44:33+00:00",

    "document_template": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "delivery_date": "2025-12-08",

    "peppol_status": "sent"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"27300f09-6250-4a23-8557-d84c52f99ecf\",\n  \"includes\": \"late_fees\"\n}", null, "application/json");
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
  "id": "27300f09-6250-4a23-8557-d84c52f99ecf",
  "includes": "late_fees"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
invoices.list

Next  
\
invoices.download
