---
url: https://developer.focus.teamleader.eu/docs/api/receipts-update-payment
title: receipts.updatePayment | Teamleader Developers
words: 274
---
- [](/)
- API Reference
- Expenses
- Receipts
- receipts.updatePayment

receipts.updatePayment

```
POST https://api.focus.teamleader.eu/receipts.updatePayment
```

Update a payment for a(n incoming) receipt.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  payment\_idstringrequired
  
  payment object
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  paid\_atdate-time
  
  payment\method\idstringnullable
  
  remarkstringnullable

```json

{

  "id": "018d5965-19fb-701a-af11-e80451931551",

  "payment_id": "aa7e7d42-a951-4cde-85b8-ae447a2f1ac4",

  "payment": {

    "amount": 123.3,

    "currency": "EUR"

  },

  "paid_at": "2016-03-03T16:44:33+00:00",

  "payment_method_id": "bb9589ec-6e08-0d5f-9b23-7be9b9c3ea2d",

  "remark": "This is an updated remark"

}
```

Responses​

- 204

No Content

- application/json

No schema

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/receipts.updatePayment");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"string\",\n  \"payment_id\": \"string\",\n  \"payment\": {\n    \"amount\": 123.3,\n    \"currency\": \"BAM\"\n  },\n  \"paid_at\": \"2024-07-29T15:51:28.071Z\",\n  \"payment_method_id\": \"string\",\n  \"remark\": \"string\"\n}", null, "application/json");
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
  "id": "string",
  "payment_id": "string",
  "payment": {
    "amount": 123.3,
    "currency": "BAM"
  },
  "paid_at": "2024-07-29T15:51:28.071Z",
  "payment_method_id": "string",
  "remark": "string"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
receipts.update

Next  
\
Product Categories
