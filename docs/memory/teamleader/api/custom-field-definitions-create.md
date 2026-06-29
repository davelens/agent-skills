---
url: https://developer.focus.teamleader.eu/docs/api/custom-field-definitions-create
title: customFieldDefinitions.create | Teamleader Developers
words: 323
---
- [](/)
- API Reference
- General
- Custom Fields
- customFieldDefinitions.create

customFieldDefinitions.create

```
POST https://api.focus.teamleader.eu/customFieldDefinitions.create
```

Create a custom field definition.

Required scopes: settings

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- labelstringrequired
  
  typeCustomFieldDefinitionTyperequired
  
  Possible values: \[singleline, multiline, singleselect, multiselect, date, money, auto_increment, integer, number, boolean, email, telephone, url, company, contact, product, user]
  
  Example: single_line
  
  contextContextrequired
  
  Possible values: \[contact, company, deal, project, milestone, product, invoice, subscription, ticket]
  
  Example: contact
  
  configuration object
  
  - Use options when type is one of \[singleselect, multiselect]
  - Use defaultvalue when type is autoincrement
  - Use searchable when type is one of \[singleline, company, integer, number, autoincrement, email, telephone]
  
  oneOf
  
  - options
  - default\_value
  - searchable
  
  optionsstring\[]

```json

{

  "label": "",

  "type": "single_line",

  "context": "contact"

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
  
  Example: customFieldDefinition

```json

{

  "data": {

    "type": "customFieldDefinition",

    "id": "526960d3-8d49-4a71-9f62-7b8b74aef058"

  }

}
```

```json

{

  "data": {

    "type": "customFieldDefinition",

    "id": "526960d3-8d49-4a71-9f62-7b8b74aef058"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/customFieldDefinitions.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"label\": \"\",\n  \"type\": \"single_line\",\n  \"context\": \"contact\"\n}", null, "application/json");
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
  "label": "",
  "type": "single_line",
  "context": "contact"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Custom Fields

Next  
\
customFieldDefinitions.list
