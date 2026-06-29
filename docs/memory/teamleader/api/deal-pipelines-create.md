---
url: https://developer.focus.teamleader.eu/docs/api/deal-pipelines-create
title: dealPipelines.create | Teamleader Developers
words: 233
---
- [](/)
- API Reference
- Deals
- Deal Pipelines
- dealPipelines.create

dealPipelines.create

```
POST https://api.focus.teamleader.eu/dealPipelines.create
```

Create a new deal pipeline.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- namestringrequired
  
  Example: Primary Pipeline

```json

{

  "name": "Primary Pipeline"

}
```

Responses​

- 201

Response Headers

<!--THE END-->

- application/json

<!--THE END-->

- Schema
- Example (auto)
- Example

Schema

- data object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "dealPipeline",

    "id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44"

  }

}
```

```json

{

  "data": {

    "type": "dealPipeline",

    "id": "f350e48a-fbc3-0a79-e62a-53aa1ae86d44"

  }

}
```

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dealPipelines.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"name\": \"Primary Pipeline\"\n}", null, "application/json");
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
  "name": "Primary Pipeline"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
dealPipelines.list

Next  
\
dealPipelines.update
