---
url: https://developer.focus.teamleader.eu/docs/api/files-upload
title: files.upload | Teamleader Developers
words: 430
---
- [](/)
- API Reference
- Files
- Files
- files.upload

files.upload

```
POST https://api.focus.teamleader.eu/files.upload
```

Request the upload link for a file.

The following remarks apply to temporary files:

- they exist for a maximum of 24 hours if not linked to an entity
- do not show up in any file overview
- are not included in external syncs

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- namestringrequired
  
  Name under which the file will be stored. This name should contain the same extension as the file that the user wants to upload.
  
  Example: Important meeting note from August 2022.docx
  
  subject objectrequired
  
  idstringrequired
  
  Not required if type is temporary
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestringrequired
  
  Possible values: \[company, contact, deal, invoice, creditNote, nextgenProject, ticket, temporary]
  
  Example: company
  
  folderstring
  
  Name of a folder under which the file will be stored. Defaults to General in account's language if not passed.
  
  Example: My monthly notes

```json

{

  "name": "Important meeting note from August 2022.docx",

  "subject": {

    "type": "company",

    "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"

  },

  "folder": "My monthly notes"

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
  
  The temporary API endpoint (URL) that should be used for sending a POST request to with the binary file contents (not form-data) to complete the file upload.
  
  Example: https://files.teamleader.eu/upload/66726166a
  
  expires\_atstring
  
  Expiration time of the temporary API endpoint.
  
  Example: 2019-10-30T11:44:33+00:00

```json

{

  "data": {

    "location": "https://files.teamleader.eu/upload/66726166a",

    "expires_at": "2019-10-30T11:44:33+00:00"

  }

}
```

```json

{

  "data": {

    "location": "https://files.teamleader.eu/upload/66726166a",

    "expires_at": "2019-10-30T11:44:33+00:00"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/files.upload");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"name\": \"Important meeting note from August 2022.docx\",\n  \"subject\": {\n    \"type\": \"company\",\n    \"id\": \"2659dc4d-444b-4ced-b51c-b87591f604d7\"\n  },\n  \"folder\": \"My monthly notes\"\n}", null, "application/json");
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
  "name": "Important meeting note from August 2022.docx",
  "subject": {
    "type": "company",
    "id": "2659dc4d-444b-4ced-b51c-b87591f604d7"
  },
  "folder": "My monthly notes"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
files.download

Next  
\
files.delete
