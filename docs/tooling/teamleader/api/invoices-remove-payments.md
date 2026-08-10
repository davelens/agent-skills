---
url: https://developer.focus.teamleader.eu/docs/api/invoices-remove-payments
title: invoices.removePayments | Teamleader Developers
words: 198
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.removePayments

invoices.removePayments

```
POST https://api.focus.teamleader.eu/invoices.removePayments
```

Marks an invoice as unpaid and removes all linked payments. This will also trigger a re-rendering of the invoice PDF.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: d885e5d5-bacb-4607-bde9-abc4a04a901b

```json

{

  "id": "d885e5d5-bacb-4607-bde9-abc4a04a901b"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.removePayments");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"d885e5d5-bacb-4607-bde9-abc4a04a901b\"\n}", null, "application/json");
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
  "id": "d885e5d5-bacb-4607-bde9-abc4a04a901b"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
invoices.registerPayment

Next  
\
invoices.credit
