---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-external-parties-add-to-project
title: externalParties.addToProject | Teamleader Developers
words: 253
---
- [](/)
- API Reference
- New Projects
- External parties
- externalParties.addToProject

externalParties.addToProject

```
POST https://api.focus.teamleader.eu/projects-v2/externalParties.addToProject
```

Add an external party to a project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- project\_idstringrequired
  
  Example: 7257b535-d40f-4699-b3bd-63679379b579
  
  customer objectrequired
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  functionstring
  
  Example: Project Manager
  
  sub\_functionstring
  
  Example: Project Coordinator

```json

{

  "project_id": "48ef99b9-4a20-4071-888d-0927f45c03d5",

  "customer": {

    "type": "contact",

    "id": "adfec6b9-a8d7-403d-bde3-093ad50d74c2"

  },

  "function": "Sales representative",

  "sub_function": "Teamleader Focus Sales FR"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/externalParties.addToProject");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"project_id\": \"48ef99b9-4a20-4071-888d-0927f45c03d5\",\n  \"customer\": {\n    \"type\": \"contact\",\n    \"id\": \"adfec6b9-a8d7-403d-bde3-093ad50d74c2\"\n  },\n  \"function\": \"Sales representative\",\n  \"sub_function\": \"Teamleader Focus Sales FR\"\n}", null, "application/json");
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
  "project_id": "48ef99b9-4a20-4071-888d-0927f45c03d5",
  "customer": {
    "type": "contact",
    "id": "adfec6b9-a8d7-403d-bde3-093ad50d74c2"
  },
  "function": "Sales representative",
  "sub_function": "Teamleader Focus Sales FR"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
External parties

Next  
\
externalParties.update
