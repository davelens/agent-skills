---
url: https://developer.focus.teamleader.eu/docs/api/deal-pipelines-update
title: dealPipelines.update | Teamleader Developers
words: 197
---
- [](/)
- API Reference
- Deals
- Deal Pipelines
- dealPipelines.update

dealPipelines.update

```
POST https://api.focus.teamleader.eu/dealPipelines.update
```

Update a single deal pipeline.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 254dc5ee-f8de-0791-9e31-a4f7817e64d2
  
  namestringrequired
  
  Example: Main Pipeline

```json

{

  "id": "254dc5ee-f8de-0791-9e31-a4f7817e64d2",

  "name": "Main Pipeline"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealPipelines.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"254dc5ee-f8de-0791-9e31-a4f7817e64d2\",\n  \"name\": \"Main Pipeline\"\n}", null, "application/json");
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
  "id": "254dc5ee-f8de-0791-9e31-a4f7817e64d2",
  "name": "Main Pipeline"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
dealPipelines.create

Next  
\
dealPipelines.markAsDefault
