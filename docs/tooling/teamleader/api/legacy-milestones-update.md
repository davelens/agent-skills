---
url: https://developer.focus.teamleader.eu/docs/api/legacy-milestones-update
title: milestones.update | Teamleader Developers
words: 296
---
- [](/)
- API Reference
- Legacy Projects
- Legacy Milestones
- milestones.update

milestones.update

```
POST https://api.focus.teamleader.eu/milestones.update
```

Update a milestone.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 67e80ad8-d14f-4510-a2bd-a4c6aa578c37
  
  starts\_onstringnullable
  
  Example: 2017-01-01
  
  due\_onstring
  
  Example: 2018-01-01
  
  namestring
  
  Example: Initial setup
  
  descriptionstring
  
  responsible\user\idstring
  
  Example: e1240972-6cfc-4549-b49c-edda7568cc48
  
  depends\_onstringnullable
  
  Example: 0488d792-ba9b-059f-bd57-bea75d3f4f4e
  
  propagate\date\changesboolean
  
  Example: false
  
  custom\_fields object\[]
  
  Array [
  
  idstring
  
  Example: bf6765de-56eb-40ec-ad14-9096c5dc5fe1
  
  value object
  
  oneOf
  
  - string
  - number
  - multiple selection
  - boolean
  - object
  
  string
  
  For strings
  
  Example: 092980616
  
  ]

```json

{

  "id": "67e80ad8-d14f-4510-a2bd-a4c6aa578c37",

  "starts_on": "2017-01-01",

  "due_on": "2018-01-01",

  "name": "Initial setup",

  "responsible_user_id": "e1240972-6cfc-4549-b49c-edda7568cc48",

  "depends_on": "0488d792-ba9b-059f-bd57-bea75d3f4f4e",

  "propagate_date_changes": false,

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ]

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/milestones.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"67e80ad8-d14f-4510-a2bd-a4c6aa578c37\",\n  \"starts_on\": \"2017-01-01\",\n  \"due_on\": \"2018-01-01\",\n  \"name\": \"Initial setup\",\n  \"responsible_user_id\": \"e1240972-6cfc-4549-b49c-edda7568cc48\",\n  \"depends_on\": \"0488d792-ba9b-059f-bd57-bea75d3f4f4e\",\n  \"propagate_date_changes\": false,\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ]\n}", null, "application/json");
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
  "id": "67e80ad8-d14f-4510-a2bd-a4c6aa578c37",
  "starts_on": "2017-01-01",
  "due_on": "2018-01-01",
  "name": "Initial setup",
  "responsible_user_id": "e1240972-6cfc-4549-b49c-edda7568cc48",
  "depends_on": "0488d792-ba9b-059f-bd57-bea75d3f4f4e",
  "propagate_date_changes": false,
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ]
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
milestones.create

Next  
\
milestones.delete
