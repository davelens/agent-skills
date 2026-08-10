---
url: https://developer.focus.teamleader.eu/docs/api/invoices-update-booked
title: invoices.updateBooked | Teamleader Developers
words: 685
---
- [](/)
- API Reference
- Invoicing
- Invoices
- invoices.updateBooked

invoices.updateBooked

```
POST https://api.focus.teamleader.eu/invoices.updateBooked
```

Update a booked invoice. Only available when editing booked invoices is allowed through the settings.

Request​

- application/json

<!--THE END-->

- Body
- Example (auto)

Bodyrequired

- idstringrequired
  
  Example: b7023c11-455e-4fa5-bb96-87f37dbc7d07
  
  invoicee object
  
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
  
  payment\_term objectnullable
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  project\_idstring
  
  Example: 624ca743-8998-4f8c-add1-c427bb022166
  
  grouped\_lines object\[]
  
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
  
  notestringnullable
  
  Example: Some comments about the invoice
  
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

```json

{

  "id": "b7023c11-455e-4fa5-bb96-87f37dbc7d07",

  "invoicee": {

    "customer": {

      "type": "contact",

      "id": "f29abf48-337d-44b4-aad4-585f5277a456"

    },

    "for_attention_of": {

      "name": "Finance Dept."

    }

  },

  "payment_term": {

    "type": "cash",

    "days": 0

  },

  "project_id": "624ca743-8998-4f8c-add1-c427bb022166",

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

  "note": "Some comments about the invoice",

  "expected_payment_method": {

    "method": "credit_card",

    "reference": "AB1234"

  },

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/invoices.updateBooked");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"b7023c11-455e-4fa5-bb96-87f37dbc7d07\",\n  \"invoicee\": {\n    \"customer\": {\n      \"type\": \"contact\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    },\n    \"for_attention_of\": {\n      \"name\": \"Finance Dept.\"\n    }\n  },\n  \"payment_term\": {\n    \"type\": \"cash\",\n    \"days\": 0\n  },\n  \"project_id\": \"624ca743-8998-4f8c-add1-c427bb022166\",\n  \"grouped_lines\": [\n    {\n      \"section\": {\n        \"title\": \"string\"\n      },\n      \"line_items\": [\n        {\n          \"quantity\": 3,\n          \"description\": \"An awesome product\",\n          \"extended_description\": \"Some more information about this awesome product\",\n          \"unit_of_measure_id\": \"f79d3e04-b8dc-0637-8f18-ca7c8fc63b71\",\n          \"unit_price\": {\n            \"amount\": 123.3,\n            \"tax\": \"excluding\"\n          },\n          \"tax_rate_id\": \"c0c03f1e-77e3-402c-a713-30ea1c585823\",\n          \"discount\": {\n            \"value\": 10,\n            \"type\": \"percentage\"\n          },\n          \"product_id\": \"d905ff57-e866-0f59-9d1e-1fd4538bfae1\",\n          \"withholding_tax_rate_id\": \"c0c03f1e-77e3-402c-a713-30ea1c585824\",\n          \"product_category_id\": \"e2314517-3cab-4aa9-8471-450e73449041\"\n        }\n      ]\n    }\n  ],\n  \"invoice_date\": \"2016-02-04\",\n  \"note\": \"Some comments about the invoice\",\n  \"expected_payment_method\": {\n    \"method\": \"credit_card\",\n    \"reference\": \"AB1234\"\n  },\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ]\n}", null, "application/json");
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
  "id": "b7023c11-455e-4fa5-bb96-87f37dbc7d07",
  "invoicee": {
    "customer": {
      "type": "contact",
      "id": "f29abf48-337d-44b4-aad4-585f5277a456"
    },
    "for_attention_of": {
      "name": "Finance Dept."
    }
  },
  "payment_term": {
    "type": "cash",
    "days": 0
  },
  "project_id": "624ca743-8998-4f8c-add1-c427bb022166",
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
  "note": "Some comments about the invoice",
  "expected_payment_method": {
    "method": "credit_card",
    "reference": "AB1234"
  },
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
invoices.update

Next  
\
invoices.copy
