---
url: https://developer.focus.teamleader.eu/docs/api/closing-days-list
title: closingDays.list | Teamleader Developers
words: 373
---
- [](/)
- API Reference
- General
- Closing Days
- closingDays.list

closingDays.list

```
POST https://api.focus.teamleader.eu/closingDays.list
```

Returns information about closing days of the account

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  date\_beforestring
  
  Start of the period for which to return closing days. This includes closing days starting on the date provided.
  
  Example: 2023-12-31
  
  date\_afterstring
  
  End of the period for which to return closing days. This includes closing days ending on the date provided.
  
  Example: 2023-12-01
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "filter": {

    "date_before": "2023-12-31",

    "date_after": "2023-12-01"

  },

  "page": {

    "size": 20,

    "number": 1

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
  
  Example: 05676ac4-c61d-42bf-a3ea-a420fc1ec017
  
  datestring
  
  Example: 2023-12-21
  
  ]
  
  meta object
  
  Only included with request parameter includes=pagination
  
  page object
  
  sizenumber
  
  Example: 10
  
  numbernumber
  
  Example: 2
  
  matchesnumber
  
  Example: 12

```json

{

  "data": [

    {

      "id": "05676ac4-c61d-42bf-a3ea-a420fc1ec017",

      "date": "2023-12-21"

    }

  ],

  "meta": {

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

  }

}
```

```json

{

  "data": [

    {

      "id": "05676ac4-c61d-42bf-a3ea-a420fc1ec017",

      "date": "2023-12-21"

    }

  ],

  "meta": {

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/closingDays.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"date_before\": \"2023-12-31\",\n    \"date_after\": \"2023-12-01\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
    "date_before": "2023-12-31",
    "date_after": "2023-12-01"
  },
  "page": {
    "size": 20,
    "number": 1
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Closing Days

Next  
\
closingDays.add
