---
url: https://developer.focus.teamleader.eu/docs/api/contacts-unlink-from-company
title: contacts.unlinkFromCompany | Teamleader Developers
words: 193
---
- [](/)
- API Reference
- CRM
- Contacts
- contacts.unlinkFromCompany

contacts.unlinkFromCompany

```
POST https://api.focus.teamleader.eu/contacts.unlinkFromCompany
```

Unlink a contact from a company.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: b4b3160a-b55e-4033-bdae-25b6d22949b4
  
  company\_idstringrequired
  
  Example: 3f1c8650-4292-4187-bb02-4aa00bbe9632

```json

{

  "id": "b4b3160a-b55e-4033-bdae-25b6d22949b4",

  "company_id": "3f1c8650-4292-4187-bb02-4aa00bbe9632"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/contacts.unlinkFromCompany");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"b4b3160a-b55e-4033-bdae-25b6d22949b4\",\n  \"company_id\": \"3f1c8650-4292-4187-bb02-4aa00bbe9632\"\n}", null, "application/json");
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
  "id": "b4b3160a-b55e-4033-bdae-25b6d22949b4",
  "company_id": "3f1c8650-4292-4187-bb02-4aa00bbe9632"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
contacts.linkToCompany

Next  
\
contacts.updateCompanyLink
