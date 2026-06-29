---
url: https://developer.focus.teamleader.eu/docs/api/users-me
title: users.me | Teamleader Developers
words: 350
---
- [](/)
- API Reference
- General
- Users
- users.me

users.me

```
POST https://api.focus.teamleader.eu/users.me
```

Get the current authenticated user.

Request​

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
  
  email\verification\statusstring
  
  Possible values: \[pending, confirmed]
  
  Example: confirmed
  
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
  
  preferences object
  
  invoiceableboolean
  
  Example: true
  
  historic\time\tracking\_limit objectnullable
  
  unitstring
  
  Possible values: \[hour]
  
  Example: hour
  
  valuenumber
  
  Example: 24
  
  whitelabelingboolean
  
  Example: true

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

    "email_verification_status": "confirmed",

    "telephones": [

      {

        "type": "phone",

        "number": "092980615"

      }

    ],

    "language": "nl-BE",

    "function": "Sales",

    "time_zone": "Europe/Brussels",

    "preferences": {

      "invoiceable": true,

      "historic_time_tracking_limit": {

        "unit": "hour",

        "value": 24

      },

      "whitelabeling": true

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

    "email_verification_status": "confirmed",

    "telephones": [

      {

        "type": "phone",

        "number": "092980615"

      }

    ],

    "language": "nl-BE",

    "function": "Sales",

    "time_zone": "Europe/Brussels",

    "preferences": {

      "invoiceable": true,

      "historic_time_tracking_limit": {

        "unit": "hour",

        "value": 24

      },

      "whitelabeling": true

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/users.me");
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

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Users

Next  
\
users.list
