---
url: https://developer.focus.teamleader.eu/docs/api/departments-info
title: departments.info | Teamleader Developers
words: 354
---
- [](/)
- API Reference
- General
- Departments
- departments.info

departments.info

```
POST https://api.focus.teamleader.eu/departments.info
```

Get details for a single department.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 92296ad0-2d61-4179-b174-9f354ca2157f

```json

{

  "id": "92296ad0-2d61-4179-b174-9f354ca2157f"

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

Schema

- data object
  
  idstring
  
  Example: 67c576e7-7e6f-465d-b6ab-a864f6e5e95b
  
  namestring
  
  Example: Human Resources
  
  vat\_numberstring
  
  Example: BE0899623035
  
  address object
  
  line\_1stringnullable
  
  Example: Dok Noord 3A 101
  
  postal\_codestringnullable
  
  Example: 9000
  
  citystringnullable
  
  Example: Ghent
  
  countrystring
  
  Example: BE
  
  area\level\two objectnullable
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: arealeveltwo
  
  emails object\[]
  
  Array [
  
  typestring
  
  Possible values: \[primary, invoicing]
  
  Example: primary
  
  emailstring
  
  Example: info@piedpiper.eu
  
  ]
  
  telephones object\[]
  
  Array [
  
  typestring
  
  Possible values: \[phone, mobile, fax]
  
  Example: phone
  
  numberstring
  
  Example: 092980615
  
  ]
  
  websitestring
  
  Example: https://piedpiper.com
  
  currencystring
  
  Example: EUR
  
  ibanstring
  
  Example: BE12123412341234
  
  bicstring
  
  Example: BICBANK
  
  fiscal\_regimestringnullable
  
  Example: RF01
  
  statusstring
  
  Possible values: \[active, archived]
  
  Example: active

```json

{

  "data": {

    "id": "67c576e7-7e6f-465d-b6ab-a864f6e5e95b",

    "name": "Human Resources",

    "vat_number": "BE0899623035",

    "address": {

      "line_1": "Dok Noord 3A 101",

      "postal_code": "9000",

      "city": "Ghent",

      "country": "BE",

      "area_level_two": {

        "id": "eab232c6-49b2-4b7e-a977-5e1148dad471",

        "type": "area_level_two"

      }

    },

    "emails": [

      {

        "type": "primary",

        "email": "info@piedpiper.eu"

      }

    ],

    "telephones": [

      {

        "type": "phone",

        "number": "092980615"

      }

    ],

    "website": "https://piedpiper.com",

    "currency": "EUR",

    "iban": "BE12123412341234",

    "bic": "BICBANK",

    "fiscal_regime": "RF01",

    "status": "active"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/departments.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"92296ad0-2d61-4179-b174-9f354ca2157f\"\n}", null, "application/json");
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
  "id": "92296ad0-2d61-4179-b174-9f354ca2157f"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
departments.list

Next  
\
Users
