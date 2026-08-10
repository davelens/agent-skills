---
url: https://developer.focus.teamleader.eu/docs/api/deal-phases-update
title: dealPhases.update | Teamleader Developers
words: 260
---
- [](/)
- API Reference
- Deals
- Deal Phases
- dealPhases.update

dealPhases.update

```
POST https://api.focus.teamleader.eu/dealPhases.update
```

Update a deal phase.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 22364cbf-971e-022c-811b-a76c28000257
  
  namestring
  
  Example: Preparation
  
  requires\attention\after objectrequired
  
  Time period after which a deal requires attention
  
  amountnumberrequired
  
  Example: 7
  
  unitstringrequired
  
  Possible values: \[days, weeks]
  
  Example: days
  
  estimated\_probabilitynumber
  
  Example: 0.8
  
  follow\up\actionsFollowUpActions\[]
  
  Possible values: \[createevent, createcall, create_task]

```json

{

  "id": "22364cbf-971e-022c-811b-a76c28000257",

  "name": "Preparation",

  "requires_attention_after": {

    "amount": 7,

    "unit": "days"

  },

  "estimated_probability": 0.8,

  "follow_up_actions": [

    "create_event"

  ]

}
```

Responses​

- 204

Response Headers

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealPhases.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"22364cbf-971e-022c-811b-a76c28000257\",\n  \"name\": \"Preparation\",\n  \"requires_attention_after\": {\n    \"amount\": 7,\n    \"unit\": \"days\"\n  },\n  \"estimated_probability\": 0.8,\n  \"follow_up_actions\": [\n    \"create_event\"\n  ]\n}", null, "application/json");
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
  "id": "22364cbf-971e-022c-811b-a76c28000257",
  "name": "Preparation",
  "requires_attention_after": {
    "amount": 7,
    "unit": "days"
  },
  "estimated_probability": 0.8,
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
dealPhases.create

Next  
\
dealPhases.duplicate
