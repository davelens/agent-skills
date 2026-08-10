---
url: https://developer.focus.teamleader.eu/docs/api/legacy-milestones-open
title: milestones.open | Teamleader Developers
words: 194
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Milestones
- milestones.open

milestones.open

```
POST https://api.focus.teamleader.eu/milestones.open
```

(Re)open a milestone. If the milestone's project is closed, the project will be reopened.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 67e80ad8-d14f-4510-a2bd-a4c6aa578c37

```json

{

  "id": "67e80ad8-d14f-4510-a2bd-a4c6aa578c37"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/milestones.open");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"67e80ad8-d14f-4510-a2bd-a4c6aa578c37\"\n}", null, "application/json");
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
  "id": "67e80ad8-d14f-4510-a2bd-a4c6aa578c37"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
milestones.close

Next  
\
Projects
