---
url: https://developer.focus.teamleader.eu/docs/api/legacy-projects-create
title: projects.create | Teamleader Developers
words: 480
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Projects
- projects.create

projects.create

```
POST https://api.focus.teamleader.eu/projects.create
```

Create a new project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- titlestringrequired
  
  Example: New company website
  
  descriptionstring
  
  starts\_onstringrequired
  
  Example: 2016-02-04
  
  milestones object\[]required
  
  At least one milestone is required
  
  Array [
  
  starts\_onstringnullable
  
  Example: 2017-01-01
  
  due\_onstringrequired
  
  Example: 2018-01-01
  
  namestringrequired
  
  Example: Initial setup
  
  responsible\user\idstringrequired
  
  Example: e1240972-6cfc-4549-b49c-edda7568cc48
  
  ]
  
  participants object\[]required
  
  At least one decision making participant is required
  
  Array [
  
  participant objectrequired
  
  idstringrequired
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[user]
  
  Example: user
  
  roleRole
  
  Possible values: \[decision_maker, member]
  
  ]
  
  purchase\order\numberstring
  
  Example: 000023
  
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
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456

```json

{

  "title": "New company website",

  "starts_on": "2016-02-04",

  "milestones": [

    {

      "starts_on": "2017-01-01",

      "due_on": "2018-01-01",

      "name": "Initial setup",

      "responsible_user_id": "e1240972-6cfc-4549-b49c-edda7568cc48"

    }

  ],

  "participants": [

    {

      "participant": {

        "type": "user",

        "id": "e1240972-6cfc-4549-b49c-edda7568cc48"

      },

      "role": "member"

    }

  ],

  "purchase_order_number": "000023",

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ],

  "customer": {

    "type": "contact",

    "id": "ebafa4c5-fa8a-4409-92e5-1b192243372f"

  }

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

    "type": "project",

    "id": "c47e8e40-9a16-468f-9b29-38aea8ae4210"

  }

}
```

```json

{

  "data": {

    "type": "project",

    "id": "c47e8e40-9a16-468f-9b29-38aea8ae4210"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"title\": \"New company website\",\n  \"starts_on\": \"2016-02-04\",\n  \"milestones\": [\n    {\n      \"starts_on\": \"2017-01-01\",\n      \"due_on\": \"2018-01-01\",\n      \"name\": \"Initial setup\",\n      \"responsible_user_id\": \"e1240972-6cfc-4549-b49c-edda7568cc48\"\n    }\n  ],\n  \"participants\": [\n    {\n      \"participant\": {\n        \"type\": \"user\",\n        \"id\": \"e1240972-6cfc-4549-b49c-edda7568cc48\"\n      },\n      \"role\": \"member\"\n    }\n  ],\n  \"purchase_order_number\": \"000023\",\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ],\n  \"customer\": {\n    \"type\": \"contact\",\n    \"id\": \"ebafa4c5-fa8a-4409-92e5-1b192243372f\"\n  }\n}", null, "application/json");
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
  "title": "New company website",
  "starts_on": "2016-02-04",
  "milestones": [
    {
      "starts_on": "2017-01-01",
      "due_on": "2018-01-01",
      "name": "Initial setup",
      "responsible_user_id": "e1240972-6cfc-4549-b49c-edda7568cc48"
    }
  ],
  "participants": [
    {
      "participant": {
        "type": "user",
        "id": "e1240972-6cfc-4549-b49c-edda7568cc48"
      },
      "role": "member"
    }
  ],
  "purchase_order_number": "000023",
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ],
  "customer": {
    "type": "contact",
    "id": "ebafa4c5-fa8a-4409-92e5-1b192243372f"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.info

Next  
\
projects.update
