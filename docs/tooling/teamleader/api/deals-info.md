---
url: https://developer.focus.teamleader.eu/docs/api/deals-info
title: deals.info | Teamleader Developers
words: 832
---
- [](/)
- API Reference
- Deals
- Deals
- deals.info

deals.info

```
POST https://api.focus.teamleader.eu/deals.info
```

Get details for a single deal.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: f6871b06-6513-4750-b5e6-ff3503b5a029

```json

{

  "id": "f6871b06-6513-4750-b5e6-ff3503b5a029"

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
  
  Example: f6871b06-6513-4750-b5e6-ff3503b5a029
  
  titlestring
  
  Example: Interesting deal
  
  summarystringnullable
  
  This is the remarks field
  
  Example: Additional information
  
  referencestring
  
  Example: 2017/2
  
  statusstring
  
  Possible values: \[open, won, lost]
  
  Example: won
  
  lead object
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  contact\_person object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  department object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  estimated\_value object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  estimated\closing\datestring
  
  Example: 2017-05-09
  
  estimated\_probabilitynumber
  
  Example: 0.5
  
  weighted\_value object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  purchase\order\numberstringnullable
  
  Example: 000023
  
  current\_phase object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  responsible\_user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  closed\_atstring
  
  Example: 2017-05-09T11:31:30+00:00
  
  source object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  phase\_history object\[]
  
  Array [
  
  phase object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  started\_atstring
  
  Example: 2017-05-01 12:00:00
  
  started\_by object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  quotations object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  lost\_reason objectnullable
  
  reason objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  remarkstringnullable
  
  Example: Too expensive
  
  created\_atstring
  
  Example: 2017-05-09T11:25:11+00:00
  
  updated\_atstring
  
  Example: 2017-05-09T11:30:58+00:00
  
  web\_urlstring
  
  Example: https://focus.teamleader.eu/sale_detail.php?id=f6871b06-6513-4750-b5e6-ff3503b5a029
  
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
  
  currency\exchange\rate object
  
  fromCurrencyCode
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  Example: USD
  
  toCurrencyCode
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  Example: EUR
  
  ratenumber
  
  Example: 1.1234
  
  pipeline object
  
  typestring
  
  Example: dealPipeline
  
  idstring
  
  Example: 4e81f3c4-7dca-44cb-b126-6158bec392a2

```json

{

  "data": {

    "id": "f6871b06-6513-4750-b5e6-ff3503b5a029",

    "title": "Interesting deal",

    "summary": "Additional information",

    "reference": "2017/2",

    "status": "won",

    "lead": {

      "customer": {

        "type": "company",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      },

      "contact_person": {

        "type": "contact",

        "id": "74c6769e-815a-4774-87d7-dfab9b1a0abb"

      }

    },

    "department": {

      "type": "department",

      "id": "92247818-643e-4f5a-bf87-25cd908e8ad9"

    },

    "estimated_value": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "estimated_closing_date": "2017-05-09",

    "estimated_probability": 0.5,

    "weighted_value": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "purchase_order_number": "000023",

    "current_phase": {

      "type": "dealPhase",

      "id": "676a6070-f7d3-43a6-bc08-cda0d32c27ab"

    },

    "responsible_user": {

      "type": "user",

      "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

    },

    "closed_at": "2017-05-09T11:31:30+00:00",

    "source": {

      "type": "dealSource",

      "id": "aba0ad66-bf59-49fa-b546-45dcbc5e7e6e"

    },

    "phase_history": [

      {

        "phase": {

          "type": "dealPhase",

          "id": "d5a629f2-7b58-4748-aaca-acf9b6d62404"

        },

        "started_at": "2017-05-01 12:00:00",

        "started_by": {

          "type": "user",

          "id": "4ec55a8c-2d80-472a-a9c2-5ff5ee7eac6a"

        }

      }

    ],

    "quotations": [

      {

        "id": "e2314517-3cab-4aa9-8471-450e73449041",

        "type": "quotation"

      }

    ],

    "lost_reason": {

      "reason": {

        "type": "lostReason",

        "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

      },

      "remark": "Too expensive"

    },

    "created_at": "2017-05-09T11:25:11+00:00",

    "updated_at": "2017-05-09T11:30:58+00:00",

    "web_url": "https://focus.teamleader.eu/sale_detail.php?id=f6871b06-6513-4750-b5e6-ff3503b5a029",

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "currency_exchange_rate": {

      "from": "USD",

      "to": "EUR",

      "rate": 1.1234

    },

    "pipeline": {

      "type": "dealPipeline",

      "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

    }

  }

}
```

```json

{

  "data": {

    "id": "f6871b06-6513-4750-b5e6-ff3503b5a029",

    "title": "Interesting deal",

    "summary": "Additional information",

    "reference": "2017/2",

    "status": "won",

    "lead": {

      "customer": {

        "type": "company",

        "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

      },

      "contact_person": {

        "type": "contact",

        "id": "74c6769e-815a-4774-87d7-dfab9b1a0abb"

      }

    },

    "department": {

      "type": "department",

      "id": "92247818-643e-4f5a-bf87-25cd908e8ad9"

    },

    "estimated_value": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "estimated_closing_date": "2017-05-09",

    "estimated_probability": 0.5,

    "weighted_value": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "purchase_order_number": "000023",

    "current_phase": {

      "type": "dealPhase",

      "id": "676a6070-f7d3-43a6-bc08-cda0d32c27ab"

    },

    "responsible_user": {

      "type": "user",

      "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

    },

    "closed_at": "2017-05-09T11:31:30+00:00",

    "source": {

      "type": "dealSource",

      "id": "aba0ad66-bf59-49fa-b546-45dcbc5e7e6e"

    },

    "phase_history": [

      {

        "phase": {

          "type": "dealPhase",

          "id": "d5a629f2-7b58-4748-aaca-acf9b6d62404"

        },

        "started_at": "2017-05-01 12:00:00",

        "started_by": {

          "type": "user",

          "id": "4ec55a8c-2d80-472a-a9c2-5ff5ee7eac6a"

        }

      }

    ],

    "quotations": [

      {

        "id": "e2314517-3cab-4aa9-8471-450e73449041",

        "type": "quotation"

      }

    ],

    "lost_reason": {

      "reason": {

        "type": "lostReason",

        "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

      },

      "remark": "Too expensive"

    },

    "created_at": "2017-05-09T11:25:11+00:00",

    "updated_at": "2017-05-09T11:30:58+00:00",

    "web_url": "https://focus.teamleader.eu/sale_detail.php?id=f6871b06-6513-4750-b5e6-ff3503b5a029",

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "currency_exchange_rate": {

      "from": "USD",

      "to": "EUR",

      "rate": 1.1234

    },

    "pipeline": {

      "type": "dealPipeline",

      "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/deals.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"f6871b06-6513-4750-b5e6-ff3503b5a029\"\n}", null, "application/json");
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
  "id": "f6871b06-6513-4750-b5e6-ff3503b5a029"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
deals.list

Next  
\
deals.create
