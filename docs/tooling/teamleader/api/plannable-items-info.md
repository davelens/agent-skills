---
url: https://developer.focus.teamleader.eu/docs/api/plannable-items-info
title: plannableItems.info | Teamleader Developers
words: 342
---
- [](/)
- API Reference
- Planning
- Plannable items
- plannableItems.info

plannableItems.info

```
POST https://api.focus.teamleader.eu/plannableItems.info
```

Returns the info for a single plannable item, either by ID or source if the ID is unknown.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstring
  
  Example: 018d79a1-2b99-7fbd-b323-500b01305371
  
  source object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: task

```json

{

  "id": "018d79a1-2b99-7fbd-b323-500b01305371"

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
  
  idstring
  
  Example: 018d55af-d0d7-76be-8185-ee970a7f3826
  
  source object
  
  idstring
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring
  
  Example: task
  
  total\_duration object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  planned\_duration object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60
  
  unplanned\_duration object
  
  unitstring
  
  Possible values: \[minutes]
  
  Example: minutes
  
  valuenumber
  
  Example: 60

```json

{

  "data": {

    "id": "018d79a1-2b99-7fbd-b323-500b01305371",

    "source": {

      "type": "task",

      "id": "948b8ca5-58aa-0844-ba34-cee255aa9694"

    },

    "total_duration": {

      "value": 600,

      "currency": "minutes"

    },

    "planned_duration": {

      "value": 600,

      "currency": "minutes"

    },

    "unplanned_duration": {

      "value": 0,

      "currency": "minutes"

    }

  }

}
```

```json

{

  "data": {

    "id": "018d79a1-2b99-7fbd-b323-500b01305371",

    "source": {

      "type": "task",

      "id": "948b8ca5-58aa-0844-ba34-cee255aa9694"

    },

    "total_duration": {

      "value": 600,

      "currency": "minutes"

    },

    "planned_duration": {

      "value": 600,

      "currency": "minutes"

    },

    "unplanned_duration": {

      "value": 0,

      "currency": "minutes"

    }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/plannableItems.info");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"018d79a1-2b99-7fbd-b323-500b01305371\"\n}", null, "application/json");
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
  "id": "018d79a1-2b99-7fbd-b323-500b01305371"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
plannableItems.list

Next  
\
Reservations
