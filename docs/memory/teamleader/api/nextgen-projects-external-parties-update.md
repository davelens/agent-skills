---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-external-parties-update
title: externalParties.update | Teamleader Developers
words: 240
---
- [](/)
- API Reference
- New Projects
- External parties
- externalParties.update

externalParties.update

```
POST https://api.focus.teamleader.eu/projects-v2/externalParties.update
```

Update an external party.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 6126596f-6193-445a-935a-60c10df9f632
  
  customer object
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  functionstringnullable
  
  Example: Project Manager
  
  sub\_functionstringnullable
  
  Example: Project Coordinator

```json

{

  "id": "48ef99b9-4a20-4071-888d-0927f45c03d5",

  "customer": {

    "type": "contact",

    "id": "adfec6b9-a8d7-403d-bde3-093ad50d74c2"

  },

  "function": "Sales representative",

  "sub_function": null

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/externalParties.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"48ef99b9-4a20-4071-888d-0927f45c03d5\",\n  \"customer\": {\n    \"type\": \"contact\",\n    \"id\": \"adfec6b9-a8d7-403d-bde3-093ad50d74c2\"\n  },\n  \"function\": \"Sales representative\",\n  \"sub_function\": null\n}", null, "application/json");
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
  "id": "48ef99b9-4a20-4071-888d-0927f45c03d5",
  "customer": {
    "type": "contact",
    "id": "adfec6b9-a8d7-403d-bde3-093ad50d74c2"
  },
  "function": "Sales representative",
  "sub_function": null
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
externalParties.addToProject

Next  
\
externalParties.delete
