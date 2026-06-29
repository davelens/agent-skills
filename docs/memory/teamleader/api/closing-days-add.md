---
url: https://developer.focus.teamleader.eu/docs/api/closing-days-add
title: closingDays.add | Teamleader Developers
words: 233
---
- [](/)
- API Reference
- General
- Closing Days
- closingDays.add

closingDays.add

```
POST https://api.focus.teamleader.eu/closingDays.add
```

Adds a closing day for the account.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- daystringrequired
  
  Example: 2024-02-01

```json

{

  "day": "2024-02-01"

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
  
  typestring
  
  Example: closingDay
  
  idstringrequired
  
  Example: eb264fd0-0e5c-0dbf-ae1e-49e7d6a8e6b8

```json

{

  "data": {

    "type": "closingDay",

    "id": "eb264fd0-0e5c-0dbf-ae1e-49e7d6a8e6b8"

  }

}
```

```json

{

  "data": {

    "type": "closingDay",

    "id": "eb264fd0-0e5c-0dbf-ae1e-49e7d6a8e6b8"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/closingDays.add");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"day\": \"2024-02-01\"\n}", null, "application/json");
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
  "day": "2024-02-01"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
closingDays.list

Next  
\
closingDays.delete
