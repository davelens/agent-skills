---
url: https://developer.focus.teamleader.eu/docs/api/products-delete
title: products.delete | Teamleader Developers
words: 183
---
- [](/)
- API Reference
- Products
- Products
- products.delete

products.delete

```
POST https://api.focus.teamleader.eu/products.delete
```

Delete a product.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 71e91f91-b222-033f-8c7e-59bcc1521e3d

```json

{

  "id": "71e91f91-b222-033f-8c7e-59bcc1521e3d"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/products.delete");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"71e91f91-b222-033f-8c7e-59bcc1521e3d\"\n}", null, "application/json");
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
  "id": "71e91f91-b222-033f-8c7e-59bcc1521e3d"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
products.update

Next  
\
Units of Measure
