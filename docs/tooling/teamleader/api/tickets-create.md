---
url: https://developer.focus.teamleader.eu/docs/api/tickets-create
title: tickets.create | Teamleader Developers
words: 510
---
- [](/)
- API Reference
- Tickets
- Tickets
- tickets.create

tickets.create

```
POST https://api.focus.teamleader.eu/tickets.create
```

Create a ticket.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- subjectstringrequired
  
  Example: My ticket subject
  
  customer objectrequired
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  ticket\status\idstringrequired
  
  Example: 46156648-87c6-478d-8aa7-1dc3a00dacab
  
  assignee object
  
  typestringrequired
  
  Possible values: \[user]
  
  Example: user
  
  idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
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
  
  descriptionstring
  
  Uses Markdown formatting
  
  Example: My ticket details
  
  participant object
  
  customer objectrequired
  
  typestringrequired
  
  Possible values: \[company]
  
  Example: company
  
  idstringrequired
  
  Example: 2659dc4d-444b-4ced-b51c-b87591f604d7
  
  initial\_replystring
  
  Create & send an initial autoreply according to configuration (default: automatic).
  
  Possible values: \[automatic, disabled]
  
  milestone\_idstring
  
  Links the ticket to a milestone. Only applicable to accounts using legacy projects. A ticket can be linked to either a milestoneid or a projectid, but not both.
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  project\_idstring
  
  Links the ticket to a project. Only applicable to accounts using the new projects. A ticket can be linked to either a milestoneid or a projectid, but not both.
  
  Example: 49b403be-a32e-0901-9b1c-25214f9027c6

```json

{

  "subject": "My ticket subject",

  "customer": {

    "type": "company",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

  },

  "ticket_status_id": "46156648-87c6-478d-8aa7-1dc3a00dacab",

  "assignee": {

    "type": "user",

    "id": "98b2863e-7b01-4232-82f5-ede1f0b9db22"

  },

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ],

  "description": "My ticket details",

  "participant": {

    "customer": {

      "type": "company",

      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

    }

  },

  "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95"

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

    "type": "ticket",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

  }

}
```

```json

{

  "data": {

    "type": "ticket",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tickets.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"subject\": \"My ticket subject\",\n  \"customer\": {\n    \"type\": \"company\",\n    \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n  },\n  \"ticket_status_id\": \"46156648-87c6-478d-8aa7-1dc3a00dacab\",\n  \"assignee\": {\n    \"type\": \"user\",\n    \"id\": \"98b2863e-7b01-4232-82f5-ede1f0b9db22\"\n  },\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ],\n  \"description\": \"My ticket details\",\n  \"participant\": {\n    \"customer\": {\n      \"type\": \"company\",\n      \"id\": \"2659dc4d-444b-4ced-b51c-b87591f604d7\"\n    }\n  },\n  \"milestone_id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\"\n}", null, "application/json");
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
  "subject": "My ticket subject",
  "customer": {
    "type": "company",
    "id": "f29abf48-337d-44b4-aad4-585f5277a456"
  },
  "ticket_status_id": "46156648-87c6-478d-8aa7-1dc3a00dacab",
  "assignee": {
    "type": "user",
    "id": "98b2863e-7b01-4232-82f5-ede1f0b9db22"
  },
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ],
  "description": "My ticket details",
  "participant": {
    "customer": {
      "type": "company",
      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"
    }
  },
  "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tickets.info

Next  
\
tickets.update
