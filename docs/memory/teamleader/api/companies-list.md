---
url: https://developer.focus.teamleader.eu/docs/api/companies-list
title: companies.list | Teamleader Developers
words: 869
---
- [](/)
- API Reference
- CRM
- Companies
- companies.list

companies.list

```
POST https://api.focus.teamleader.eu/companies.list
```

Get a list of companies.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  email object
  
  typestringrequired
  
  Possible values: \[primary]
  
  Example: user
  
  emailstringrequired
  
  Example: info@piedpiper.eu
  
  idsstring\[]
  
  termstring
  
  Filters on name, vat number, emails and telephones
  
  Example: Acme
  
  updated\_sincestring
  
  Example: 2016-02-04T16:44:33+00:00
  
  tagsstring\[]
  
  Filters on tag names
  
  vat\_numberstring
  
  Example: BE 0899.623.035
  
  national\identification\numberstring
  
  Example: 63326426
  
  statusstring
  
  Possible values: \[active, deactivated]
  
  Example: active
  
  marketing\mails\consentboolean
  
  Example: false
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[name, addedat, updatedat]
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  ]
  
  includesstring
  
  Comma-separated list of optional includes
  
  Example: customfields,pricelist

```json

{

  "filter": {

    "email": {

      "type": "primary",

      "email": "info@piedpiper.eu"

    },

    "ids": [

      "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

      "f8a57a6f-dd1e-41a3-b8d3-428663f1d09e"

    ],

    "term": "Acme",

    "updated_since": "2016-02-04T16:44:33+00:00",

    "tags": [

      "expo",

      "lead"

    ],

    "vat_number": "BE 0899.623.035",

    "national_identification_number": "63326426",

    "status": "active",

    "marketing_mails_consent": true

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "name"

    }

  ],

  "includes": "custom_fields,price_list"

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
  
  idstring
  
  Example: 96a38bbf-24ed-4083-8a5c-20db92aa471e
  
  namestring
  
  Example: Pied Piper
  
  statusstring
  
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
  
  primary\_address object
  
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
  
  added\_atstring
  
  Example: 2016-02-04T16:44:33+00:00
  
  updated\_atstring
  
  Example: 2016-02-05T16:44:33+00:00
  
  web\_urlstring
  
  Example: https://focus.teamleader.eu/company_detail.php?id=96a38bbf-24ed-4083-8a5c-20db92aa471e
  
  tagsstring\[]
  
  marketing\mails\consentboolean
  
  Example: false
  
  custom\_fields object\[]
  
  Only included with request parameter includes=custom_fields
  
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
  
  price\_list object
  
  Only included with request parameter includes=price_list
  
  typestring
  
  Example: priceList
  
  idstring
  
  Example: 27261187-19c9-081f-b833-021fa5873129
  
  ]

```json

{

  "data": [

    {

      "id": "96a38bbf-24ed-4083-8a5c-20db92aa471e",

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

      "primary_address": {

        "line_1": "Dok Noord 3A 101",

        "postal_code": "9000",

        "city": "Ghent",

        "country": "BE",

        "area_level_two": {

          "type": "area_level_two",

          "id": "db232cf8-ad4a-024b-941f-15a7a74f0fd2"

        }

      },

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

        "id": "9b99d8f8-183b-4c7b-8354-9b98b47a192e"

      },

      "marketing_mails_consent": false,

      "added_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00",

      "web_url": "https://focus.teamleader.eu/company_detail.php?id=96a38bbf-24ed-4083-8a5c-20db92aa471e",

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

      "price_list": {

        "type": "priceList",

        "id": "5a37d173-78d3-05f3-b018-d51fadc1c5d2"

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "96a38bbf-24ed-4083-8a5c-20db92aa471e",

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

      "primary_address": {

        "line_1": "Dok Noord 3A 101",

        "postal_code": "9000",

        "city": "Ghent",

        "country": "BE",

        "area_level_two": {

          "type": "area_level_two",

          "id": "db232cf8-ad4a-024b-941f-15a7a74f0fd2"

        }

      },

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

        "id": "9b99d8f8-183b-4c7b-8354-9b98b47a192e"

      },

      "marketing_mails_consent": false,

      "added_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00",

      "web_url": "https://focus.teamleader.eu/company_detail.php?id=96a38bbf-24ed-4083-8a5c-20db92aa471e",

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

      "price_list": {

        "type": "priceList",

        "id": "5a37d173-78d3-05f3-b018-d51fadc1c5d2"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/companies.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"email\": {\n      \"type\": \"primary\",\n      \"email\": \"info@piedpiper.eu\"\n    },\n    \"ids\": [\n      \"cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5\",\n      \"f8a57a6f-dd1e-41a3-b8d3-428663f1d09e\"\n    ],\n    \"term\": \"Acme\",\n    \"updated_since\": \"2016-02-04T16:44:33+00:00\",\n    \"tags\": [\n      \"expo\",\n      \"lead\"\n    ],\n    \"vat_number\": \"BE 0899.623.035\",\n    \"national_identification_number\": \"63326426\",\n    \"status\": \"active\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"name\"\n    }\n  ],\n  \"includes\": \"custom_fields,price_list\"\n}", null, "application/json");
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
    "email": {
      "type": "primary",
      "email": "info@piedpiper.eu"
    },
    "ids": [
      "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",
      "f8a57a6f-dd1e-41a3-b8d3-428663f1d09e"
    ],
    "term": "Acme",
    "updated_since": "2016-02-04T16:44:33+00:00",
    "tags": [
      "expo",
      "lead"
    ],
    "vat_number": "BE 0899.623.035",
    "national_identification_number": "63326426",
    "status": "active"
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "name"
    }
  ],
  "includes": "custom_fields,price_list"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Companies

Next  
\
companies.info
