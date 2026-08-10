---
url: https://developer.focus.teamleader.eu/docs/api/deals-list
title: deals.list | Teamleader Developers
words: 1047
---
- [](/)
- API Reference
- Deals
- Deals
- deals.list

deals.list

```
POST https://api.focus.teamleader.eu/deals.list
```

Get a list of deals.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  termstring
  
  Filters on the title, reference and customer's name
  
  Example: Interesting deal
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  phase\_idstring
  
  Example: 1758e847-cc1f-04ce-bd17-5a852e8c01b4
  
  estimated\closing\datestringnullable
  
  Example: 2018-02-11
  
  estimated\closing\date\_fromstring
  
  This date is inclusive
  
  Example: 2020-01-01
  
  estimated\closing\date\_untilstring
  
  This date is inclusive
  
  Example: 2020-01-31
  
  responsible\user\id object
  
  oneOf
  
  - String format
  - Array of strings format
  
  String format
  
  Example: 98b2863e-7b01-4232-82f5-ede1f0b9db22
  
  updated\_sincestring
  
  This is the last activity of the deal - this date is inclusive
  
  Example: 2018-02-11T16:45:30+00:00
  
  created\_beforestring
  
  This date is inclusive
  
  Example: 2018-02-11T16:45:30+00:00
  
  statusstring\[]
  
  Possible values: \[open, won, lost]
  
  Example: ["won"]
  
  pipeline\_idsstring\[]
  
  an array of pipeline ids
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[createdat, weightedvalue]
  
  Default value: created_at
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  Default value: desc
  
  ]
  
  includesstring
  
  Comma-separated list of optional includes
  
  Example: custom_fields

```json

{

  "filter": {

    "ids": [

      "string"

    ],

    "term": "Interesting deal",

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "phase_id": "1758e847-cc1f-04ce-bd17-5a852e8c01b4",

    "estimated_closing_date": "2018-02-11",

    "estimated_closing_date_from": "2020-01-01",

    "estimated_closing_date_until": "2020-01-31",

    "responsible_user_id": "98b2863e-7b01-4232-82f5-ede1f0b9db22",

    "updated_since": "2018-02-11T16:45:30+00:00",

    "created_before": "2018-02-11T16:45:30+00:00",

    "status": [

      "won"

    ],

    "pipeline_ids": [

      "string"

    ]

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "created_at",

      "order": "desc"

    }

  ],

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
  
  Example: 6e7fe84d-d4b3-4723-abae-9bc082d8f65a
  
  titlestring
  
  Example: Interesting deal
  
  summarystringnullable
  
  This is the remarks field
  
  Example: Additional information
  
  referencestring
  
  Example: 2017/2
  
  statusstring
  
  Possible values: \[new, open, won, lost]
  
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
  
  Example: https://focus.teamleader.eu/sale_detail.php?id=6e7fe84d-d4b3-4723-abae-9bc082d8f65a
  
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
  
  ]

```json

{

  "data": [

    {

      "id": "6e7fe84d-d4b3-4723-abae-9bc082d8f65a",

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

        "id": "33121d39-44e2-426a-92ef-62178edeec8a"

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

        "id": "521a331d-60d1-4920-bde3-ccd01d09f9f1"

      },

      "responsible_user": {

        "type": "user",

        "id": "bac1c91b-bc86-489b-8590-9be9478f62bb"

      },

      "closed_at": "2017-05-09T11:31:30+00:00",

      "source": {

        "type": "dealSource",

        "id": "52a4bbb2-d196-48d7-8e43-9ec2f44d06f9"

      },

      "lost_reason": {

        "reason": {

          "type": "lostReason",

          "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

        },

        "remark": "Too expensive"

      },

      "created_at": "2017-05-09T11:25:11+00:00",

      "updated_at": "2017-05-09T11:30:58+00:00",

      "web_url": "https://focus.teamleader.eu/sale_detail.php?id=6e7fe84d-d4b3-4723-abae-9bc082d8f65a",

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

  ]

}
```

```json

{

  "data": [

    {

      "id": "6e7fe84d-d4b3-4723-abae-9bc082d8f65a",

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

        "id": "33121d39-44e2-426a-92ef-62178edeec8a"

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

        "id": "521a331d-60d1-4920-bde3-ccd01d09f9f1"

      },

      "responsible_user": {

        "type": "user",

        "id": "bac1c91b-bc86-489b-8590-9be9478f62bb"

      },

      "closed_at": "2017-05-09T11:31:30+00:00",

      "source": {

        "type": "dealSource",

        "id": "52a4bbb2-d196-48d7-8e43-9ec2f44d06f9"

      },

      "lost_reason": {

        "reason": {

          "type": "lostReason",

          "id": "4e81f3c4-7dca-44cb-b126-6158bec392a2"

        },

        "remark": "Too expensive"

      },

      "created_at": "2017-05-09T11:25:11+00:00",

      "updated_at": "2017-05-09T11:30:58+00:00",

      "web_url": "https://focus.teamleader.eu/sale_detail.php?id=6e7fe84d-d4b3-4723-abae-9bc082d8f65a",

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/deals.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ],\n    \"term\": \"Interesting deal\",\n    \"customer\": {\n      \"type\": \"contact\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    },\n    \"phase_id\": \"1758e847-cc1f-04ce-bd17-5a852e8c01b4\",\n    \"estimated_closing_date\": \"2018-02-11\",\n    \"estimated_closing_date_from\": \"2020-01-01\",\n    \"estimated_closing_date_until\": \"2020-01-31\",\n    \"responsible_user_id\": \"98b2863e-7b01-4232-82f5-ede1f0b9db22\",\n    \"updated_since\": \"2018-02-11T16:45:30+00:00\",\n    \"created_before\": \"2018-02-11T16:45:30+00:00\",\n    \"status\": [\n      \"won\"\n    ],\n    \"pipeline_ids\": [\n      \"string\"\n    ]\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"created_at\",\n      \"order\": \"desc\"\n    }\n  ],\n  \"includes\": \"custom_fields\"\n}", null, "application/json");
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
    "term": "Interesting deal",
    "customer": {
      "type": "contact",
      "id": "f29abf48-337d-44b4-aad4-585f5277a456"
    },
    "phase_id": "1758e847-cc1f-04ce-bd17-5a852e8c01b4",
    "estimated_closing_date": "2018-02-11",
    "estimated_closing_date_from": "2020-01-01",
    "estimated_closing_date_until": "2020-01-31",
    "responsible_user_id": "98b2863e-7b01-4232-82f5-ede1f0b9db22",
    "updated_since": "2018-02-11T16:45:30+00:00",
    "created_before": "2018-02-11T16:45:30+00:00",
    "status": [
      "won"
    ],
    "pipeline_ids": [
      "string"
    ]
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "created_at",
      "order": "desc"
    }
  ],
  "includes": "custom_fields"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Deals

Next  
\
deals.info
