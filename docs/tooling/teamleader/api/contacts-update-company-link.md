---
url: https://developer.focus.teamleader.eu/docs/api/contacts-update-company-link
title: contacts.updateCompanyLink | Teamleader Developers
words: 210
---
- [](/)
- API Reference
- CRM
- Contacts
- contacts.updateCompanyLink

contacts.updateCompanyLink

```
POST https://api.focus.teamleader.eu/contacts.updateCompanyLink
```

Update contact to company link.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 75596038-b9c8-4a37-969d-61059e300a28
  
  company\_idstringrequired
  
  Example: 4da20f00-0628-4336-b885-aa90e580dd85
  
  positionstring
  
  Example: CEO
  
  decision\_makerboolean
  
  Example: true

```json

{

  "id": "75596038-b9c8-4a37-969d-61059e300a28",

  "company_id": "4da20f00-0628-4336-b885-aa90e580dd85",

  "position": "CEO",

  "decision_maker": true

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/contacts.updateCompanyLink");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"75596038-b9c8-4a37-969d-61059e300a28\",\n  \"company_id\": \"4da20f00-0628-4336-b885-aa90e580dd85\",\n  \"position\": \"CEO\",\n  \"decision_maker\": true\n}", null, "application/json");
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
  "id": "75596038-b9c8-4a37-969d-61059e300a28",
  "company_id": "4da20f00-0628-4336-b885-aa90e580dd85",
  "position": "CEO",
  "decision_maker": true
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
contacts.unlinkFromCompany

Next  
\
contacts.uploadAvatar
