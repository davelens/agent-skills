---
url: https://developer.focus.teamleader.eu/docs/api/ticket-status-list
title: ticketStatus.list | Teamleader Developers
words: 282
---
- [](/)
- API Reference
- Tickets
- Ticket Status
- ticketStatus.list

ticketStatus.list

```
POST https://api.focus.teamleader.eu/ticketStatus.list
```

Get a list of ticket statuses.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  idsstring\[]

```json

{

  "filter": {

    "ids": [

      "46156648-87c6-478d-8aa7-1dc3a00dacab",

      "46156648-87c6-478d-8aa7-1dc3a00daca4"

    ]

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
  
  idstring
  
  Example: 46156648-87c6-478d-8aa7-1dc3a00dacab
  
  statusstring
  
  Possible values: \[new, open, waitingforclient, escalated_thirdparty, closed, custom]
  
  Example: new
  
  labelstring
  
  Only available for custom type of status.
  
  Example: Custom Label
  
  ]

```json

{

  "data": [

    {

      "id": "46156648-87c6-478d-8aa7-1dc3a00dacab",

      "status": "new",

      "label": "Custom Label"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "46156648-87c6-478d-8aa7-1dc3a00dacab",

      "status": "new",

      "label": "Custom Label"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/ticketStatus.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"ids\": [\n      \"46156648-87c6-478d-8aa7-1dc3a00dacab\",\n      \"46156648-87c6-478d-8aa7-1dc3a00daca4\"\n    ]\n  }\n}", null, "application/json");
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
      "46156648-87c6-478d-8aa7-1dc3a00dacab",
      "46156648-87c6-478d-8aa7-1dc3a00daca4"
    ]
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Ticket Status

Next  
\
Files
