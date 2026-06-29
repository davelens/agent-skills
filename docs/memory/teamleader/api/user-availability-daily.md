---
url: https://developer.focus.teamleader.eu/docs/api/user-availability-daily
title: userAvailability.daily | Teamleader Developers
words: 449
---
- [](/)
- API Reference
- Planning
- User availability
- userAvailability.daily

userAvailability.daily

```
POST https://api.focus.teamleader.eu/userAvailability.daily
```

Returns the daily availability for all users.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- period objectrequired
  
  A maximum duration of 100 days can be passed
  
  start\_datestring
  
  Default value: 2023-10-02
  
  end\_datestring
  
  Default value: 2023-10-06
  
  filter object
  
  assignees object\[]
  
  Array [
  
  typestringrequired
  
  Possible values: \[team, user]
  
  Example: user
  
  idstringrequired
  
  Example: 66abace2-62af-0836-a927-fe3f44b9b47b
  
  ]
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "period": {

    "start_date": "2024-01-01",

    "end_date": "2024-01-01"

  }

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

- data object\[]
  
  Array [
  
  user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: user
  
  availabilities object\[]
  
  Array [
  
  datestring
  
  Example: 2023-10-02
  
  availability object
  
  gross\time\available object
  
  Total available time based on working hours
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  net\time\available object
  
  Gross time available minus days off
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  planned\_time object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  unplanned\_time object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  ]
  
  ]

```json

{

  "data": [

    {

      "user": {

        "type": "user",

        "id": "1c00aeaa-0a47-0ce5-8f2b-60935c241f12"

      },

      "availabilities": [

        {

          "date": "2024-01-01",

          "availability": {

            "gross_time_available": {

              "value": 480,

              "unit": "minutes"

            },

            "net_time_available": {

              "value": 480,

              "unit": "minutes"

            },

            "planned_time": {

              "value": 60,

              "unit": "minutes"

            },

            "unplanned_time": {

              "value": 420,

              "unit": "minutes"

            }

          }

        }

      ]

    }

  ]

}
```

```json

{

  "data": [

    {

      "user": {

        "type": "user",

        "id": "1c00aeaa-0a47-0ce5-8f2b-60935c241f12"

      },

      "availabilities": [

        {

          "date": "2024-01-01",

          "availability": {

            "gross_time_available": {

              "value": 480,

              "unit": "minutes"

            },

            "net_time_available": {

              "value": 480,

              "unit": "minutes"

            },

            "planned_time": {

              "value": 60,

              "unit": "minutes"

            },

            "unplanned_time": {

              "value": 420,

              "unit": "minutes"

            }

          }

        }

      ]

    }

  ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/userAvailability.daily");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"period\": {\n    \"start_date\": \"2024-01-01\",\n    \"end_date\": \"2024-01-01\"\n  }\n}", null, "application/json");
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
  "period": {
    "start_date": "2024-01-01",
    "end_date": "2024-01-01"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
userAvailability.total

Next  
\
Tasks
