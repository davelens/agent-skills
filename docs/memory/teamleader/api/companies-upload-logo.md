---
url: https://developer.focus.teamleader.eu/docs/api/companies-upload-logo
title: companies.uploadLogo | Teamleader Developers
words: 199
---
- [](/)
- API Reference
- CRM
- Companies
- companies.uploadLogo

companies.uploadLogo

```
POST https://api.focus.teamleader.eu/companies.uploadLogo
```

Update the logo of a company.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 4784189d-610b-4488-b3a5-5f324f752417
  
  imagestringnullablerequired
  
  Use null to remove the logo
  
  Example: data:image/png;base64,0tyZUP4y8ObjsqZnRFhHANZY+Kc=

```json

{

  "id": "4784189d-610b-4488-b3a5-5f324f752417",

  "image": "data:image/png;base64,0tyZUP4y8ObjsqZnRFhHANZY+Kc="

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/companies.uploadLogo");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"4784189d-610b-4488-b3a5-5f324f752417\",\n  \"image\": \"data:image/png;base64,0tyZUP4y8ObjsqZnRFhHANZY+Kc=\"\n}", null, "application/json");
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
  "id": "4784189d-610b-4488-b3a5-5f324f752417",
  "image": "data:image/png;base64,0tyZUP4y8ObjsqZnRFhHANZY+Kc="
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
companies.update

Next  
\
companies.delete
