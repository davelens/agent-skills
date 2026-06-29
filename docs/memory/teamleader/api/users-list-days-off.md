---
url: https://developer.focus.teamleader.eu/docs/api/users-list-days-off
title: users.listDaysOff | Teamleader Developers
words: 433
---
- [](/)
- API Reference
- General
- Users
- users.listDaysOff

users.listDaysOff

```
POST https://api.focus.teamleader.eu/users.listDaysOff
```

Returns information about days off of a given user.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 87982c96-f2fe-4b05-838c-ff42c0525758
  
  filter object
  
  starts\_afterstring
  
  Start of the period for which to return days off.
  
  Example: 2023-10-01
  
  ends\_beforestring
  
  End of the period for which to return days off.
  
  Example: 2023-10-30
  
  page object
  
  sizenumber
  
  Default value: 20
  
  numbernumber
  
  Default value: 1

```json

{

  "id": "87982c96-f2fe-4b05-838c-ff42c0525758",

  "filter": {

    "starts_after": "2023-10-01",

    "ends_before": "2023-10-30"

  },

  "page": {

    "size": 20,

    "number": 1

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
  
  idstring
  
  Example: f611da79-90c2-02b1-b819-a810e0c77291
  
  starts\_atstring
  
  Example: 2023-10-01T09:00:00+01:00
  
  ends\_atstring
  
  Example: 2023-10-20T18:00:00+01:00
  
  user object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Possible values: \[user]
  
  Example: user
  
  leave\_type object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Possible values: \[dayOffType]
  
  Example: dayOffType
  
  statusstring
  
  Possible values: \[approved, not_approved, pending]
  
  Example: approved
  
  ]
  
  meta object
  
  Only included with request parameter includes=pagination
  
  page object
  
  sizenumber
  
  Example: 10
  
  numbernumber
  
  Example: 2
  
  matchesnumber
  
  Example: 12

```json

{

  "data": [

    {

      "id": "f611da79-90c2-02b1-b819-a810e0c77291",

      "starts_at": "2023-10-01T09:00:00+01:00",

      "ends_at": "2023-10-20T18:00:00+01:00",

      "user": {

        "type": "user",

        "id": "b5094b3f-bb7a-0391-b01b-e709773f3509"

      },

      "leave_type": {

        "type": "dayOffType",

        "id": "f68b123c-4c36-0f5c-ac16-11f498e5dc01"

      },

      "status": "approved"

    }

  ],

  "meta": {

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

  }

}
```

```json

{

  "data": [

    {

      "id": "f611da79-90c2-02b1-b819-a810e0c77291",

      "starts_at": "2023-10-01T09:00:00+01:00",

      "ends_at": "2023-10-20T18:00:00+01:00",

      "user": {

        "type": "user",

        "id": "b5094b3f-bb7a-0391-b01b-e709773f3509"

      },

      "leave_type": {

        "type": "dayOffType",

        "id": "f68b123c-4c36-0f5c-ac16-11f498e5dc01"

      },

      "status": "approved"

    }

  ],

  "meta": {

    "page": {

      "size": 10,

      "number": 2

    },

    "matches": 12

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/users.listDaysOff");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"87982c96-f2fe-4b05-838c-ff42c0525758\",\n  \"filter\": {\n    \"starts_after\": \"2023-10-01\",\n    \"ends_before\": \"2023-10-30\"\n  },\n  \"page\": {\n    \"size\": 20,\n    \"number\": 1\n  }\n}", null, "application/json");
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
  "id": "87982c96-f2fe-4b05-838c-ff42c0525758",
  "filter": {
    "starts_after": "2023-10-01",
    "ends_before": "2023-10-30"
  },
  "page": {
    "size": 20,
    "number": 1
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
users.info

Next  
\
users.getWeekSchedule
