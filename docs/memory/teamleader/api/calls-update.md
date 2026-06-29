---
url: https://developer.focus.teamleader.eu/docs/api/calls-update
title: calls.update | Teamleader Developers
words: 351
---
- [](/)
- API Reference
- Calendar
- Calls
- calls.update

calls.update

```
POST https://api.focus.teamleader.eu/calls.update
```

Update a new call.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 32665afd-1818-0ed3-9e18-a603a3a21b95
  
  descriptionstring
  
  Example: Description of the call
  
  participant object
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  due\_atstring
  
  Example: 2016-02-04T16:00:00+00:00
  
  assignee object
  
  typestringrequired
  
  Possible values: \[user]
  
  Example: user
  
  idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  deal\_idstringnullable
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
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

  "id": "32665afd-1818-0ed3-9e18-a603a3a21b95",

  "description": "Description of the call",

  "participant": {

    "customer": {

      "type": "company",

      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

    }

  },

  "due_at": "2016-02-04T16:00:00+00:00",

  "assignee": {

    "type": "user",

    "id": "98b2863e-7b01-4232-82f5-ede1f0b9db22"

  },

  "deal_id": "f29abf48-337d-44b4-aad4-585f5277a456",

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/calls.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"32665afd-1818-0ed3-9e18-a603a3a21b95\",\n  \"description\": \"Description of the call\",\n  \"participant\": {\n    \"customer\": {\n      \"type\": \"company\",\n      \"id\": \"2659dc4d-444b-4ced-b51c-b87591f604d7\"\n    }\n  },\n  \"due_at\": \"2016-02-04T16:00:00+00:00\",\n  \"assignee\": {\n    \"type\": \"user\",\n    \"id\": \"98b2863e-7b01-4232-82f5-ede1f0b9db22\"\n  },\n  \"deal_id\": \"f29abf48-337d-44b4-aad4-585f5277a456\",\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ]\n}", null, "application/json");
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
  "id": "32665afd-1818-0ed3-9e18-a603a3a21b95",
  "description": "Description of the call",
  "participant": {
    "customer": {
      "type": "company",
      "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"
    }
  },
  "due_at": "2016-02-04T16:00:00+00:00",
  "assignee": {
    "type": "user",
    "id": "98b2863e-7b01-4232-82f5-ede1f0b9db22"
  },
  "deal_id": "f29abf48-337d-44b4-aad4-585f5277a456",
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
calls.add

Next  
\
calls.complete
