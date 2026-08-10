---
url: https://developer.focus.teamleader.eu/docs/api/bookkeeping-submissions-list
title: bookkeepingSubmissions.list | Teamleader Developers
words: 341
---
- [](/)
- API Reference
- Expenses
- Bookkeeping Submissions
- bookkeepingSubmissions.list

bookkeepingSubmissions.list

```
POST https://api.focus.teamleader.eu/bookkeepingSubmissions.list
```

List all bookkeeping submissions belonging to a specific financial document id and type

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- filter object
  
  subject objectrequired
  
  idstring
  
  UUID of the financial document
  
  typestring
  
  Possible values: \[incominginvoice, incomingcredit_note, receipt]

```json

{

  "filter": {

    "subject": {

      "id": "018d5965-19fb-701a-af11-e80451931551",

      "type": "incoming_invoice"

    }

  }

}
```

Responses​

- 200

OK

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
  
  UUID of the Bookkeeping Submission
  
  subject object
  
  idstring
  
  typestring
  
  Possible values: \[incomingInvoice, incomingCreditNote, receipt]
  
  email\_addressstring
  
  email address where the bookkeeping submission was sent
  
  statusstring
  
  the current status of the bookkeeping submission
  
  Possible values: \[sending, confirmed, failed]
  
  created\_atstring
  
  ]

```json

{

  "data": [

    {

      "id": "string",

      "subject": {

        "id": "string",

        "type": "incomingInvoice"

      },

      "email_address": "string",

      "status": "sending",

      "created_at": "string"

    }

  ]

}
```

```json

{

  "data": [

    {

      "id": "018d5965-19fb-701a-af11-e80451931551",

      "subject": {

        "id": "018d5965-19fb-701a-af11-e80451931551",

        "type": "incoming_invoice"

      },

      "email_address": "john.doe@example.com",

      "status": "sending",

      "created_at": "2025-02-26 15:56:40"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/bookkeepingSubmissions.list");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"filter\": {\n    \"subject\": {\n      \"id\": \"string\",\n      \"type\": \"incoming_invoice\"\n    }\n  }\n}", null, "application/json");
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

Body

- Example (from schema)
- Example

```json
{
  "filter": {
    "subject": {
      "id": "string",
      "type": "incoming_invoice"
    }
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Bookkeeping Submissions

Next  
\
Incoming Credit Notes
