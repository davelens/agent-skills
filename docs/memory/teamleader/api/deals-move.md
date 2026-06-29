---
url: https://developer.focus.teamleader.eu/docs/api/deals-move
title: deals.move | Teamleader Developers
words: 194
---
- [](/)
- API Reference
- Deals
- Deals
- deals.move

deals.move

```
POST https://api.focus.teamleader.eu/deals.move
```

Move the deal to a different phase.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: e88131bf-50c4-49d3-8ae3-47e5d9626bf6
  
  phase\_idstringrequired
  
  Example: 8776abee-d856-43c6-b98d-9ffc912e8b0b

```json

{

  "id": "e88131bf-50c4-49d3-8ae3-47e5d9626bf6",

  "phase_id": "8776abee-d856-43c6-b98d-9ffc912e8b0b"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/deals.move");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"e88131bf-50c4-49d3-8ae3-47e5d9626bf6\",\n  \"phase_id\": \"8776abee-d856-43c6-b98d-9ffc912e8b0b\"\n}", null, "application/json");
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
  "id": "e88131bf-50c4-49d3-8ae3-47e5d9626bf6",
  "phase_id": "8776abee-d856-43c6-b98d-9ffc912e8b0b"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
deals.update

Next  
\
deals.win
