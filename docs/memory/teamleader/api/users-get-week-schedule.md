---
url: https://developer.focus.teamleader.eu/docs/api/users-get-week-schedule
title: users.getWeekSchedule | Teamleader Developers
words: 347
---
- [](/)
- API Reference
- General
- Users
- users.getWeekSchedule

users.getWeekSchedule

```
POST https://api.focus.teamleader.eu/users.getWeekSchedule
```

Returns information about week schedule of a user. Only available with the Weekly working schedule feature.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 87982c96-f2fe-4b05-838c-ff42c0525758

```json

{

  "id": "87982c96-f2fe-4b05-838c-ff42c0525758"

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
  
  periods object\[]
  
  Array [
  
  typestring
  
  Possible values: \[workinghours, lunchbreak]
  
  Example: working_hours
  
  start object
  
  dayWeekday
  
  Possible values: \[monday, tuesday, wednesday, thursday, friday, saturday, sunday]
  
  timestring
  
  The time of day in 24-hour hh:mm format. The time will be reported in the user's time zone.
  
  Example: 09:00
  
  end object
  
  dayWeekday
  
  Possible values: \[monday, tuesday, wednesday, thursday, friday, saturday, sunday]
  
  timestring
  
  The time of day in 24-hour hh:mm format. The time will be reported in the user's time zone.
  
  Example: 17:00
  
  ]

```json

{

  "data": {

    "periods": [

      {

        "type": "working_hours",

        "start": {

          "day": "monday",

          "time": "09:00"

        },

        "end": {

          "day": "monday",

          "time": "17:00"

        }

      }

    ]

  }

}
```

```json

{

  "data": {

    "periods": [

      {

        "type": "working_hours",

        "start": {

          "day": "monday",

          "time": "09:00"

        },

        "end": {

          "day": "monday",

          "time": "17:00"

        }

      }

    ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/users.getWeekSchedule");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"87982c96-f2fe-4b05-838c-ff42c0525758\"\n}", null, "application/json");
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
  "id": "87982c96-f2fe-4b05-838c-ff42c0525758"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
users.listDaysOff

Next  
\
Teams
