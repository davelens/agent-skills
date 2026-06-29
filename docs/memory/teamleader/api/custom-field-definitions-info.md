---
url: https://developer.focus.teamleader.eu/docs/api/custom-field-definitions-info
title: customFieldDefinitions.info | Teamleader Developers
words: 338
---
- [](/)
- API Reference
- General
- Custom Fields
- customFieldDefinitions.info

customFieldDefinitions.info

```
POST https://api.focus.teamleader.eu/customFieldDefinitions.info
```

Get info about a specific custom field definition.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 9c64570b-4ec1-4e03-9662-af904f78f7fa

```json

{

  "id": "9c64570b-4ec1-4e03-9662-af904f78f7fa"

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

```json

{

  "data": {

    "id": "57e851e2-3d3b-4523-82f8-fe77df5a5d6c",

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

}
```

```json

{

  "data": {

    "id": "57e851e2-3d3b-4523-82f8-fe77df5a5d6c",

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/customFieldDefinitions.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"9c64570b-4ec1-4e03-9662-af904f78f7fa\"\n}", null, "application/json");
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
  "id": "9c64570b-4ec1-4e03-9662-af904f78f7fa"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
customFieldDefinitions.list

Next  
\
Work Types
