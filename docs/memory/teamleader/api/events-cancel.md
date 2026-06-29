---
url: https://developer.focus.teamleader.eu/docs/api/events-cancel
title: events.cancel | Teamleader Developers
words: 187
---
- [](/)
- API Reference
- Calendar
- Calendar events
- events.cancel

events.cancel

```
POST https://api.focus.teamleader.eu/events.cancel
```

Cancel a calendar event (for all attendees).

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: b519491e-ca80-4efb-bb7b-3f08544936b0

```json

{

  "id": "b519491e-ca80-4efb-bb7b-3f08544936b0"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/events.cancel");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"b519491e-ca80-4efb-bb7b-3f08544936b0\"\n}", null, "application/json");
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
  "id": "b519491e-ca80-4efb-bb7b-3f08544936b0"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
events.update

Next  
\
Activity Types
