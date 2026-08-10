---
url: https://developer.focus.teamleader.eu/docs/api/subscriptions-info
title: subscriptions.info | Teamleader Developers
words: 1062
---
- [](/)
- API Reference
- Invoicing
- Subscriptions
- subscriptions.info

subscriptions.info

```
POST https://api.focus.teamleader.eu/subscriptions.info
```

Get details for a single subscription.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: e2314517-3cab-4aa9-8471-450e73449041

```json

{

  "id": "e2314517-3cab-4aa9-8471-450e73449041"

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
  
  next\renewal\datestringnullable
  
  Example: 2022-06-21
  
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
  
  starts\_onstring
  
  Example: 2022-05-21
  
  ends\_onstringnullable
  
  Example: 2023-07-21
  
  billing\_cycle object
  
  Only available for api-version 9999-99-99
  
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
  
  payment\_term object
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  grouped\_lines object\[]
  
  Array [
  
  section object
  
  titlestringnullable
  
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
  
  invoice\_generation object
  
  actionstring
  
  Possible values: \[draft, book, bookandsend]
  
  Example: book
  
  sending\_methods object\[]
  
  Only provided when action is "book and send".
  
  Array [
  
  methodstring
  
  Possible values: \[email, peppol, postal_service]
  
  Example: email
  
  ]
  
  payment\_methodstring
  
  Possible values: \[direct_debit]
  
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
  
  document\_template object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  currencystring
  
  Example: USD
  
  purchase\order\numberstringnullable
  
  Example: 000023
  
  delivery\_information objectnullable
  
  typestring
  
  Possible values: \[setdaysafterinvoicedate]
  
  number\of\days\after\invoice\_dateinteger
  
  Example: 5
  
  created\_atstringnullable
  
  Example: 2022-04-18T16:44:33+00:00

```json

{

  "data": {

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

    "next_renewal_date": "2022-06-21",

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

    "starts_on": "2022-05-21",

    "ends_on": "2023-07-21",

    "billing_cycle": {

      "periodicity": {

        "unit": "week",

        "period": 2

      },

      "days_in_advance": 7

    },

    "payment_term": {

      "type": "cash",

      "days": 0

    },

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

    "invoice_generation": {

      "action": "book",

      "sending_methods": [

        {

          "method": "email"

        }

      ],

      "payment_method": "direct_debit"

    },

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "document_template": {

      "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

      "type": "string"

    },

    "currency": "USD",

    "purchase_order_number": "000023",

    "delivery_information": {

      "type": "set_days_after_invoice_date",

      "number_of_days_after_invoice_date": 5

    },

    "created_at": "2022-04-18T16:44:33+00:00"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/subscriptions.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"e2314517-3cab-4aa9-8471-450e73449041\"\n}", null, "application/json");
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
  "id": "e2314517-3cab-4aa9-8471-450e73449041"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
subscriptions.list

Next  
\
subscriptions.create
