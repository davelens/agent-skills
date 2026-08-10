---
url: https://developer.focus.teamleader.eu/docs/api/invoices-book
title: invoices.book | Teamleader Developers
words: 191
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.book

invoices.book

```
POST https://api.focus.teamleader.eu/invoices.book
```

Book a draft invoice.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 7abb325c-e063-42a4-8fb4-1b730759645a
  
  onstringrequired
  
  Example: 2016-02-04

```json

{

  "id": "7abb325c-e063-42a4-8fb4-1b730759645a",

  "on": "2016-02-04"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.book");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"7abb325c-e063-42a4-8fb4-1b730759645a\",\n  \"on\": \"2016-02-04\"\n}", null, "application/json");
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
  "id": "7abb325c-e063-42a4-8fb4-1b730759645a",
  "on": "2016-02-04"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
invoices.copy

Next  
\
invoices.delete
