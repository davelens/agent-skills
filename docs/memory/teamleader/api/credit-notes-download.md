---
url: https://developer.focus.teamleader.eu/docs/api/credit-notes-download
title: creditNotes.download | Teamleader Developers
words: 264
---
- [](/)
- API Reference
- Invoicing
- Credit Notes
- creditNotes.download

creditNotes.download

```
POST https://api.focus.teamleader.eu/creditNotes.download
```

Download a credit note in a specific format.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: d885e5d5-bacb-4607-bde9-abc4a04a901b
  
  formatFormatrequired
  
  Possible values: \[pdf, ubl/e-fff]
  
  Example: pdf

```json

{

  "id": "d885e5d5-bacb-4607-bde9-abc4a04a901b",

  "format": "pdf"

}
```

Responses​

- 200

Response Headers

<!--THE END-->

- application/json

<!--THE END-->

- Schema
- Example (auto)
- Example

Schema

- data object
  
  locationstring
  
  A temporary url where the requested file can be downloaded
  
  Example: https://cdn.teamleader.eu/file
  
  expiresstring
  
  Expiration time of the temporary download link
  
  Example: 2018-02-05T16:44:33+00:00

```json

{

  "data": {

    "location": "https://cdn.teamleader.eu/file",

    "expires": "2018-02-05T16:44:33+00:00"

  }

}
```

```json

{

  "data": {

    "location": "https://cdn.teamleader.eu/file",

    "expires": "2018-02-05T16:44:33+00:00"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/creditNotes.download");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"d885e5d5-bacb-4607-bde9-abc4a04a901b\",\n  \"format\": \"pdf\"\n}", null, "application/json");
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
  "format": "pdf"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
creditNotes.info

Next  
\
creditNotes.sendViaPeppol
