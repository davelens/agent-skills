---
url: https://developer.focus.teamleader.eu/docs/api/product-categories-list
title: productCategories.list | Teamleader Developers
words: 305
---
- [](/)
- API Reference
- Products
- Product Categories
- productCategories.list

productCategories.list

```
POST https://api.focus.teamleader.eu/productCategories.list
```

Get a list of product categories.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  department\_idstring
  
  The ID of the department you wish to filter on.
  
  Example: 080aac72-ff1a-4627-bfe3-146b6eee979c

```json

{

  "filter": {

    "department_id": "080aac72-ff1a-4627-bfe3-146b6eee979c"

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
  
  Example: 2aa4a6a9-9ce8-4851-a9b3-26aea2ea14c4
  
  namestring
  
  Example: 'Asian Flowers'
  
  ledgers object\[]
  
  Array [
  
  department object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ledger\account\numberstring
  
  Example: 70100
  
  ]
  
  ]

```json

{

  "data": [

    {

      "id": "2aa4a6a9-9ce8-4851-a9b3-26aea2ea14c4",

      "name": "'Asian Flowers'",

      "ledgers": [

        {

          "department": {

            "type": "department",

            "id": "2aa4a6a9-9ce8-4851-a9b3-26aea2ea14c6"

          },

          "ledger_account_number": "70100"

        }

      ]

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "2aa4a6a9-9ce8-4851-a9b3-26aea2ea14c4",

      "name": "'Asian Flowers'",

      "ledgers": [

        {

          "department": {

            "type": "department",

            "id": "2aa4a6a9-9ce8-4851-a9b3-26aea2ea14c6"

          },

          "ledger_account_number": "70100"

        }

      ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/productCategories.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"department_id\": \"080aac72-ff1a-4627-bfe3-146b6eee979c\"\n  }\n}", null, "application/json");
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

- Example (from schema)
- Example

```json
{
  "filter": {
    "department_id": "080aac72-ff1a-4627-bfe3-146b6eee979c"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Product Categories

Next  
\
Products
