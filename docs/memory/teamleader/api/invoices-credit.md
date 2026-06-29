---
url: https://developer.focus.teamleader.eu/docs/api/invoices-credit
title: invoices.credit | Teamleader Developers
words: 236
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.credit

invoices.credit

```
POST https://api.focus.teamleader.eu/invoices.credit
```

Credit an invoice completely.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: d885e5d5-bacb-4607-bde9-abc4a04a901b
  
  credit\note\datestring
  
  Example: 2016-02-04

```json

{

  "id": "d885e5d5-bacb-4607-bde9-abc4a04a901b",

  "credit_note_date": "2016-02-04"

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

    "type": "creditNote",

    "id": "d885e5d5-bacb-4607-bde9-abc4a04a901c"

  }

}
```

```json

{

  "data": {

    "type": "creditNote",

    "id": "d885e5d5-bacb-4607-bde9-abc4a04a901c"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.credit");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"d885e5d5-bacb-4607-bde9-abc4a04a901b\",\n  \"credit_note_date\": \"2016-02-04\"\n}", null, "application/json");
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
  "id": "d885e5d5-bacb-4607-bde9-abc4a04a901b",
  "credit_note_date": "2016-02-04"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
invoices.removePayments

Next  
\
invoices.creditPartially
