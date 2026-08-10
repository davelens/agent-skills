---
url: https://developer.focus.teamleader.eu/docs/api/lost-reasons-list
title: lostReasons.list | Teamleader Developers
words: 327
---
- [](/)
- API Reference
- Deals
- Deals
- lostReasons.list

lostReasons.list

```
POST https://api.focus.teamleader.eu/lostReasons.list
```

Get a list of lost reasons for deals.

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
  
  Possible values: \[name]
  
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

      "id": "6e7fe84d-d4b3-4723-abae-9bc082d8f65a",

      "name": "Deal declined"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "6e7fe84d-d4b3-4723-abae-9bc082d8f65a",

      "name": "Deal declined"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/lostReasons.list");
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
deals.delete

Next  
\
Deal Pipelines
