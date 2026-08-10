---
url: https://developer.focus.teamleader.eu/docs/api/deal-sources-list
title: dealSources.list | Teamleader Developers
words: 326
---
- [](/)
- API Reference
- Deals
- Deal Sources
- dealSources.list

dealSources.list

```
POST https://api.focus.teamleader.eu/dealSources.list
```

Get a list of all deal sources, sorted alphabetically (on name).

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Body

- filter object
  
  idsstring\[]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Default value: name
  
  orderOrder
  
  Possible values: \[asc]
  
  Default value: asc
  
  ]

```json

{

  "filter": {

    "ids": [

      "string"

    ]

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "name",

      "order": "asc"

    }

  ]

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
  
  Example: 811a5825-96f4-4318-83c3-2840935c6003
  
  namestring
  
  ]

```json

{

  "data": [

    {

      "id": "b18c298b-0e6f-495d-8fcd-31dfecaea741",

      "name": "Referral"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "b18c298b-0e6f-495d-8fcd-31dfecaea741",

      "name": "Referral"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealSources.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"string\"\n    ]\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"name\",\n      \"order\": \"asc\"\n    }\n  ]\n}", null, "application/json");
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
    ]
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "name",
      "order": "asc"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Deal Sources

Next  
\
Quotations
