---
url: https://developer.focus.teamleader.eu/docs/api/reservations-delete
title: reservations.delete | Teamleader Developers
words: 182
---
- [](/)
- API Reference
- Planning
- Reservations
- reservations.delete

reservations.delete

```
POST https://api.focus.teamleader.eu/reservations.delete
```

Delete a reservation.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 01878019-c72c-70dc-b097-7e519c775e35

```json

{

  "id": "019a3012-c800-7109-ae63-0ab5bcd3b484"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/reservations.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"019a3012-c800-7109-ae63-0ab5bcd3b484\"\n}", null, "application/json");
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
  "id": "019a3012-c800-7109-ae63-0ab5bcd3b484"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
reservations.update

Next  
\
User availability
