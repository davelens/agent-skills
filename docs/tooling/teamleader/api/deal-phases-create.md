---
url: https://developer.focus.teamleader.eu/docs/api/deal-phases-create
title: dealPhases.create | Teamleader Developers
words: 306
---
- [](/)
- API Reference
- Deals
- Deal Phases
- dealPhases.create

dealPhases.create

```
POST https://api.focus.teamleader.eu/dealPhases.create
```

Create a new deal phase.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- namestringrequired
  
  Example: Investigation
  
  deal\pipeline\idstringrequired
  
  Example: f350e48a-fbc3-0a79-e62a-53aa1ae86d44
  
  requires\attention\after objectrequired
  
  Time period after which a deal requires attention
  
  amountnumberrequired
  
  Example: 7
  
  unitstringrequired
  
  Possible values: \[days, weeks]
  
  Example: days
  
  estimated\_probabilitynumber
  
  Example: 0.5
  
  follow\up\actionsFollowUpActions\[]
  
  Possible values: \[createevent, createcall, create_task]

```json

{

  "name": "Investigation",

  "deal_pipeline_id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44",

  "requires_attention_after": {

    "amount": 7,

    "unit": "days"

  },

  "estimated_probability": 0.5,

  "follow_up_actions": [

    "create_event"

  ]

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

    "type": "dealPhase",

    "id": "22364cbf-971e-022c-811b-a76c28000257"

  }

}
```

```json

{

  "data": {

    "type": "dealPhase",

    "id": "22364cbf-971e-022c-811b-a76c28000257"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealPhases.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"name\": \"Investigation\",\n  \"deal_pipeline_id\": \"f350e48a-fbc3-0a79-e62a-53aa1ae86d44\",\n  \"requires_attention_after\": {\n    \"amount\": 7,\n    \"unit\": \"days\"\n  },\n  \"estimated_probability\": 0.5,\n  \"follow_up_actions\": [\n    \"create_event\"\n  ]\n}", null, "application/json");
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
  "name": "Investigation",
  "deal_pipeline_id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44",
  "requires_attention_after": {
    "amount": 7,
    "unit": "days"
  },
  "estimated_probability": 0.5,
  "follow_up_actions": [
    "create_event"
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
dealPhases.list

Next  
\
dealPhases.update
