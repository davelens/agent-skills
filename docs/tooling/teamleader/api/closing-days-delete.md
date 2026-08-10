---
url: https://developer.focus.teamleader.eu/docs/api/closing-days-delete
title: closingDays.delete | Teamleader Developers
words: 188
---
- [](/)
- API Reference
- General
- Closing Days
- closingDays.delete

closingDays.delete

```
POST https://api.focus.teamleader.eu/closingDays.delete
```

Removes a closing day for the account.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: eb264fd0-0e5c-0dbf-ae1e-49e7d6a8e6b8

```json

{

  "id": "eb264fd0-0e5c-0dbf-ae1e-49e7d6a8e6b8"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/closingDays.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"eb264fd0-0e5c-0dbf-ae1e-49e7d6a8e6b8\"\n}", null, "application/json");
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
  "id": "eb264fd0-0e5c-0dbf-ae1e-49e7d6a8e6b8"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
closingDays.add

Next  
\
Day Off Types
