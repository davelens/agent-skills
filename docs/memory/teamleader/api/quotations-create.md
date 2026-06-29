---
url: https://developer.focus.teamleader.eu/docs/api/quotations-create
title: quotations.create | Teamleader Developers
words: 751
---
- [](/)
- API Reference
- Deals
- Quotations
- quotations.create

quotations.create

```
POST https://api.focus.teamleader.eu/quotations.create
```

Create a quotation.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- deal\_idstringrequired
  
  Example: cef01135-7e51-4f6f-a6eb-6e5e5a885ac8
  
  currency object
  
  codeCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  exchange\_ratenumber
  
  Example: 1.1238
  
  grouped\_lines object\[]
  
  A quotation needs grouped_lines and/or text to be valid
  
  Array [
  
  section object
  
  titlestringrequired
  
  line\_items object\[]required
  
  Array [
  
  quantitynumberrequired
  
  Example: 3
  
  descriptionstringrequired
  
  Example: An awesome product
  
  extended\_descriptionstring
  
  Uses Markdown formatting
  
  Example: Some more information about this awesome product
  
  unit\of\measure\_idstringnullable
  
  Example: f79d3e04-b8dc-0637-8f18-ca7c8fc63b71
  
  unit\_price objectrequired
  
  amountnumberrequired
  
  Example: 123.3
  
  taxstringrequired
  
  Possible values: \[excluding]
  
  Example: excluding
  
  tax\rate\idstringrequired
  
  Example: c0c03f1e-77e3-402c-a713-30ea1c585823
  
  discount object
  
  valuenumberrequired
  
  Example: 10
  
  typestringrequired
  
  Values between 0 and 100
  
  Possible values: \[percentage]
  
  Example: percentage
  
  product\_idstring
  
  This is purely informational and does not affect the quotation besides adding a reference to the product
  
  Example: e2314517-3cab-4aa9-8471-450e73449041
  
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
  
  textstring
  
  Uses Markdown formatting. A quotation needs grouped_lines and/or text to be valid
  
  Example: Quotation text
  
  document\template\idstring
  
  Example: 179e1564-493b-4305-8c54-a34fc80920fc
  
  expiry object
  
  Only available if user has access to quotation expiry.
  
  expires\_afterstringnullable
  
  Example: 2023-04-05
  
  action\after\expirystringrequired
  
  Possible values: \[lock, none]

```json

{

  "deal_id": "cef01135-7e51-4f6f-a6eb-6e5e5a885ac8",

  "currency": {

    "code": "EUR",

    "exchange_rate": 1.1238

  },

  "grouped_lines": [

    {

      "section": {

        "title": ""

      },

      "line_items": [

        {

          "quantity": 3,

          "description": "An awesome product",

          "extended_description": "Some more information about this awesome product",

          "unit_of_measure_id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71",

          "unit_price": {

            "amount": 123.3,

            "tax": "excluding"

          },

          "tax_rate_id": "c0c03f1e-77e3-402c-a713-30ea1c585823",

          "discount": {

            "value": 10,

            "type": "percentage"

          },

          "product_id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",

          "purchase_price": {

            "amount": 123.3,

            "currency": "EUR"

          },

          "periodicity": {

            "unit": "week",

            "period": 2

          }

        }

      ]

    }

  ],

  "discounts": [

    {

      "type": "percentage",

      "value": 15.5,

      "description": "winter promotion"

    }

  ],

  "text": "Quotation text",

  "document_template_id": "179e1564-493b-4305-8c54-a34fc80920fc",

  "expiry": {

    "expires_after": "2023-04-05",

    "action_after_expiry": "lock"

  }

}
```

Responses​

- 201

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
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "quotation",

    "id": "e4bf74ca-e900-471f-84b1-276e5d3afae4"

  }

}
```

```json

{

  "data": {

    "type": "quotation",

    "id": "e4bf74ca-e900-471f-84b1-276e5d3afae4"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/quotations.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"deal_id\": \"cef01135-7e51-4f6f-a6eb-6e5e5a885ac8\",\n  \"currency\": {\n    \"code\": \"EUR\",\n    \"exchange_rate\": 1.1238\n  },\n  \"grouped_lines\": [\n    {\n      \"section\": {\n        \"title\": \"\"\n      },\n      \"line_items\": [\n        {\n          \"quantity\": 3,\n          \"description\": \"An awesome product\",\n          \"extended_description\": \"Some more information about this awesome product\",\n          \"unit_of_measure_id\": \"f79d3e04-b8dc-0637-8f18-ca7c8fc63b71\",\n          \"unit_price\": {\n            \"amount\": 123.3,\n            \"tax\": \"excluding\"\n          },\n          \"tax_rate_id\": \"c0c03f1e-77e3-402c-a713-30ea1c585823\",\n          \"discount\": {\n            \"value\": 10,\n            \"type\": \"percentage\"\n          },\n          \"product_id\": \"d905ff57-e866-0f59-9d1e-1fd4538bfae1\",\n          \"purchase_price\": {\n            \"amount\": 123.3,\n            \"currency\": \"EUR\"\n          },\n          \"periodicity\": {\n            \"unit\": \"week\",\n            \"period\": 2\n          }\n        }\n      ]\n    }\n  ],\n  \"discounts\": [\n    {\n      \"type\": \"percentage\",\n      \"value\": 15.5,\n      \"description\": \"winter promotion\"\n    }\n  ],\n  \"text\": \"Quotation text\",\n  \"document_template_id\": \"179e1564-493b-4305-8c54-a34fc80920fc\",\n  \"expiry\": {\n    \"expires_after\": \"2023-04-05\",\n    \"action_after_expiry\": \"lock\"\n  }\n}", null, "application/json");
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
  "deal_id": "cef01135-7e51-4f6f-a6eb-6e5e5a885ac8",
  "currency": {
    "code": "EUR",
    "exchange_rate": 1.1238
  },
  "grouped_lines": [
    {
      "section": {
        "title": ""
      },
      "line_items": [
        {
          "quantity": 3,
          "description": "An awesome product",
          "extended_description": "Some more information about this awesome product",
          "unit_of_measure_id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71",
          "unit_price": {
            "amount": 123.3,
            "tax": "excluding"
          },
          "tax_rate_id": "c0c03f1e-77e3-402c-a713-30ea1c585823",
          "discount": {
            "value": 10,
            "type": "percentage"
          },
          "product_id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",
          "purchase_price": {
            "amount": 123.3,
            "currency": "EUR"
          },
          "periodicity": {
            "unit": "week",
            "period": 2
          }
        }
      ]
    }
  ],
  "discounts": [
    {
      "type": "percentage",
      "value": 15.5,
      "description": "winter promotion"
    }
  ],
  "text": "Quotation text",
  "document_template_id": "179e1564-493b-4305-8c54-a34fc80920fc",
  "expiry": {
    "expires_after": "2023-04-05",
    "action_after_expiry": "lock"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
quotations.download

Next  
\
quotations.send
