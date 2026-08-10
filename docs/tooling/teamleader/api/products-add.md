---
url: https://developer.focus.teamleader.eu/docs/api/products-add
title: products.add | Teamleader Developers
words: 590
---
- [](/)
- API Reference
- Products
- Products
- products.add

products.add

```
POST https://api.focus.teamleader.eu/products.add
```

Add a new product.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Bodyrequired

- oneOf
  
  - Add Product by Name
  - Add Product by Code
  
  namestringrequired
  
  Example: cookies
  
  codestring
  
  Example: COOK-DARKCHOC-42
  
  descriptionstring
  
  The description of the product in Markdown
  
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
  
  unit\of\measure\_idstringnullable
  
  Example: f79d3e04-b8dc-0637-8f18-ca7c8fc63b71
  
  price\list\prices object\[]
  
  Array [
  
  price\list\idstringrequired
  
  Example: d905ff57-e866-0f59-9d1e-1fd4538bfae1
  
  price objectrequired
  
  amountnumberrequired
  
  Example: 100
  
  currencystringrequired
  
  Example: EUR
  
  ]
  
  stock object
  
  Only available when stock management feature is enabled
  
  amountnumbernullable
  
  Example: 123
  
  configuration objectnullable
  
  stock\_threshold objectnullable
  
  Only available when stock management feature is enabled
  
  minimumnumberrequired
  
  Cannot be negative
  
  Example: 4
  
  actionstringrequired
  
  Possible values: \[notify]
  
  Example: notify
  
  department\_idstring
  
  Example: af48fe9e-d44c-0eac-8813-8be051b10921
  
  product\category\idstring
  
  Example: 624ca743-8998-4f8c-add1-c427bb022166
  
  tax\rate\idstring
  
  Example: 23097774-e51e-0371-9b42-98ef8ca8bbb6
  
  custom\_fields object\[]
  
  Array [
  
  idstring
  
  Example: bf6765de-56eb-40ec-ad14-9096c5dc5fe1
  
  value object
  
  oneOf
  
  - string
  - number
  - multiple selection
  - boolean
  - object
  
  string
  
  For strings
  
  Example: 092980616
  
  ]

```json

{

  "name": "cookies",

  "code": "COOK-DARKCHOC-42",

  "description": "string",

  "purchase_price": {

    "amount": 123.3,

    "currency": "BAM"

  },

  "selling_price": {

    "amount": 123.3,

    "currency": "BAM"

  },

  "unit_of_measure_id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71",

  "price_list_prices": [

    {

      "price_list_id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",

      "price": {

        "amount": 100,

        "currency": "EUR"

      }

    }

  ],

  "stock": {

    "amount": 123

  },

  "configuration": {

    "stock_threshold": {

      "minimum": 4,

      "action": "notify"

    }

  },

  "department_id": "af48fe9e-d44c-0eac-8813-8be051b10921",

  "product_category_id": "624ca743-8998-4f8c-add1-c427bb022166",

  "tax_rate_id": "23097774-e51e-0371-9b42-98ef8ca8bbb6",

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ]

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

    "type": "product",

    "id": "ee94b4c0-5786-0517-9d26-8dd1e6406f20"

  }

}
```

```json

{

  "data": {

    "type": "product",

    "id": "ee94b4c0-5786-0517-9d26-8dd1e6406f20"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/products.add");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"name\": \"cookies\",\n  \"code\": \"COOK-DARKCHOC-42\",\n  \"description\": \"string\",\n  \"purchase_price\": {\n    \"amount\": 123.3,\n    \"currency\": \"BAM\"\n  },\n  \"selling_price\": {\n    \"amount\": 123.3,\n    \"currency\": \"BAM\"\n  },\n  \"unit_of_measure_id\": \"f79d3e04-b8dc-0637-8f18-ca7c8fc63b71\",\n  \"price_list_prices\": [\n    {\n      \"price_list_id\": \"d905ff57-e866-0f59-9d1e-1fd4538bfae1\",\n      \"price\": {\n        \"amount\": 100,\n        \"currency\": \"EUR\"\n      }\n    }\n  ],\n  \"stock\": {\n    \"amount\": 123\n  },\n  \"configuration\": {\n    \"stock_threshold\": {\n      \"minimum\": 4,\n      \"action\": \"notify\"\n    }\n  },\n  \"department_id\": \"af48fe9e-d44c-0eac-8813-8be051b10921\",\n  \"product_category_id\": \"624ca743-8998-4f8c-add1-c427bb022166\",\n  \"tax_rate_id\": \"23097774-e51e-0371-9b42-98ef8ca8bbb6\",\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ]\n}", null, "application/json");
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

```json
{
  "name": "cookies",
  "code": "COOK-DARKCHOC-42",
  "description": "string",
  "purchase_price": {
    "amount": 123.3,
    "currency": "BAM"
  },
  "selling_price": {
    "amount": 123.3,
    "currency": "BAM"
  },
  "unit_of_measure_id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71",
  "price_list_prices": [
    {
      "price_list_id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",
      "price": {
        "amount": 100,
        "currency": "EUR"
      }
    }
  ],
  "stock": {
    "amount": 123
  },
  "configuration": {
    "stock_threshold": {
      "minimum": 4,
      "action": "notify"
    }
  },
  "department_id": "af48fe9e-d44c-0eac-8813-8be051b10921",
  "product_category_id": "624ca743-8998-4f8c-add1-c427bb022166",
  "tax_rate_id": "23097774-e51e-0371-9b42-98ef8ca8bbb6",
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
products.info

Next  
\
products.update
