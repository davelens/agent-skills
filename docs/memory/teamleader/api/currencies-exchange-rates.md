---
url: https://developer.focus.teamleader.eu/docs/api/currencies-exchange-rates
title: currencies.exchangeRates | Teamleader Developers
words: 317
---
- [](/)
- API Reference
- General
- Currencies
- currencies.exchangeRates

currencies.exchangeRates

```
POST https://api.focus.teamleader.eu/currencies.exchangeRates
```

Get a list of exchange rates for a provided currency.

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- baseCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]

```json

{

  "base": "EUR"

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
  
  codeCurrencyCode
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  symbolstring
  
  Example: $
  
  namestring
  
  Example: US Dollar
  
  exchange\_ratenumber
  
  The exchange rate from the provided base currency to the listed currency
  
  Example: 1.1238
  
  ]

```json

{

  "data": [

    {

      "code": "USD",

      "symbol": "$",

      "name": "US Dollar",

      "exchange_rate": 1.1238

    }

  ]

}
```

```json

{

  "data": [

    {

      "code": "USD",

      "symbol": "$",

      "name": "US Dollar",

      "exchange_rate": 1.1238

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/currencies.exchangeRates");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"base\": \"EUR\"\n}", null, "application/json");
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
  "base": "EUR"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Currencies

Next  
\
Notes
