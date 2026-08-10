---
url: https://developer.focus.teamleader.eu/docs/api/companies-info
title: companies.info | Teamleader Developers
words: 796
---
- [](/)
- API Reference
- CRM
- Companies
- companies.info

companies.info

```
POST https://api.focus.teamleader.eu/companies.info
```

Get details for a single company.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5
  
  includesstring
  
  when used, the response will include relatedcompanies and/or relatedcontacts
  
  Example: relatedcompanies,relatedcontacts

```json

{

  "id": "e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5",

  "includes": "related_companies,related_contacts"

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
  
  Example: e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5
  
  namestring
  
  Example: Pied Piper
  
  statusstring
  
  - Members
    
    - active
    - deactivated
  
  Possible values: \[active, deactivated]
  
  Example: active
  
  business\_type object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: businessType
  
  vat\_numberstring
  
  Example: BE0899623035
  
  national\identification\numberstring
  
  Example: 63326426
  
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
  
  typestringrequired
  
  Possible values: \[phone, fax]
  
  Example: phone
  
  numberstringrequired
  
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
  
  ibanstring
  
  Example: BE12123412341234
  
  bicstring
  
  Example: BICBANK
  
  languagestring
  
  Example: nl
  
  preferred\_currencystringnullable
  
  Example: EUR
  
  payment\_term objectnullable
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  invoicing\_preferences object
  
  electronic\invoicing\addressstringnullable
  
  responsible\_user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  remarksstring
  
  This is the background information in Markdown
  
  Example: First contact at expo
  
  added\_atstring
  
  Example: 2016-02-04T16:44:33+00:00
  
  updated\_atstring
  
  Example: 2016-02-05T16:44:33+00:00
  
  web\_urlstring
  
  Example: https://focus.teamleader.eu/company_detail.php?id=e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5
  
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
  
  related\_companies object\[]
  
  Only included with request parameter includes=related_companies
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  related\_contacts object\[]
  
  Only included with request parameter includes=related_contacts
  
  Array [
  
  typestring
  
  Example: contact
  
  idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  positionstringnullable
  
  Example: Developer
  
  secondary\_positionstringnullable
  
  Example: Technical lead
  
  divisionstringnullable
  
  Example: Engineering
  
  is\decision\makerboolean
  
  Example: false
  
  ]

```json

{

  "data": {

    "id": "e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5",

    "name": "Pied Piper",

    "status": "active",

    "business_type": {

      "type": "businessType",

      "id": "fd48d4a3-b9dc-4eac-8071-5889c9f21e5d"

    },

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

    "iban": "BE12123412341234",

    "bic": "BICBANK",

    "language": "nl",

    "preferred_currency": "EUR",

    "payment_term": {

      "type": "cash"

    },

    "invoicing_preferences": {

      "electronic_invoicing_address": null

    },

    "responsible_user": {

      "type": "user",

      "id": "7ba98a20-5e2b-4b46-81b9-a3364432d4f0"

    },

    "remarks": "First contact at expo",

    "added_at": "2016-02-04T16:44:33+00:00",

    "updated_at": "2016-02-05T16:44:33+00:00",

    "web_url": "https://focus.teamleader.eu/company_detail.php?id=e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5",

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

    "related_companies": [

      {

        "type": "company",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      }

    ],

    "related_contacts": [

      {

        "type": "contact",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456",

        "position": "Developer",

        "secondary_position": "Technical lead",

        "division": "Engineering",

        "is_decision_maker": false

      }

    ]

  }

}
```

```json

{

  "data": {

    "id": "e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5",

    "name": "Pied Piper",

    "status": "active",

    "business_type": {

      "type": "businessType",

      "id": "fd48d4a3-b9dc-4eac-8071-5889c9f21e5d"

    },

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

    "iban": "BE12123412341234",

    "bic": "BICBANK",

    "language": "nl",

    "preferred_currency": "EUR",

    "payment_term": {

      "type": "cash"

    },

    "invoicing_preferences": {

      "electronic_invoicing_address": null

    },

    "responsible_user": {

      "type": "user",

      "id": "7ba98a20-5e2b-4b46-81b9-a3364432d4f0"

    },

    "remarks": "First contact at expo",

    "added_at": "2016-02-04T16:44:33+00:00",

    "updated_at": "2016-02-05T16:44:33+00:00",

    "web_url": "https://focus.teamleader.eu/company_detail.php?id=e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5",

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

    "related_companies": [

      {

        "type": "company",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      }

    ],

    "related_contacts": [

      {

        "type": "contact",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456",

        "position": "Developer",

        "secondary_position": "Technical lead",

        "division": "Engineering",

        "is_decision_maker": false

      }

    ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/companies.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5\",\n  \"includes\": \"related_companies,related_contacts\"\n}", null, "application/json");
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
  "id": "e8d31ae7-8258-4fcd-9b2d-78f41b0aa5d5",
  "includes": "related_companies,related_contacts"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
companies.list

Next  
\
companies.add
