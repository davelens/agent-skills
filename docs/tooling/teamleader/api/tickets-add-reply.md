---
url: https://developer.focus.teamleader.eu/docs/api/tickets-add-reply
title: tickets.addReply | Teamleader Developers
words: 276
---
- [](/)
- API Reference
- Tickets
- Tickets
- tickets.addReply

tickets.addReply

```
POST https://api.focus.teamleader.eu/tickets.addReply
```

Adds a message to a ticket.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  bodystringrequired
  
  Uses HTML formatting
  
  Example: <p>Hello world</p>
  
  ticket\status\idstring
  
  Example: 46156648-87c6-478d-8aa7-1dc3a00dacab
  
  attachmentsstring\[]
  
  All files must have the ticket as a subject

```json

{

  "id": "f29abf48-337d-44b4-aad4-585f5277a456",

  "body": "<p>Hello world</p>",

  "ticket_status_id": "46156648-87c6-478d-8aa7-1dc3a00dacab",

  "attachments": [

    "4f4288b2-c21b-4dac-87f6-a97511309079"

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

- data object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "ticketMessage",

    "id": "e3de4c0d-787d-4720-b78f-af8df5c8182c"

  }

}
```

```json

{

  "data": {

    "type": "ticketMessage",

    "id": "e3de4c0d-787d-4720-b78f-af8df5c8182c"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/tickets.addReply");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\",\n  \"body\": \"<p>Hello world</p>\",\n  \"ticket_status_id\": \"46156648-87c6-478d-8aa7-1dc3a00dacab\",\n  \"attachments\": [\n    \"4f4288b2-c21b-4dac-87f6-a97511309079\"\n  ]\n}", null, "application/json");
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
  "body": "<p>Hello world</p>",
  "ticket_status_id": "46156648-87c6-478d-8aa7-1dc3a00dacab",
  "attachments": [
    "4f4288b2-c21b-4dac-87f6-a97511309079"
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tickets.importMessage

Next  
\
tickets.addInternalMessage
