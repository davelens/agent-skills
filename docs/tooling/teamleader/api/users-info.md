---
url: https://developer.focus.teamleader.eu/docs/api/users-info
title: users.info | Teamleader Developers
words: 439
---
- [](/)
- API Reference
- General
- Users
- users.info

users.info

```
POST https://api.focus.teamleader.eu/users.info
```

Get details for a single user.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5
  
  includesstring
  
  when used, the response will include external_rate
  
  Example: external_rate

```json

{

  "id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

  "includes": "external_rate"

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
  
  Example: cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5
  
  account object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: account
  
  first\_namestring
  
  Example: John
  
  last\_namestring
  
  Example: Smith
  
  emailstring
  
  Example: john@teamleader.eu
  
  telephones object\[]
  
  Array [
  
  typestring
  
  Possible values: \[phone, mobile, fax]
  
  Example: phone
  
  numberstring
  
  Example: 092980615
  
  ]
  
  languageUserLanguage
  
  Possible values: \[nl-BE, da, de, en, es, fi, fr, it, nb, nl, pl, pt, sv, tr]
  
  Example: nl-BE
  
  functionstring
  
  Example: Sales
  
  time\_zonestring
  
  Example: Europe/Brussels
  
  statusstring
  
  Possible values: \[active, deactivated]
  
  Example: active
  
  teams object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: team
  
  ]
  
  external\_rate objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]

```json

{

  "data": {

    "id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

    "account": {

      "type": "account",

      "id": "0fc55513-7f68-4865-aba0-de5da9e4e43d"

    },

    "first_name": "John",

    "last_name": "Smith",

    "email": "john@teamleader.eu",

    "telephones": [

      {

        "type": "phone",

        "number": "092980615"

      }

    ],

    "language": "nl-BE",

    "function": "Sales",

    "time_zone": "Europe/Brussels",

    "status": "active",

    "teams": [

      {

        "type": "team",

        "id": "6dd0069e-45da-0ec4-911a-afb351d968cd"

      }

    ],

    "external_rate": {

      "amount": 123.3,

      "currency": "EUR"

    }

  }

}
```

```json

{

  "data": {

    "id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

    "account": {

      "type": "account",

      "id": "0fc55513-7f68-4865-aba0-de5da9e4e43d"

    },

    "first_name": "John",

    "last_name": "Smith",

    "email": "john@teamleader.eu",

    "telephones": [

      {

        "type": "phone",

        "number": "092980615"

      }

    ],

    "language": "nl-BE",

    "function": "Sales",

    "time_zone": "Europe/Brussels",

    "status": "active",

    "teams": [

      {

        "type": "team",

        "id": "6dd0069e-45da-0ec4-911a-afb351d968cd"

      }

    ],

    "external_rate": {

      "amount": 123.3,

      "currency": "EUR"

    }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/users.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5\",\n  \"includes\": \"external_rate\"\n}", null, "application/json");
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
  "id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",
  "includes": "external_rate"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
users.list

Next  
\
users.listDaysOff
