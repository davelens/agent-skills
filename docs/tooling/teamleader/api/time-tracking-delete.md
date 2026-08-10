---
url: https://developer.focus.teamleader.eu/docs/api/time-tracking-delete
title: timeTracking.delete | Teamleader Developers
words: 184
---
- [](/)
- API Reference
- Time Tracking
- Time Tracking
- timeTracking.delete

timeTracking.delete

```
POST https://api.focus.teamleader.eu/timeTracking.delete
```

Delete a tracked time.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 6caeea11-aa83-4da9-9859-5b62bbf3a476

```json

{

  "id": "6caeea11-aa83-4da9-9859-5b62bbf3a476"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timeTracking.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"6caeea11-aa83-4da9-9859-5b62bbf3a476\"\n}", null, "application/json");
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
  "id": "6caeea11-aa83-4da9-9859-5b62bbf3a476"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
timeTracking.resume

Next  
\
Timers
