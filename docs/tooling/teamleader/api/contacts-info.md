---
url: https://developer.focus.teamleader.eu/docs/api/contacts-info
title: contacts.info | Teamleader Developers
words: 727
---
- [](/)
- API Reference
- CRM
- Contacts
- contacts.info

contacts.info

```
POST https://api.focus.teamleader.eu/contacts.info
```

Get details for a single contact.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: cde0bc5f-8602-4e12-b5d3-f03436b54c0d

```json

{

  "id": "cde0bc5f-8602-4e12-b5d3-f03436b54c0d"

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
  
  Example: cde0bc5f-8602-4e12-b5d3-f03436b54c0d
  
  first\_namestring
  
  Example: Erlich
  
  last\_namestring
  
  Example: Bachman
  
  statusstring
  
  - Members
    
    - active
    - deactivated
  
  Possible values: \[active]
  
  Example: active
  
  salutationstring
  
  Example: Mr
  
  vat\_numberstringnullable
  
  Example: BE0899623034
  
  emails object\[]
  
  Array [
  
  typestring
  
  Possible values: \[primary]
  
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
  
  addresses object\[]
  
  Array [
  
  typestring
  
  Possible values: \[primary, invoicing, delivery, visiting]
  
  Example: invoicing
  
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
  
  addresseestring
  
  Example: Teamleader HQ
  
  ]
  
  genderGendernullable
  
  Possible values: \[female, male, nonbinary, prefersnottosay, unknown]
  
  Example: unknown
  
  birthdatestring
  
  Example: 1987-04-25
  
  ibanstring
  
  Example: BE12123412341234
  
  bicstring
  
  Example: BICBANK
  
  national\identification\numberstring
  
  Example: 00051730-A
  
  companies object\[]
  
  Array [
  
  positionstring
  
  Example: Developer
  
  secondary\_positionstring
  
  Example: Technical lead
  
  divisionstring
  
  Example: 'Engineering'
  
  decision\_makerboolean
  
  Example: true
  
  company object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  languagestring
  
  Example: en
  
  payment\_term objectnullable
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  invoicing\_preferences object
  
  electronic\invoicing\addressstringnullable
  
  remarksstring
  
  This is the background information in Markdown
  
  Example: First contact at expo
  
  tagsstring\[]
  
  custom\_fields object\[]
  
  Array [
  
  definition object
  
  typestring
  
  Example: customFieldDefinition
  
  idstring
  
  Example: bf6765de-56eb-40ec-ad14-9096c5dc5fe1
  
  value object
  
  oneOf
  
  - string
  - numbers
  - multiple selection
  - boolean
  - object
  
  string
  
  For strings
  
  Example: 092980616
  
  ]
  
  marketing\mails\consentboolean
  
  Example: false
  
  added\_atstring
  
  Example: 2016-02-04T16:44:33+00:00
  
  updated\_atstring
  
  Example: 2016-02-05T16:44:33+00:00
  
  web\_urlstring
  
  Example: https://focus.teamleader.eu/contact_detail.php?id=cde0bc5f-8602-4e12-b5d3-f03436b54c0d

```json

{

  "data": {

    "id": "cde0bc5f-8602-4e12-b5d3-f03436b54c0d",

    "first_name": "Erlich",

    "last_name": "Bachman",

    "status": "active",

    "salutation": "Mr",

    "vat_number": "BE0899623034",

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

    "addresses": [

      {

        "type": "invoicing",

        "address": {

          "addressee": "Teamleader HQ",

          "line_1": "Dok Noord 3A 101",

          "postal_code": "9000",

          "city": "Ghent",

          "country": "BE",

          "area_level_two": {

            "type": "area_level_two",

            "id": "db232cf8-ad4a-024b-941f-15a7a74f0fd2"

          }

        }

      }

    ],

    "gender": "unknown",

    "birthdate": "1987-04-25",

    "iban": "BE12123412341234",

    "bic": "BICBANK",

    "national_identification_number": "00051730-A",

    "companies": [

      {

        "position": "Developer",

        "secondary_position": "Technical lead",

        "division": "'Engineering'",

        "decision_maker": true,

        "company": {

          "type": "company",

          "id": "40157f9d-1322-4f2e-b245-188efdc52cc2"

        }

      }

    ],

    "language": "en",

    "payment_term": {

      "type": "cash"

    },

    "invoicing_preferences": {

      "electronic_invoicing_address": null

    },

    "remarks": "First contact at expo",

    "tags": [

      "prospect",

      "expo"

    ],

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "marketing_mails_consent": false,

    "added_at": "2016-02-04T16:44:33+00:00",

    "updated_at": "2016-02-05T16:44:33+00:00",

    "web_url": "https://focus.teamleader.eu/contact_detail.php?id=cde0bc5f-8602-4e12-b5d3-f03436b54c0d"

  }

}
```

```json

{

  "data": {

    "id": "cde0bc5f-8602-4e12-b5d3-f03436b54c0d",

    "first_name": "Erlich",

    "last_name": "Bachman",

    "status": "active",

    "salutation": "Mr",

    "vat_number": "BE0899623034",

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

    "addresses": [

      {

        "type": "invoicing",

        "address": {

          "addressee": "Teamleader HQ",

          "line_1": "Dok Noord 3A 101",

          "postal_code": "9000",

          "city": "Ghent",

          "country": "BE",

          "area_level_two": {

            "type": "area_level_two",

            "id": "db232cf8-ad4a-024b-941f-15a7a74f0fd2"

          }

        }

      }

    ],

    "gender": "unknown",

    "birthdate": "1987-04-25",

    "iban": "BE12123412341234",

    "bic": "BICBANK",

    "national_identification_number": "00051730-A",

    "companies": [

      {

        "position": "Developer",

        "secondary_position": "Technical lead",

        "division": "'Engineering'",

        "decision_maker": true,

        "company": {

          "type": "company",

          "id": "40157f9d-1322-4f2e-b245-188efdc52cc2"

        }

      }

    ],

    "language": "en",

    "payment_term": {

      "type": "cash"

    },

    "invoicing_preferences": {

      "electronic_invoicing_address": null

    },

    "remarks": "First contact at expo",

    "tags": [

      "prospect",

      "expo"

    ],

    "custom_fields": [

      {

        "definition": {

          "type": "customFieldDefinition",

          "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1"

        },

        "value": "092980616"

      }

    ],

    "marketing_mails_consent": false,

    "added_at": "2016-02-04T16:44:33+00:00",

    "updated_at": "2016-02-05T16:44:33+00:00",

    "web_url": "https://focus.teamleader.eu/contact_detail.php?id=cde0bc5f-8602-4e12-b5d3-f03436b54c0d"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/contacts.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"cde0bc5f-8602-4e12-b5d3-f03436b54c0d\"\n}", null, "application/json");
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
  "id": "cde0bc5f-8602-4e12-b5d3-f03436b54c0d"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
contacts.list

Next  
\
contacts.add
