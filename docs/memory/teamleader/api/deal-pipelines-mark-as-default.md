---
url: https://developer.focus.teamleader.eu/docs/api/deal-pipelines-mark-as-default
title: dealPipelines.markAsDefault | Teamleader Developers
words: 184
---
- [](/)
- API Reference
- Deals
- Deal Pipelines
- dealPipelines.markAsDefault

dealPipelines.markAsDefault

```
POST https://api.focus.teamleader.eu/dealPipelines.markAsDefault
```

Mark a pipeline as default.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: f350e48a-fbc3-0a79-e62a-53aa1ae86d44

```json

{

  "id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44"

}
```

Responses​

- 202

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealPipelines.markAsDefault");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"f350e48a-fbc3-0a79-e62a-53aa1ae86d44\"\n}", null, "application/json");
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
  "id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
dealPipelines.update

Next  
\
dealPipelines.duplicate
