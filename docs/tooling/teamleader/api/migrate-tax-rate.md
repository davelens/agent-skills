---
url: https://developer.focus.teamleader.eu/docs/api/migrate-tax-rate
title: migrate.taxRate | Teamleader Developers
words: 245
---
- [](/)
- API Reference
- Other
- Migrating
- migrate.taxRate

migrate.taxRate

```
POST https://api.focus.teamleader.eu/migrate.taxRate
```

Translates tax rates from the deprecated API into a new UUID tax rate.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- department\_idstring
  
  Example: 6ad54ec6-ee2d-4500-afe6-0917c1aa7a38
  
  tax\_ratestring
  
  Example: 21

```json

{

  "department_id": "6ad54ec6-ee2d-4500-afe6-0917c1aa7a38",

  "tax_rate": "21"

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

- data object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "taxRate",

    "id": "6ad54ec6-ee2d-4500-afe6-0917c1aa7a38"

  }

}
```

```json

{

  "data": {

    "type": "taxRate",

    "id": "6ad54ec6-ee2d-4500-afe6-0917c1aa7a38"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/migrate.taxRate");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"department_id\": \"6ad54ec6-ee2d-4500-afe6-0917c1aa7a38\",\n  \"tax_rate\": \"21\"\n}", null, "application/json");
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
  "department_id": "6ad54ec6-ee2d-4500-afe6-0917c1aa7a38",
  "tax_rate": "21"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
migrate.id

Next  
\
migrate.activityType
