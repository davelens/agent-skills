---
url: https://developer.focus.teamleader.eu/docs/api/meetings-create-report
title: meetings.createReport | Teamleader Developers
words: 337
---
- [](/)
- API Reference
- Calendar
- Meetings
- meetings.createReport

meetings.createReport

```
POST https://api.focus.teamleader.eu/meetings.createReport
```

Creates a report for a meeting.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 46156648-87c6-478d-8aa7-1dc3a00dacab
  
  attach\_to objectrequired
  
  typestring
  
  Possible values: \[contact, company, deal]
  
  Example: contact
  
  idstring
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  summarystring
  
  Example: My meeting summary
  
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

My meeting summary

```json

{

  "id": "46156648-87c6-478d-8aa7-1dc3a00dacab",

  "attach_to": {

    "type": "contact",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

  },

  "summary": "My meeting summary",

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

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

    "type": "meetingReport",

    "id": "f4baa515-c813-4ca2-bfc2-a646d985e58d"

  }

}
```

```json

{

  "data": {

    "type": "meetingReport",

    "id": "f4baa515-c813-4ca2-bfc2-a646d985e58d"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/meetings.createReport");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"46156648-87c6-478d-8aa7-1dc3a00dacab\",\n  \"attach_to\": {\n    \"type\": \"contact\",\n    \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n  },\n  \"summary\": \"My meeting summary\",\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ]\n}", null, "application/json");
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
  "id": "46156648-87c6-478d-8aa7-1dc3a00dacab",
  "attach_to": {
    "type": "contact",
    "id": "f29abf48-337d-44b4-aad4-585f5277a456"
  },
  "summary": "My meeting summary",
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
meetings.delete

Next  
\
Calls
