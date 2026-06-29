---
url: https://developer.focus.teamleader.eu/docs/api/companies-delete
title: companies.delete | Teamleader Developers
words: 181
---
- [](/)
- API Reference
- CRM
- Companies
- companies.delete

companies.delete

```
POST https://api.focus.teamleader.eu/companies.delete
```

Delete a company.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: f3d67f3e-b8a9-45e8-99b1-17a3b14de8a6

```json

{

  "id": "f3d67f3e-b8a9-45e8-99b1-17a3b14de8a6"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/companies.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"f3d67f3e-b8a9-45e8-99b1-17a3b14de8a6\"\n}", null, "application/json");
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
  "id": "f3d67f3e-b8a9-45e8-99b1-17a3b14de8a6"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
companies.uploadLogo

Next  
\
companies.tag
