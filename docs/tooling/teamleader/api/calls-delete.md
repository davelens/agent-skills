---
url: https://developer.focus.teamleader.eu/docs/api/calls-delete
title: calls.delete | Teamleader Developers
words: 182
---
- [](/)
- API Reference
- Calendar
- Calls
- calls.delete

calls.delete

```
POST https://api.focus.teamleader.eu/calls.delete
```

Deletes a call.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 6fac0bf0-e803-424e-af67-76863a3d7d16

```json

{

  "id": "6fac0bf0-e803-424e-af67-76863a3d7d16"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/calls.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"6fac0bf0-e803-424e-af67-76863a3d7d16\"\n}", null, "application/json");
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
  "id": "6fac0bf0-e803-424e-af67-76863a3d7d16"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
calls.complete

Next  
\
Call Outcomes
