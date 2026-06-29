---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-remove-deal
title: projects.removeDeal | Teamleader Developers
words: 202
---
- [](/)
- API Reference
- New Projects
- Projects
- projects.removeDeal

projects.removeDeal

```
POST https://api.focus.teamleader.eu/projects-v2/projects.removeDeal
```

Remove a deal from the project. Doesn't fail if the deal was already removed.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: d27909aa-fc0e-4ed4-acec-fcbffda5111b
  
  deal\_idstringrequired
  
  Example: 8385b072-587f-4ebf-a32b-5f48baea1b1c

```json

{

  "id": "d27909aa-fc0e-4ed4-acec-fcbffda5111b",

  "deal_id": "8385b072-587f-4ebf-a32b-5f48baea1b1c"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/projects.removeDeal");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"d27909aa-fc0e-4ed4-acec-fcbffda5111b\",\n  \"deal_id\": \"8385b072-587f-4ebf-a32b-5f48baea1b1c\"\n}", null, "application/json");
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
  "id": "d27909aa-fc0e-4ed4-acec-fcbffda5111b",
  "deal_id": "8385b072-587f-4ebf-a32b-5f48baea1b1c"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
projects.addDeal

Next  
\
projects.addQuotation
