---
url: https://developer.focus.teamleader.eu/docs/api/contacts-list
title: contacts.list | Teamleader Developers
words: 835
---
- [](/)
- API Reference
- CRM
- Contacts
- contacts.list

contacts.list

```
POST https://api.focus.teamleader.eu/contacts.list
```

Get a list of contacts.

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
  
  Example: primary
  
  emailstringrequired
  
  Example: info@piedpiper.eu
  
  idsstring\[]
  
  company\_idstring
  
  Example: cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5
  
  termstring
  
  Filters on first\name, last\name, email and telephone
  
  Example: James
  
  updated\_sincestring
  
  Example: 2016-02-04T16:44:33+00:00
  
  tagsstring\[]
  
  Filters on contacts coupled to all given tags
  
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
  
  Possible values: \[addedat, name, updatedat]
  
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

    "company_id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",

    "term": "James",

    "updated_since": "2016-02-04T16:44:33+00:00",

    "tags": [

      "expo",

      "prospect"

    ],

    "status": "active",

    "marketing_mails_consent": true

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "added_at"

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
  
  Example: 2a39e420-3ba3-4384-8024-fa702ef99c9f
  
  first\_namestring
  
  Example: Erlich
  
  last\_namestring
  
  Example: Bachman
  
  statusstring
  
  Possible values: \[active, deactivated]
  
  Example: active
  
  salutationstring
  
  Example: Mr
  
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
  
  Example: 86792345-L
  
  languagestring
  
  Example: en
  
  payment\_term objectnullable
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  invoicing\_preferences object
  
  electronic\invoicing\addressstringnullable
  
  tagsstring\[]
  
  added\_atstring
  
  Example: 2016-02-04T16:44:33+00:00
  
  updated\_atstring
  
  Example: 2016-02-05T16:44:33+00:00
  
  web\_urlstring
  
  Example: https://focus.teamleader.eu/contact_detail.php?id=2a39e420-3ba3-4384-8024-fa702ef99c9f
  
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

      "id": "2a39e420-3ba3-4384-8024-fa702ef99c9f",

      "first_name": "Erlich",

      "last_name": "Bachman",

      "status": "active",

      "salutation": "Mr",

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

      "gender": "unknown",

      "birthdate": "1987-04-25",

      "iban": "BE12123412341234",

      "bic": "BICBANK",

      "national_identification_number": "86792345-L",

      "language": "en",

      "payment_term": {

        "type": "cash"

      },

      "invoicing_preferences": {

        "electronic_invoicing_address": null

      },

      "tags": [

        "prospect",

        "expo"

      ],

      "marketing_mails_consent": false,

      "added_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00",

      "web_url": "https://focus.teamleader.eu/contact_detail.php?id=2a39e420-3ba3-4384-8024-fa702ef99c9f",

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

      "id": "2a39e420-3ba3-4384-8024-fa702ef99c9f",

      "first_name": "Erlich",

      "last_name": "Bachman",

      "status": "active",

      "salutation": "Mr",

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

      "gender": "unknown",

      "birthdate": "1987-04-25",

      "iban": "BE12123412341234",

      "bic": "BICBANK",

      "national_identification_number": "86792345-L",

      "language": "en",

      "payment_term": {

        "type": "cash"

      },

      "invoicing_preferences": {

        "electronic_invoicing_address": null

      },

      "tags": [

        "prospect",

        "expo"

      ],

      "marketing_mails_consent": false,

      "added_at": "2016-02-04T16:44:33+00:00",

      "updated_at": "2016-02-05T16:44:33+00:00",

      "web_url": "https://focus.teamleader.eu/contact_detail.php?id=2a39e420-3ba3-4384-8024-fa702ef99c9f",

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/contacts.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"email\": {\n      \"type\": \"primary\",\n      \"email\": \"info@piedpiper.eu\"\n    },\n    \"ids\": [\n      \"cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5\",\n      \"f8a57a6f-dd1e-41a3-b8d3-428663f1d09e\"\n    ],\n    \"company_id\": \"cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5\",\n    \"term\": \"James\",\n    \"updated_since\": \"2016-02-04T16:44:33+00:00\",\n    \"tags\": [\n      \"expo\",\n      \"prospect\"\n    ],\n    \"status\": \"active\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"added_at\"\n    }\n  ],\n  \"includes\": \"custom_fields,price_list\"\n}", null, "application/json");
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
    "company_id": "cb8da52a-ce89-4bf6-8f7e-8ee6cb85e3b5",
    "term": "James",
    "updated_since": "2016-02-04T16:44:33+00:00",
    "tags": [
      "expo",
      "prospect"
    ],
    "status": "active"
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "added_at"
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
Contacts

Next  
\
contacts.info
