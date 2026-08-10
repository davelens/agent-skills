---
url: https://developer.focus.teamleader.eu/docs/api/custom-field-definitions-list
title: customFieldDefinitions.list | Teamleader Developers
words: 445
---
- [](/)
- API Reference
- General
- Custom Fields
- customFieldDefinitions.list

customFieldDefinitions.list

```
POST https://api.focus.teamleader.eu/customFieldDefinitions.list
```

Get a list of all the definitions of custom fields.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]
  
  contextContext
  
  Filters on context
  
  Possible values: \[contact, company, deal, project, milestone, product, invoice, subscription, ticket]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1
  
  sort object\[]
  
  Array [
  
  fieldstringrequired
  
  Possible values: \[label, context]
  
  orderOrder
  
  Possible values: \[asc, desc]
  
  ]

```json

{

  "filter": {

    "ids": [

      "9c64570b-4ec1-4e03-9662-af904f78f7fa",

      "aa6d2560-63f9-4b2f-bf96-823dc7c34df7"

    ]

  },

  "page": {

    "size": 20,

    "number": 1

  },

  "sort": [

    {

      "field": "label"

    }

  ]

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
  
  Example: 74855f4a-2b61-429c-81d8-c79ad3675a76
  
  contextContext
  
  Possible values: \[contact, company, deal, project, milestone, product, invoice, subscription, ticket]
  
  Example: contact
  
  typeCustomFieldDefinitionType
  
  Possible values: \[singleline, multiline, singleselect, multiselect, date, money, auto_increment, integer, number, boolean, email, telephone, url, company, contact, product, user]
  
  labelstring
  
  groupstring
  
  requiredboolean
  
  Example: false
  
  configuration object
  
  options object\[]
  
  Only returned for singleselect and multiselect types
  
  Array [
  
  idstring
  
  Example: 179e1564-493b-4305-8c54-a34fc80920fc
  
  valuestring
  
  Example: foo
  
  ]
  
  extra\option\allowedboolean
  
  Example: true
  
  ]

```json

{

  "data": [

    {

      "id": "74855f4a-2b61-429c-81d8-c79ad3675a76",

      "context": "contact",

      "type": "single_line",

      "label": "",

      "group": "",

      "required": false,

      "configuration": {

        "options": [

          {

            "id": "179e1564-493b-4305-8c54-a34fc80920fc",

            "value": "foo"

          }

        ],

        "extra_option_allowed": true

      }

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "74855f4a-2b61-429c-81d8-c79ad3675a76",

      "context": "contact",

      "type": "single_line",

      "label": "",

      "group": "",

      "required": false,

      "configuration": {

        "options": [

          {

            "id": "179e1564-493b-4305-8c54-a34fc80920fc",

            "value": "foo"

          }

        ],

        "extra_option_allowed": true

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/customFieldDefinitions.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"9c64570b-4ec1-4e03-9662-af904f78f7fa\",\n      \"aa6d2560-63f9-4b2f-bf96-823dc7c34df7\"\n    ]\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  },\n  \"sort\": [\n    {\n      \"field\": \"label\"\n    }\n  ]\n}", null, "application/json");
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
    "ids": [
      "9c64570b-4ec1-4e03-9662-af904f78f7fa",
      "aa6d2560-63f9-4b2f-bf96-823dc7c34df7"
    ]
  },
  "page": {
    "size": 20,
    "number": 1
  },
  "sort": [
    {
      "field": "label"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
customFieldDefinitions.create

Next  
\
customFieldDefinitions.info
