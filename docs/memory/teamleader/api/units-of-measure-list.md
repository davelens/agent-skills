---
url: https://developer.focus.teamleader.eu/docs/api/units-of-measure-list
title: unitsOfMeasure.list | Teamleader Developers
words: 211
---
- [](/)
- API Reference
- Products
- Units of Measure
- unitsOfMeasure.list

unitsOfMeasure.list

```
POST https://api.focus.teamleader.eu/unitsOfMeasure.list
```

Get a list of units of measure.

Request​

Header Parameters

- Content-Type stringrequired
  
  Possible values: \[application/json]
  
  Example: application/json

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

      "id": "70af3fdd-b037-0936-ad1a-6d784dd44cf4",

      "name": "kg"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "70af3fdd-b037-0936-ad1a-6d784dd44cf4",

      "name": "kg"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/unitsOfMeasure.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
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

Parameters

Content-Type — headerrequired---application/json

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Units of Measure

Next  
\
Price Lists
