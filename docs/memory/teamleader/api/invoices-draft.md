---
url: https://developer.focus.teamleader.eu/docs/api/invoices-draft
title: invoices.draft | Teamleader Developers
words: 850
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.draft

invoices.draft

```
POST https://api.focus.teamleader.eu/invoices.draft
```

Draft a new invoice.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Bodyrequired

- invoicee objectrequired
  
  customer objectrequired
  
  typestringrequired
  
  Possible values: \[contact, company]
  
  Example: contact
  
  idstringrequired
  
  Example: f29abf48-337d-44b4-aad4-585f5277a456
  
  for\attention\of object
  
  oneOf
  
  - By Name
  - By Contact Id
  
  namestringrequired
  
  Example: Finance Dept.
  
  department\_idstringrequired
  
  Example: cef01135-7e51-4f6f-a6eb-6e5e5a885ac7
  
  payment\_term objectrequired
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  currency object
  
  codeCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  exchange\_ratenumber
  
  Example: 1.1238
  
  project\_idstring
  
  Example: 624ca743-8998-4f8c-add1-c427bb022166
  
  purchase\order\numberstring
  
  Example: 000023
  
  grouped\_lines object\[]required
  
  Array [
  
  section object
  
  titlestringrequired
  
  line\_items object\[]required
  
  Array [
  
  quantitynumberrequired
  
  Example: 3
  
  descriptionstringrequired
  
  Example: An awesome product
  
  extended\_descriptionstringnullable
  
  Uses Markdown formatting
  
  Example: Some more information about this awesome product
  
  unit\of\measure\_idstringnullable
  
  Example: f79d3e04-b8dc-0637-8f18-ca7c8fc63b71
  
  unit\_price object
  
  amountnumberrequired
  
  Example: 123.3
  
  taxstringrequired
  
  Possible values: \[excluding]
  
  Example: excluding
  
  tax\rate\idstringrequired
  
  Example: c0c03f1e-77e3-402c-a713-30ea1c585823
  
  discount object
  
  valuenumberrequired
  
  Example: 10
  
  typestringrequired
  
  Values between 0 and 100
  
  Possible values: \[percentage]
  
  Example: percentage
  
  product\_idstring
  
  Example: d905ff57-e866-0f59-9d1e-1fd4538bfae1
  
  withholding\tax\rate\_idstring
  
  Example: c0c03f1e-77e3-402c-a713-30ea1c585824
  
  product\category\idstring
  
  Example: e2314517-3cab-4aa9-8471-450e73449041
  
  ]
  
  ]
  
  invoice\_datestring
  
  Example: 2016-02-04
  
  discounts object\[]
  
  Array [
  
  typestring
  
  Values between 0 and 100
  
  Possible values: \[percentage]
  
  Example: percentage
  
  valuenumber
  
  Example: 15.5
  
  descriptionstring
  
  Example: winter promotion
  
  ]
  
  notestring
  
  This is the remarks field
  
  Example: Invoice comments
  
  expected\payment\method objectnullable
  
  oneOf
  
  - With method & optional reference
  - With method only
  - SEPA direct debit
  
  methodstring
  
  Possible values: \[directdebit, creditcard]
  
  Example: credit_card
  
  referencestringnullable
  
  Example: AB1234
  
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
  
  document\template\idstring
  
  Example: 179e1564-493b-4305-8c54-a34fc80920fc
  
  delivery\_datestringnullable
  
  Example: 2025-12-08

```json

{

  "invoicee": {

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "for_attention_of": {

      "name": "Finance Dept."

    }

  },

  "department_id": "cef01135-7e51-4f6f-a6eb-6e5e5a885ac7",

  "payment_term": {

    "type": "cash",

    "days": 0

  },

  "currency": {

    "code": "BAM",

    "exchange_rate": 1.1238

  },

  "project_id": "624ca743-8998-4f8c-add1-c427bb022166",

  "purchase_order_number": "000023",

  "grouped_lines": [

    {

      "section": {

        "title": "string"

      },

      "line_items": [

        {

          "quantity": 3,

          "description": "An awesome product",

          "extended_description": "Some more information about this awesome product",

          "unit_of_measure_id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71",

          "unit_price": {

            "amount": 123.3,

            "tax": "excluding"

          },

          "tax_rate_id": "c0c03f1e-77e3-402c-a713-30ea1c585823",

          "discount": {

            "value": 10,

            "type": "percentage"

          },

          "product_id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",

          "withholding_tax_rate_id": "c0c03f1e-77e3-402c-a713-30ea1c585824",

          "product_category_id": "e2314517-3cab-4aa9-8471-450e73449041"

        }

      ]

    }

  ],

  "invoice_date": "2016-02-04",

  "discounts": [

    {

      "type": "percentage",

      "value": 15.5,

      "description": "winter promotion"

    }

  ],

  "note": "Invoice comments",

  "expected_payment_method": {

    "method": "credit_card",

    "reference": "AB1234"

  },

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ],

  "document_template_id": "179e1564-493b-4305-8c54-a34fc80920fc",

  "delivery_date": "2025-12-08"

}
```

