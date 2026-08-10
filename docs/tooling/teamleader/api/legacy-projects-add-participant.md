---
url: https://developer.focus.teamleader.eu/docs/api/legacy-projects-add-participant
title: projects.addParticipant | Teamleader Developers
words: 224
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Projects
- projects.addParticipant

projects.addParticipant

```
POST https://api.focus.teamleader.eu/projects.addParticipant
```

Add a participant to a project.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 8dbfa9db-c53f-410c-97d3-755b19685809
  
  participant objectrequired
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  roleRole
  
  Possible values: \[decision_maker, member]

```json

{

  "id": "8dbfa9db-c53f-410c-97d3-755b19685809",

  "participant": {

    "type": "user",

    "id": "a1388f3d-6116-4792-ac1c-04657697539e"

  },

  "role": "member"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects.addParticipant");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"8dbfa9db-c53f-410c-97d3-755b19685809\",\n  \"participant\": {\n    \"type\": \"user\",\n    \"id\": \"a1388f3d-6116-4792-ac1c-04657697539e\"\n  },\n  \"role\": \"member\"\n}", null, "application/json");
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
  "id": "8dbfa9db-c53f-410c-97d3-755b19685809",
  "participant": {
    "type": "user",
    "id": "a1388f3d-6116-4792-ac1c-04657697539e"
  },
  "role": "member"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.delete

Next  
\
projects.updateParticipant
