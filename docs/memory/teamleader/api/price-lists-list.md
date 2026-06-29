---
url: https://developer.focus.teamleader.eu/docs/api/price-lists-list
title: priceLists.list | Teamleader Developers
words: 269
---
- [](/)
- API Reference
- Products
- Price Lists
- priceLists.list

priceLists.list

```
POST https://api.focus.teamleader.eu/priceLists.list
```

Get a list of priceLists.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]

```json

{

  "filter": {

    "ids": [

      "5a37d173-78d3-05f3-b018-d51fadc1c5d2",

      "97233974-7c29-05f5-a51d-fbe3238e6157"

    ]

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
  
  Example: price
  
  calculation\_methodstring
  
  Possible values: \[manual, basedonpricelist, basedonpurchaseprice]
  
  Example: manual
  
  ]

```json

{

  "data": [

    {

      "id": "2aa4a6a9-9ce8-4851-a9b3-26aea2ea14c4",

      "name": "price",

      "calculation_method": "manual"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "2aa4a6a9-9ce8-4851-a9b3-26aea2ea14c4",

      "name": "price",

      "calculation_method": "manual"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/priceLists.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"5a37d173-78d3-05f3-b018-d51fadc1c5d2\",\n      \"97233974-7c29-05f5-a51d-fbe3238e6157\"\n    ]\n  }\n}", null, "application/json");
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
    "ids": [
      "5a37d173-78d3-05f3-b018-d51fadc1c5d2",
      "97233974-7c29-05f5-a51d-fbe3238e6157"
    ]
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Price Lists

Next  
\
Legacy Projects
