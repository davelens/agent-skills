---
url: https://developer.focus.teamleader.eu/docs/api/tickets-get-message
title: tickets.getMessage | Teamleader Developers
words: 345
---
- [](/)
- API Reference
- Tickets
- Tickets
- tickets.getMessage

tickets.getMessage

```
POST https://api.focus.teamleader.eu/tickets.getMessage
```

Gets the ticket message.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- message\_idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456

```json

{

  "message_id": "f29abf48-337d-44b4-aad4-585f5277a456"

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

- message\_idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  bodystring
  
  Uses HTML formatting
  
  Example: <p>This is a message</p>
  
  raw\_bodystring
  
  Uses HTML formatting
  
  Example: <p>This is a message</p>
  
  created\_atstring
  
  Example: 2017-05-09T11:25:11+00:00
  
  sent\_by object
  
  typestring
  
  Possible values: \[company, contact, user]
  
  Example: contact
  
  idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  ticket object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  attachments object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  typestring
  
  Possible values: \[customer, internal, thirdParty]
  
  Example: customer

```json

{

  "message_id": "f29abf48-337d-44b4-aad4-585f5277a456",

  "body": "<p>This is a message</p>",

  "raw_body": "<p>This is a message</p>",

  "created_at": "2017-05-09T11:25:11+00:00",

  "sent_by": {

    "type": "contact",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

  },

  "ticket": {

    "type": "ticket",

    "id": "4f5c4ee1-9078-0eda-8817-03e4cba61bab"

  },

  "attachments": [

    {

      "type": "file",

      "id": "0686d0da-1797-475b-ae94-27191b2eca4d"

    }

  ],

  "type": "customer"

}
```

```json

{

  "message_id": "f29abf48-337d-44b4-aad4-585f5277a456",

  "body": "<p>This is a message</p>",

  "raw_body": "<p>This is a message</p>",

  "created_at": "2017-05-09T11:25:11+00:00",

  "sent_by": {

    "type": "contact",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

  },

  "ticket": {

    "type": "ticket",

    "id": "4f5c4ee1-9078-0eda-8817-03e4cba61bab"

  },

  "attachments": [

    {

      "type": "file",

      "id": "0686d0da-1797-475b-ae94-27191b2eca4d"

    }

  ],

  "type": "customer"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tickets.getMessage");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"message_id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n}", null, "application/json");
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
  "message_id": "f29abf48-337d-44b4-aad4-585f5277a456"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tickets.listMessages

Next  
\
tickets.importMessage
