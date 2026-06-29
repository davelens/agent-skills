---
url: https://developer.focus.teamleader.eu/docs/api/incoming-credit-notes-delete
title: incomingCreditNotes.delete | Teamleader Developers
words: 184
---
- [](/)
- API Reference
- Expenses
- Incoming Credit Notes
- incomingCreditNotes.delete

incomingCreditNotes.delete

```
POST https://api.focus.teamleader.eu/incomingCreditNotes.delete
```

Deletes an incoming credit note.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- idstringrequired

```json

{

  "id": "018d5965-19fb-701a-af11-e80451931551"

}
```

Responses​

- 204

No Content

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/incomingCreditNotes.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"string\"\n}", null, "application/json");
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

Body

- Example (from schema)
- Example

```json
{
  "id": "string"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
incomingCreditNotes.approve

Next  
\
incomingCreditNotes.info
