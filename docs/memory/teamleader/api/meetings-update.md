---
url: https://developer.focus.teamleader.eu/docs/api/meetings-update
title: meetings.update | Teamleader Developers
words: 462
---
- [](/)
- API Reference
- Calendar
- Meetings
- meetings.update

meetings.update

```
POST https://api.focus.teamleader.eu/meetings.update
```

Update a meeting.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Bodyrequired

- idstringrequired
  
  Example: 00ed6266-a5bd-4aac-a292-2582017b6400
  
  titlestring
  
  Example: My meeting
  
  starts\_atstring
  
  Example: 2023-10-01T09:00:00+01:00
  
  ends\_atstring
  
  Example: 2023-10-01T10:00:00+01:00
  
  descriptionstringnullable
  
  Example: My meeting description
  
  attendees object\[]
  
  when provided, at least one user attendee must be present
  
  Array [
  
  typestring
  
  Possible values: \[user, contact]
  
  Example: user
  
  idstring
  
  Example: 6ddd2666-65a0-497f-9f01-54c4343ec1a6
  
  ]
  
  customer objectnullable
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  location object
  
  oneOf
  
  - With type string
  - With type & address
  - With type & address
  - With type & id
  
  typestringrequired
  
  Example: virtual
  
  project\_idstringnullable
  
  Mutually exclusive with milestoneid. Required when groupid is provided.
  
  Example: 49b403be-a32e-0901-9b1c-25214f9027c6
  
  group\_idstringnullable
  
  Requires project_id. The group must belong to the specified project.
  
  Example: 0185968b-2c9e-73fd-9ce1-a12c0979783b
  
  milestone\_idstringnullable
  
  Mutually exclusive with project_id.
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  deal\_idstringnullable
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
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

```json

{

  "id": "00ed6266-a5bd-4aac-a292-2582017b6400",

  "title": "My meeting",

  "starts_at": "2023-10-01T09:00:00+01:00",

  "ends_at": "2023-10-01T10:00:00+01:00",

  "description": "My meeting description",

  "attendees": [

    {

      "type": "user",

      "id": "6ddd2666-65a0-497f-9f01-54c4343ec1a6"

    }

  ],

  "customer": {

    "type": "contact",

    "id": "f29abf48-337d-44b4-aad4-585f5277a456"

  },

  "location": {

    "type": "virtual"

  },

  "project_id": "49b403be-a32e-0901-9b1c-25214f9027c6",

  "group_id": "0185968b-2c9e-73fd-9ce1-a12c0979783b",

  "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

  "deal_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/meetings.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"00ed6266-a5bd-4aac-a292-2582017b6400\",\n  \"title\": \"My meeting\",\n  \"starts_at\": \"2023-10-01T09:00:00+01:00\",\n  \"ends_at\": \"2023-10-01T10:00:00+01:00\",\n  \"description\": \"My meeting description\",\n  \"attendees\": [\n    {\n      \"type\": \"user\",\n      \"id\": \"6ddd2666-65a0-497f-9f01-54c4343ec1a6\"\n    }\n  ],\n  \"customer\": {\n    \"type\": \"contact\",\n    \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n  },\n  \"location\": {\n    \"type\": \"virtual\"\n  },\n  \"project_id\": \"49b403be-a32e-0901-9b1c-25214f9027c6\",\n  \"group_id\": \"0185968b-2c9e-73fd-9ce1-a12c0979783b\",\n  \"milestone_id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\",\n  \"deal_id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\",\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ]\n}", null, "application/json");
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

```json
{
  "id": "00ed6266-a5bd-4aac-a292-2582017b6400",
  "title": "My meeting",
  "starts_at": "2023-10-01T09:00:00+01:00",
  "ends_at": "2023-10-01T10:00:00+01:00",
  "description": "My meeting description",
  "attendees": [
    {
      "type": "user",
      "id": "6ddd2666-65a0-497f-9f01-54c4343ec1a6"
    }
  ],
  "customer": {
    "type": "contact",
    "id": "f29abf48-337d-44b4-aad4-585f5277a456"
  },
  "location": {
    "type": "virtual"
  },
  "project_id": "49b403be-a32e-0901-9b1c-25214f9027c6",
  "group_id": "0185968b-2c9e-73fd-9ce1-a12c0979783b",
  "milestone_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",
  "deal_id": "32665afd-1818-0ed3-9e18-a603a3a21b95",
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
meetings.schedule

Next  
\
meetings.complete
