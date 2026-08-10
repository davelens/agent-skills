---
url: https://developer.focus.teamleader.eu/docs/api/invoices-register-payment
title: invoices.registerPayment | Teamleader Developers
words: 254
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.registerPayment

invoices.registerPayment

```
POST https://api.focus.teamleader.eu/invoices.registerPayment
```

Register a payment for an invoice.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: 7abb325c-e063-42a4-8fb4-1b730759645a
  
  payment objectrequired
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  paid\_atstringrequired
  
  Example: 2016-03-03T16:44:33+00:00
  
  payment\method\idstring
  
  Example: bb9589ec-6e08-0d5f-9b23-7be9b9c3ea2d

```json

{

  "id": "7abb325c-e063-42a4-8fb4-1b730759645a",

  "payment": {

    "amount": 123.3,

    "currency": "EUR"

  },

  "paid_at": "2016-03-03T16:44:33+00:00",

  "payment_method_id": "bb9589ec-6e08-0d5f-9b23-7be9b9c3ea2d"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.registerPayment");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"7abb325c-e063-42a4-8fb4-1b730759645a\",\n  \"payment\": {\n    \"amount\": 123.3,\n    \"currency\": \"EUR\"\n  },\n  \"paid_at\": \"2016-03-03T16:44:33+00:00\",\n  \"payment_method_id\": \"bb9589ec-6e08-0d5f-9b23-7be9b9c3ea2d\"\n}", null, "application/json");
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
  "id": "7abb325c-e063-42a4-8fb4-1b730759645a",
  "payment": {
    "amount": 123.3,
    "currency": "EUR"
  },
  "paid_at": "2016-03-03T16:44:33+00:00",
  "payment_method_id": "bb9589ec-6e08-0d5f-9b23-7be9b9c3ea2d"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
invoices.delete

Next  
\
invoices.removePayments
