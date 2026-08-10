---
url: https://developer.focus.teamleader.eu/docs/api/companies-update
title: companies.update | Teamleader Developers
words: 608
---
- [](/)
- API Reference
- CRM
- Companies
- companies.update

companies.update

```
POST https://api.focus.teamleader.eu/companies.update
```

Update a company.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 4784189d-610b-4488-b3a5-5f324f752417
  
  namestring
  
  Example: Pied Piper
  
  business\type\idstringnullable
  
  Example: fd48d4a3-b9dc-4eac-8071-5889c9f21e5d
  
  vat\_numberstringnullable
  
  Example: BE0899623035
  
  national\identification\numberstringnullable
  
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
  
  ibanstringnullable
  
  Example: BE12123412341234
  
  bicstringnullable
  
  Example: BICBANK
  
  languagestringnullable
  
  Example: en
  
  responsible\user\idstringnullable
  
  Example: 0ea94804-401d-4dbd-a577-c2d60998f798
  
  remarksstringnullable
  
  This is the background information in Markdown
  
  Example: Met at expo
  
  tagsstring\[]
  
  This will overwrite existing tags
  
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
  
  preferred\_currencyCurrencyCodenullable
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  Example: EUR

```json

{

  "id": "4784189d-610b-4488-b3a5-5f324f752417",

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

  "responsible_user_id": "0ea94804-401d-4dbd-a577-c2d60998f798",

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

- 204

Response Headers

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/companies.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"4784189d-610b-4488-b3a5-5f324f752417\",\n  \"name\": \"Pied Piper\",\n  \"business_type_id\": \"fd48d4a3-b9dc-4eac-8071-5889c9f21e5d\",\n  \"vat_number\": \"BE0899623035\",\n  \"national_identification_number\": \"63326426\",\n  \"emails\": [\n    {\n      \"type\": \"primary\",\n      \"email\": \"info@piedpiper.eu\"\n    }\n  ],\n  \"telephones\": [\n    {\n      \"type\": \"phone\",\n      \"number\": \"092980615\"\n    }\n  ],\n  \"website\": \"http://example.com\",\n  \"addresses\": [\n    {\n      \"type\": \"invoicing\",\n      \"address\": {\n        \"addressee\": \"Teamleader HQ\",\n        \"line_1\": \"Dok Noord 3A 101\",\n        \"postal_code\": \"9000\",\n        \"city\": \"Ghent\",\n        \"country\": \"BE\",\n        \"area_level_two_id\": \"db232cf8-ad4a-024b-941f-15a7a74f0fd2\"\n      }\n    }\n  ],\n  \"iban\": \"BE12123412341234\",\n  \"bic\": \"BICBANK\",\n  \"language\": \"en\",\n  \"responsible_user_id\": \"0ea94804-401d-4dbd-a577-c2d60998f798\",\n  \"remarks\": \"Met at expo\",\n  \"tags\": [\n    \"prospect\",\n    \"expo\"\n  ],\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ],\n  \"marketing_mails_consent\": false,\n  \"preferred_currency\": \"EUR\"\n}", null, "application/json");
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
  "id": "4784189d-610b-4488-b3a5-5f324f752417",
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
  "responsible_user_id": "0ea94804-401d-4dbd-a577-c2d60998f798",
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
companies.add

Next  
\
companies.uploadLogo
