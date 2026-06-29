---
url: https://developer.focus.teamleader.eu/docs/api/companies-untag
title: companies.untag | Teamleader Developers
words: 201
---
- [](/)
- API Reference
- CRM
- Companies
- companies.untag

companies.untag

```
POST https://api.focus.teamleader.eu/companies.untag
```

Remove a tag from a company.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 518d2e5e-99bc-4c66-8509-78e6820a1418
  
  tagsstring\[]required

```json

{

  "id": "518d2e5e-99bc-4c66-8509-78e6820a1418",

  "tags": [

    "prospect",

    "expo"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/companies.untag");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"518d2e5e-99bc-4c66-8509-78e6820a1418\",\n  \"tags\": [\n    \"prospect\",\n    \"expo\"\n  ]\n}", null, "application/json");
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
  "id": "518d2e5e-99bc-4c66-8509-78e6820a1418",
  "tags": [
    "prospect",
    "expo"
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
companies.tag

Next  
\
Business Types
