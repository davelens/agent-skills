---
url: https://developer.focus.teamleader.eu/docs/api/companies-add
title: companies.add | Teamleader Developers
words: 640
---
- [](/)
- API Reference
- CRM
- Companies
- companies.add

companies.add

```
POST https://api.focus.teamleader.eu/companies.add
```

Add a new company.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- namestringrequired
  
  Example: Pied Piper
  
  business\type\idstring
  
  Example: fd48d4a3-b9dc-4eac-8071-5889c9f21e5d
  
  vat\_numberstring
  
  Example: BE0899623035
  
  national\identification\numberstring
  
  Example: 63326426
  
  emails object\[]
  
  Array [
  
  typestringrequired
  
  Possible values: \[primary, invoicing]
  
  Example: primary
  
  emailstringrequired
  
  Example: info@piedpiper.eu
  
  ]
  
  telephones object\[]
  
  Array [
  
  typestringrequired
  
  Possible values: \[phone, fax]
  
  Example: phone
  
  numberstringrequired
  
  Example: 092980615
  
  ]
  
  websitestring
  
  Example: http://example.com
  
  addresses object\[]
  
  Array [
  
  typestringrequired
  
  Possible values: \[primary, invoicing, delivery, visiting]
  
  Example: invoicing
  
  address objectrequired
  
  line\_1stringnullablerequired
  
  Example: Dok Noord 3A 101
  
  postal\_codestringnullablerequired
  
  Example: 9000
  
  citystringnullablerequired
  
  Example: Ghent
  
  countrystringrequired
  
  Example: BE
  
  area\level\two\_idstring
  
  Example: db232cf8-ad4a-024b-941f-15a7a74f0fd2
  
  addresseestring
  
  Example: Teamleader HQ
  
  ]
  
  ibanstring
  
  Example: BE12123412341234
  
  bicstring
  
  Example: BICBANK
  
  languagestring
  
  Example: en
  
  responsible\user\idstring
  
  Example: 2b12bd5d-d2d9-43ac-8755-36a1e00bd67f
  
  remarksstring
  
  This is the background information in Markdown
  
  Example: Met at expo
  
  tagsstring\[]
  
  custom\_fields object\[]
  
  Array [
  
  idstring
  
  Example: bf6765de-56eb-40ec-ad14-9096c5dc5fe1
  
  value object
  
  oneOf
  
  - string
  - number
  - multiple selection
  - boolean
  - object
  
  string
  
  For strings
  
  Example: 092980616
  
  ]
  
  marketing\mails\consentboolean
  
  Example: false
  
  preferred\_currencyCurrencyCode
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  Example: EUR

```json

{

  "name": "Pied Piper",

  "business_type_id": "fd48d4a3-b9dc-4eac-8071-5889c9f21e5d",

  "vat_number": "BE0899623035",

  "national_identification_number": "63326426",

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

  "website": "http://example.com",

  "addresses": [

    {

      "type": "invoicing",

      "address": {

        "addressee": "Teamleader HQ",

        "line_1": "Dok Noord 3A 101",

        "postal_code": "9000",

        "city": "Ghent",

        "country": "BE",

        "area_level_two_id": "db232cf8-ad4a-024b-941f-15a7a74f0fd2"

      }

    }

  ],

  "iban": "BE12123412341234",

  "bic": "BICBANK",

  "language": "en",

  "responsible_user_id": "2b12bd5d-d2d9-43ac-8755-36a1e00bd67f",

  "remarks": "Met at expo",

  "tags": [

    "prospect",

    "expo"

  ],

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ],

  "marketing_mails_consent": false,

  "preferred_currency": "EUR"

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

    "type": "company",

    "id": "4784189d-610b-4488-b3a5-5f324f752417"

  }

}
```

```json

{

  "data": {

    "type": "company",

    "id": "4784189d-610b-4488-b3a5-5f324f752417"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/companies.add");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"name\": \"Pied Piper\",\n  \"business_type_id\": \"fd48d4a3-b9dc-4eac-8071-5889c9f21e5d\",\n  \"vat_number\": \"BE0899623035\",\n  \"national_identification_number\": \"63326426\",\n  \"emails\": [\n    {\n      \"type\": \"primary\",\n      \"email\": \"info@piedpiper.eu\"\n    }\n  ],\n  \"telephones\": [\n    {\n      \"type\": \"phone\",\n      \"number\": \"092980615\"\n    }\n  ],\n  \"website\": \"http://example.com\",\n  \"addresses\": [\n    {\n      \"type\": \"invoicing\",\n      \"address\": {\n        \"addressee\": \"Teamleader HQ\",\n        \"line_1\": \"Dok Noord 3A 101\",\n        \"postal_code\": \"9000\",\n        \"city\": \"Ghent\",\n        \"country\": \"BE\",\n        \"area_level_two_id\": \"db232cf8-ad4a-024b-941f-15a7a74f0fd2\"\n      }\n    }\n  ],\n  \"iban\": \"BE12123412341234\",\n  \"bic\": \"BICBANK\",\n  \"language\": \"en\",\n  \"responsible_user_id\": \"2b12bd5d-d2d9-43ac-8755-36a1e00bd67f\",\n  \"remarks\": \"Met at expo\",\n  \"tags\": [\n    \"prospect\",\n    \"expo\"\n  ],\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ],\n  \"marketing_mails_consent\": false,\n  \"preferred_currency\": \"EUR\"\n}", null, "application/json");
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
  "name": "Pied Piper",
  "business_type_id": "fd48d4a3-b9dc-4eac-8071-5889c9f21e5d",
  "vat_number": "BE0899623035",
  "national_identification_number": "63326426",
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
  "website": "http://example.com",
  "addresses": [
    {
      "type": "invoicing",
      "address": {
        "addressee": "Teamleader HQ",
        "line_1": "Dok Noord 3A 101",
        "postal_code": "9000",
        "city": "Ghent",
        "country": "BE",
        "area_level_two_id": "db232cf8-ad4a-024b-941f-15a7a74f0fd2"
      }
    }
  ],
  "iban": "BE12123412341234",
  "bic": "BICBANK",
  "language": "en",
  "responsible_user_id": "2b12bd5d-d2d9-43ac-8755-36a1e00bd67f",
  "remarks": "Met at expo",
  "tags": [
    "prospect",
    "expo"
  ],
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ],
  "marketing_mails_consent": false,
  "preferred_currency": "EUR"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
companies.info

Next  
\
companies.update
