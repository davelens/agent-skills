---
url: https://developer.focus.teamleader.eu/docs/api/incoming-credit-notes-add
title: incomingCreditNotes.add | Teamleader Developers
words: 387
---
- [](/)
- API Reference
- Expenses
- Incoming Credit Notes
- incomingCreditNotes.add

incomingCreditNotes.add

```
POST https://api.focus.teamleader.eu/incomingCreditNotes.add
```

Adds an incoming credit note.

Request​

- application/json

<!--THE END-->

- Body
- Example

Body

- titlestringrequired
  
  supplier\_idstringnullable
  
  document\_numberstringnullable
  
  invoice\_datestringnullable
  
  due\_datestringnullable
  
  currency objectrequired
  
  codeCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  Example: EUR
  
  total object
  
  tax\_exclusive objectnullable
  
  amountnumberrequired
  
  tax\_inclusive objectnullable
  
  amountnumberrequired
  
  company\entity\idstring
  
  Default company entity will be used if not provided
  
  file\_idstringnullable
  
  payment\_referencestringnullable
  
  iban\_numberstringnullable

```json

{

  "title": "Incoming credit note",

  "supplier_id": "ac4a3bc5-b11f-0eb6-8c20-0f0d697f8c2a",

  "document_number": "DOC-2032039",

  "invoice_date": "2024-05-11",

  "due_date": "2024-06-11",

  "currency": {

    "code": "EUR"

  },

  "total": {

    "tax_exclusive": {

      "amount": 100

    },

    "tax_inclusive": {

      "amount": 100

    }

  },

  "company_entity_id": "018fcef1-4f96-7349-9f57-1c7857023c42",

  "file_id": "5027619a-5e0a-01ce-a533-f80dfcc3f142",

  "payment_reference": "REF-3578296",

  "iban_number": "BE68539007547034"

}
```

Responses​

- 201

Created

Response Headers

<!--THE END-->

- application/json

<!--THE END-->

- Schema
- Example (auto)
- Example

Schema

- data object
  
  typestring
  
  idstring

```json

{

  "data": {

    "type": "string",

    "id": "string"

  }

}
```

```json

{

  "data": {

    "type": "incomingCreditNote",

    "id": "018d5965-19fb-701a-af11-e80451931551"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/incomingCreditNotes.add");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"title\": \"string\",\n  \"supplier_id\": \"string\",\n  \"document_number\": \"string\",\n  \"invoice_date\": \"string\",\n  \"due_date\": \"string\",\n  \"currency\": {\n    \"code\": \"EUR\"\n  },\n  \"total\": {\n    \"tax_exclusive\": {\n      \"amount\": 0\n    },\n    \"tax_inclusive\": {\n      \"amount\": 0\n    }\n  },\n  \"company_entity_id\": \"string\",\n  \"file_id\": \"string\",\n  \"payment_reference\": \"string\",\n  \"iban_number\": \"string\"\n}", null, "application/json");
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
  "title": "string",
  "supplier_id": "string",
  "document_number": "string",
  "invoice_date": "string",
  "due_date": "string",
  "currency": {
    "code": "EUR"
  },
  "total": {
    "tax_exclusive": {
      "amount": 0
    },
    "tax_inclusive": {
      "amount": 0
    }
  },
  "company_entity_id": "string",
  "file_id": "string",
  "payment_reference": "string",
  "iban_number": "string"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
Incoming Credit Notes

Next  
\
incomingCreditNotes.approve
