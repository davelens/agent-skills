---
url: https://developer.focus.teamleader.eu/docs/api/tickets-list-messages
title: tickets.listMessages | Teamleader Developers
words: 439
---
- [](/)
- API Reference
- Tickets
- Tickets
- tickets.listMessages

tickets.listMessages

```
POST https://api.focus.teamleader.eu/tickets.listMessages
```

Lists messages of a ticket.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  filter object
  
  typestring
  
  Possible values: \[customer, internal, thirdParty]
  
  Example: customer
  
  created\_beforestring
  
  Example: 2024-02-01T18:00:00+00:00
  
  created\_afterstring
  
  Example: 2024-01-01T18:00:00+00:00
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "id": "f29abf48-337d-44b4-aad4-585f5277a456",

  "filter": {

    "type": "customer",

    "created_before": "2024-02-01T18:00:00+00:00",

    "created_after": "2024-01-01T18:00:00+00:00"

  },

  "page": {

    "size": 20,

    "number": 1

  }

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
  
  message\_idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  bodystring
  
  Uses HTML formatting
  
  Example: <p>This is a message</p>
  
  typestring
  
  Possible values: \[customer, internal, thirdParty]
  
  Example: customer
  
  created\_atstring
  
  Example: 2017-05-09T11:25:11+00:00
  
  sent\_by object
  
  typestring
  
  Possible values: \[company, contact, user]
  
  Example: contact
  
  idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  attachments object\[]
  
  Array [
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  ]
  
  ]
  
  meta object
  
  Only included with request parameter includes=pagination
  
  page object
  
  sizenumber
  
  Example: 10
  
  numbernumber
  
  Example: 2
  
  matchesnumber
  
  Example: 12

```json

{

  "data": [

    {

      "message_id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "body": "<p>This is a message</p>",

      "type": "customer",

      "created_at": "2017-05-09T11:25:11+00:00",

      "sent_by": {

        "type": "contact",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      },

      "attachments": [

        {

          "type": "file",

          "id": "0686d0da-1797-475b-ae94-27191b2eca4d"

        }

      ]

    }

  ],

  "meta": {

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

  }

}
```

```json

{

  "data": [

    {

      "message_id": "f29abf48-337d-44b4-aad4-585f5277a456",

      "body": "<p>This is a message</p>",

      "type": "customer",

      "created_at": "2017-05-09T11:25:11+00:00",

      "sent_by": {

        "type": "contact",

        "id": "f29abf48-337d-44b4-aad4-585f5277a456"

      },

      "attachments": [

        {

          "type": "file",

          "id": "0686d0da-1797-475b-ae94-27191b2eca4d"

        }

      ]

    }

  ],

  "meta": {

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tickets.listMessages");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\",\n  \"filter\": {\n    \"type\": \"customer\",\n    \"created_before\": \"2024-02-01T18:00:00+00:00\",\n    \"created_after\": \"2024-01-01T18:00:00+00:00\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
  "id": "f29abf48-337d-44b4-aad4-585f5277a456",
  "filter": {
    "type": "customer",
    "created_before": "2024-02-01T18:00:00+00:00",
    "created_after": "2024-01-01T18:00:00+00:00"
  },
  "page": {
    "size": 20,
    "number": 1
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tickets.update

Next  
\
tickets.getMessage
