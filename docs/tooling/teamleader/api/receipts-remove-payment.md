---
url: https://developer.focus.teamleader.eu/docs/api/receipts-remove-payment
title: receipts.removePayment | Teamleader Developers
words: 195
---
- [](/)
- API Reference
- Expenses
- Receipts
- receipts.removePayment

receipts.removePayment

```
POST https://api.focus.teamleader.eu/receipts.removePayment
```

Remove a payment from a receipt.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  payment\_idstringrequired

```json

{

  "id": "018d5965-19fb-701a-af11-e80451931551",

  "payment_id": "018d5965-19fb-701a-af11-e80451931551"

}
```

Responses​

- 204

No Content

- application/json

No schema

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/receipts.removePayment");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"string\",\n  \"payment_id\": \"string\"\n}", null, "application/json");
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
  "id": "string",
  "payment_id": "string"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
receipts.registerPayment

Next  
\
receipts.sendToBookkeeping
