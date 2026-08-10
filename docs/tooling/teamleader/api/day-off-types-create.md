---
url: https://developer.focus.teamleader.eu/docs/api/day-off-types-create
title: dayOffTypes.create | Teamleader Developers
words: 277
---
- [](/)
- API Reference
- General
- Day Off Types
- dayOffTypes.create

dayOffTypes.create

```
POST https://api.focus.teamleader.eu/dayOffTypes.create
```

Create a new day off type.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- namestringrequired
  
  Example: day off type
  
  colorstringnullable
  
  Example: #00B2B2
  
  date\_validity objectnullable
  
  fromstringrequired
  
  Example: 2024-04-04
  
  untilstring
  
  Example: 2025-05-05

```json

{

  "name": "day off type",

  "color": "#00B2B2",

  "date_validity": {

    "from": "2024-04-04",

    "until": "2025-05-05"

  }

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

    "type": "dayOffType",

    "id": "cf307a90-d778-003c-b820-ab8415d1a524"

  }

}
```

```json

{

  "data": {

    "type": "dayOffType",

    "id": "cf307a90-d778-003c-b820-ab8415d1a524"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dayOffTypes.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"name\": \"day off type\",\n  \"color\": \"#00B2B2\",\n  \"date_validity\": {\n    \"from\": \"2024-04-04\",\n    \"until\": \"2025-05-05\"\n  }\n}", null, "application/json");
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
  "name": "day off type",
  "color": "#00B2B2",
  "date_validity": {
    "from": "2024-04-04",
    "until": "2025-05-05"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
dayOffTypes.list

Next  
\
dayOffTypes.update
