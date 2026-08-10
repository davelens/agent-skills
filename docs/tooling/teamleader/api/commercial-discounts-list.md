---
url: https://developer.focus.teamleader.eu/docs/api/commercial-discounts-list
title: commercialDiscounts.list | Teamleader Developers
words: 270
---
- [](/)
- API Reference
- Invoicing
- Commercial Discounts
- commercialDiscounts.list

commercialDiscounts.list

```
POST https://api.focus.teamleader.eu/commercialDiscounts.list
```

Get a list of commercial discounts.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  department\_idstring
  
  Example: 6a6343fc-fdd8-4bc0-aa69-3a004c710e87

```json

{

  "filter": {

    "department_id": "6a6343fc-fdd8-4bc0-aa69-3a004c710e87"

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
  
  namestring
  
  Example: My holiday discount
  
  department object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]

```json

{

  "data": [

    {

      "name": "My holiday discount",

      "department": {

        "type": "department",

        "id": "6a6343fc-fdd8-4bc0-aa69-3a004c710e87"

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "name": "My holiday discount",

      "department": {

        "type": "department",

        "id": "6a6343fc-fdd8-4bc0-aa69-3a004c710e87"

      }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/commercialDiscounts.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"department_id\": \"6a6343fc-fdd8-4bc0-aa69-3a004c710e87\"\n  }\n}", null, "application/json");
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
    "department_id": "6a6343fc-fdd8-4bc0-aa69-3a004c710e87"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Commercial Discounts

Next  
\
Payment Methods
