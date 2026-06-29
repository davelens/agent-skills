---
url: https://developer.focus.teamleader.eu/docs/api/products-info
title: products.info | Teamleader Developers
words: 711
---
- [](/)
- API Reference
- Products
- Products
- products.info

products.info

```
POST https://api.focus.teamleader.eu/products.info
```

Get details for a single product.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 6fac0bf0-e803-424e-af67-76863a3d7d16
  
  includesstring
  
  Comma-separated list of optional includes
  
  Example: suppliers

```json

{

  "id": "f8ae61ec-62f3-0538-b028-185c4a5f217f",

  "includes": "suppliers"

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
  
  Example: f8ae61ec-62f3-0538-b028-185c4a5f217f
  
  namestringnullable
  
  Example: cookies
  
  descriptionstringnullable
  
  The description of the product in Markdown
  
  Example: dark chocolate
  
  codestringnullable
  
  Example: COOK-DARKCHOC-42
  
  purchase\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  selling\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  unit objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  tax objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  suppliers object\[]
  
  Only included with request parameter includes=suppliers
  
  Array [
  
  supplier object
  
  typestring
  
  Possible values: \[company, contact]
  
  Example: contact
  
  idstring
  
  Example: e2314517-3cab-4aa9-8471-450e73449040
  
  purchase\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  product\_codestring
  
  Example: prod-111
  
  minimum\order\amountnumber
  
  Example: 3
  
  classificationstring
  
  Possible values: \[primary, secondary]
  
  ]
  
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
  
  price\list\pricesarray\[]
  
  product\_category objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  stock object
  
  Only available when stock management feature is enabled
  
  amountnumbernullable
  
  Example: 123
  
  configuration objectnullable
  
  stock\_threshold objectnullable
  
  Only available when stock management feature is enabled
  
  minimumnumber
  
  Example: 4
  
  actionstring
  
  Possible values: \[notify]
  
  Example: notify
  
  added\_atstring
  
  Example: 2016-02-01T11:25:41+00:00
  
  updated\_atstring
  
  Example: 2016-02-01T11:25:41+00:00

```json

{

  "data": {

    "id": "f8ae61ec-62f3-0538-b028-185c4a5f217f",

    "name": "cookies",

    "description": "dark chocolate",

    "code": "COOK-DARKCHOC-42",

    "purchase_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "selling_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "unit": {

      "type": "unitOfMeasure",

      "id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71"

    },

    "tax": {

      "type": "taxRate",

      "id": "df444ced-3129-0916-8f40-07ae5832bf98"

    },

    "suppliers": [

      {

        "supplier": {

          "type": "contact",

          "id": "e2314517-3cab-4aa9-8471-450e73449040"

        },

        "purchase_price": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "product_code": "prod-111",

        "minimum_order_amount": 3,

        "classification": "primary"

      }

    ],

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "price_list_prices": [

      {

        "price_list": {

          "id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",

          "type": "priceList"

        },

        "price": {

          "amount": 100,

          "currency": "EUR"

        }

      }

    ],

    "product_category": {

      "type": "productCategory",

      "id": "e2314517-3cab-4aa9-8471-450e73449041"

    },

    "stock": {

      "amount": 123

    },

    "configuration": {

      "stock_threshold": {

        "minimum": 4,

        "action": "notify"

      }

    },

    "added_at": "2016-02-01T11:25:41+00:00",

    "updated_at": "2016-02-01T11:25:41+00:00"

  }

}
```

```json

{

  "data": {

    "id": "f8ae61ec-62f3-0538-b028-185c4a5f217f",

    "name": "cookies",

    "description": "dark chocolate",

    "code": "COOK-DARKCHOC-42",

    "purchase_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "selling_price": {

      "amount": 123.3,

      "currency": "EUR"

    },

    "unit": {

      "type": "unitOfMeasure",

      "id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71"

    },

    "tax": {

      "type": "taxRate",

      "id": "df444ced-3129-0916-8f40-07ae5832bf98"

    },

    "suppliers": [

      {

        "supplier": {

          "type": "contact",

          "id": "e2314517-3cab-4aa9-8471-450e73449040"

        },

        "purchase_price": {

          "amount": 123.3,

          "currency": "EUR"

        },

        "product_code": "prod-111",

        "minimum_order_amount": 3,

        "classification": "primary"

      }

    ],

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "price_list_prices": [

      {

        "price_list": {

          "id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",

          "type": "priceList"

        },

        "price": {

          "amount": 100,

          "currency": "EUR"

        }

      }

    ],

    "product_category": {

      "type": "productCategory",

      "id": "e2314517-3cab-4aa9-8471-450e73449041"

    },

    "stock": {

      "amount": 123

    },

    "configuration": {

      "stock_threshold": {

        "minimum": 4,

        "action": "notify"

      }

    },

    "added_at": "2016-02-01T11:25:41+00:00",

    "updated_at": "2016-02-01T11:25:41+00:00"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/products.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"f8ae61ec-62f3-0538-b028-185c4a5f217f\",\n  \"includes\": \"suppliers\"\n}", null, "application/json");
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
  "id": "f8ae61ec-62f3-0538-b028-185c4a5f217f",
  "includes": "suppliers"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
products.list

Next  
\
products.add
