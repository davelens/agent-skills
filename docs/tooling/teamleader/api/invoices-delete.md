---
url: https://developer.focus.teamleader.eu/docs/api/invoices-delete
title: invoices.delete | Teamleader Developers
words: 192
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.delete

invoices.delete

```
POST https://api.focus.teamleader.eu/invoices.delete
```

Delete an existing invoice. Only possible for draft invoices or the last booked invoice.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 7517d21c-75c1-4b89-8956-0e67f46c8532

```json

{

  "id": "7517d21c-75c1-4b89-8956-0e67f46c8532"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"7517d21c-75c1-4b89-8956-0e67f46c8532\"\n}", null, "application/json");
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
  "id": "7517d21c-75c1-4b89-8956-0e67f46c8532"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
invoices.book

Next  
\
invoices.registerPayment
