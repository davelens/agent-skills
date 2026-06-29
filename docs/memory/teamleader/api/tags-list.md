---
url: https://developer.focus.teamleader.eu/docs/api/tags-list
title: tags.list | Teamleader Developers
words: 297
---
- [](/)
- API Reference
- CRM
- Tags
- tags.list

tags.list

```
POST https://api.focus.teamleader.eu/tags.list
```

Get a list of tags.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[tag]
  
  Default value: tag
  
  orderOrder
  
  Possible values: \[asc]
  
  Default value: asc
  
  ]

```json

{

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "tag",

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
  
  tagstring
  
  Example: campaign
  
  ]

```json

{

  "data": [

    {

      "tag": "campaign"

    }

  ]

}
```

```json

{

  "data": [

    {

      "tag": "campaign"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tags.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"tag\",\n      \"order\": \"asc\"\n    }\n  ]\n}", null, "application/json");
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
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "tag",
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
Tags

Next  
\
Addresses