Responses​

- 201

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
  
  Example: eab232c6-49b2-4b7e-a977-5e1148dad471
  
  typestring

```json

{

  "data": {

    "type": "invoice",

    "id": "e4bf74ca-e900-471f-84b1-276e5d3afae4"

  }

}
```

```json

{

  "data": {

    "type": "invoice",

    "id": "e4bf74ca-e900-471f-84b1-276e5d3afae4"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.draft");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"invoicee\": {\n    \"customer\": {\n      \"type\": \"contact\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    },\n    \"for_attention_of\": {\n      \"name\": \"Finance Dept.\"\n    }\n  },\n  \"department_id\": \"cef01135-7e51-4f6f-a6eb-6e5e5a885ac7\",\n  \"payment_term\": {\n    \"type\": \"cash\",\n    \"days\": 0\n  },\n  \"currency\": {\n    \"code\": \"BAM\",\n    \"exchange_rate\": 1.1238\n  },\n  \"project_id\": \"624ca743-8998-4f8c-add1-c427bb022166\",\n  \"purchase_order_number\": \"000023\",\n  \"grouped_lines\": [\n    {\n      \"section\": {\n        \"title\": \"string\"\n      },\n      \"line_items\": [\n        {\n          \"quantity\": 3,\n          \"description\": \"An awesome product\",\n          \"extended_description\": \"Some more information about this awesome product\",\n          \"unit_of_measure_id\": \"f79d3e04-b8dc-0637-8f18-ca7c8fc63b71\",\n          \"unit_price\": {\n            \"amount\": 123.3,\n            \"tax\": \"excluding\"\n          },\n          \"tax_rate_id\": \"c0c03f1e-77e3-402c-a713-30ea1c585823\",\n          \"discount\": {\n            \"value\": 10,\n            \"type\": \"percentage\"\n          },\n          \"product_id\": \"d905ff57-e866-0f59-9d1e-1fd4538bfae1\",\n          \"withholding_tax_rate_id\": \"c0c03f1e-77e3-402c-a713-30ea1c585824\",\n          \"product_category_id\": \"e2314517-3cab-4aa9-8471-450e73449041\"\n        }\n      ]\n    }\n  ],\n  \"invoice_date\": \"2016-02-04\",\n  \"discounts\": [\n    {\n      \"type\": \"percentage\",\n      \"value\": 15.5,\n      \"description\": \"winter promotion\"\n    }\n  ],\n  \"note\": \"Invoice comments\",\n  \"expected_payment_method\": {\n    \"method\": \"credit_card\",\n    \"reference\": \"AB1234\"\n  },\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ],\n  \"document_template_id\": \"179e1564-493b-4305-8c54-a34fc80920fc\",\n  \"delivery_date\": \"2025-12-08\"\n}", null, "application/json");
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

```json
{
  "invoicee": {
    "customer": {
      "type": "contact",
      "id": "f29abf48-337d-44b4-aad4-585f5277a456"
    },
    "for_attention_of": {
      "name": "Finance Dept."
    }
  },
  "department_id": "cef01135-7e51-4f6f-a6eb-6e5e5a885ac7",
  "payment_term": {
    "type": "cash",
    "days": 0
  },
  "currency": {
    "code": "BAM",
    "exchange_rate": 1.1238
  },
  "project_id": "624ca743-8998-4f8c-add1-c427bb022166",
  "purchase_order_number": "000023",
  "grouped_lines": [
    {
      "section": {
        "title": "string"
      },
      "line_items": [
        {
          "quantity": 3,
          "description": "An awesome product",
          "extended_description": "Some more information about this awesome product",
          "unit_of_measure_id": "f79d3e04-b8dc-0637-8f18-ca7c8fc63b71",
          "unit_price": {
            "amount": 123.3,
            "tax": "excluding"
          },
          "tax_rate_id": "c0c03f1e-77e3-402c-a713-30ea1c585823",
          "discount": {
            "value": 10,
            "type": "percentage"
          },
          "product_id": "d905ff57-e866-0f59-9d1e-1fd4538bfae1",
          "withholding_tax_rate_id": "c0c03f1e-77e3-402c-a713-30ea1c585824",
          "product_category_id": "e2314517-3cab-4aa9-8471-450e73449041"
        }
      ]
    }
  ],
  "invoice_date": "2016-02-04",
  "discounts": [
    {
      "type": "percentage",
      "value": 15.5,
      "description": "winter promotion"
    }
  ],
  "note": "Invoice comments",
  "expected_payment_method": {
    "method": "credit_card",
    "reference": "AB1234"
  },
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ],
  "document_template_id": "179e1564-493b-4305-8c54-a34fc80920fc",
  "delivery_date": "2025-12-08"
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
invoices.download

Next  
\
invoices.update
