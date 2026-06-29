---
url: https://developer.focus.teamleader.eu/docs/api/time-tracking-resume
title: timeTracking.resume | Teamleader Developers
words: 251
---
- [](/)
- API Reference
- Time Tracking
- Time Tracking
- timeTracking.resume

timeTracking.resume

```
POST https://api.focus.teamleader.eu/timeTracking.resume
```

Start a new timer based on previously tracked time.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 06dfa08a-b769-4005-a912-45ab885c5737
  
  started\_atstring
  
  If not provided, current time will be used
  
  Example: 2017-04-26T10:01:49+00:00

```json

{

  "id": "06dfa08a-b769-4005-a912-45ab885c5737",

  "started_at": "2017-04-26T10:01:49+00:00"

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

    "type": "timer",

    "id": "f01adf4a-bb9b-45de-b231-615cd0e941de"

  }

}
```

```json

{

  "data": {

    "type": "timer",

    "id": "f01adf4a-bb9b-45de-b231-615cd0e941de"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/timeTracking.resume");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"06dfa08a-b769-4005-a912-45ab885c5737\",\n  \"started_at\": \"2017-04-26T10:01:49+00:00\"\n}", null, "application/json");
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
  "id": "06dfa08a-b769-4005-a912-45ab885c5737",
  "started_at": "2017-04-26T10:01:49+00:00"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
timeTracking.update

Next  
\
timeTracking.delete
