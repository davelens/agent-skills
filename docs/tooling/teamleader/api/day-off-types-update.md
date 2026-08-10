---
url: https://developer.focus.teamleader.eu/docs/api/day-off-types-update
title: dayOffTypes.update | Teamleader Developers
words: 240
---
- [](/)
- API Reference
- General
- Day Off Types
- dayOffTypes.update

dayOffTypes.update

```
POST https://api.focus.teamleader.eu/dayOffTypes.update
```

Update a day off type.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 1b7cece0-288c-0bbe-b916-5a315fbe9fe2
  
  namestring
  
  Example: day off type
  
  colorstring
  
  Example: #00B2B2
  
  date\_validity objectnullable
  
  fromstringrequired
  
  Example: 2024-04-04
  
  untilstring
  
  Example: 2025-05-05

```json

{

  "id": "1b7cece0-288c-0bbe-b916-5a315fbe9fe2",

  "name": "day off type",

  "color": "#00B2B2",

  "date_validity": {

    "from": "2024-04-04",

    "until": "2025-05-05"

  }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/dayOffTypes.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"1b7cece0-288c-0bbe-b916-5a315fbe9fe2\",\n  \"name\": \"day off type\",\n  \"color\": \"#00B2B2\",\n  \"date_validity\": {\n    \"from\": \"2024-04-04\",\n    \"until\": \"2025-05-05\"\n  }\n}", null, "application/json");
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
  "id": "1b7cece0-288c-0bbe-b916-5a315fbe9fe2",
  "name": "day off type",
  "color": "#00B2B2",
  "date_validity": {
    "from": "2024-04-04",
    "until": "2025-05-05"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
dayOffTypes.create

Next  
\
dayOffTypes.delete
