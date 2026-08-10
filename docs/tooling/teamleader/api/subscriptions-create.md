---
url: https://developer.focus.teamleader.eu/docs/api/subscriptions-create
title: subscriptions.create | Teamleader Developers
words: 863
---
- [](/)
- API Reference
- Invoicing
- Subscriptions
- subscriptions.create

subscriptions.create

```
POST https://api.focus.teamleader.eu/subscriptions.create
```

Create a new subscription.

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
  
  Example: 6a6343fc-fdd8-4bc0-aa69-3a004c710e87
  
  starts\_onstringrequired
  
  Example: 2022-04-26
  
  billing\_cycle objectrequired
  
  periodicity objectrequired
  
  oneOf
  
  - By Week
  - By Month
  - By Year
  
  unitstringrequired
  
  Possible values: \[week]
  
  Example: week
  
  periodnumberrequired
  
  Possible values: \[1, 2]
  
  Example: 2
  
  days\in\advanceintegerrequired
  
  Possible values: \[0, 7, 14, 21, 28]
  
  Example: 7
  
  titlestringrequired
  
  Example: Subscription for cookies
  
  grouped\_lines object\[]required
  
  Array [
  
  section object
  
  titlestring
  
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
  
  unit\_price objectrequired
  
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
  
  ends\_onstringnullable
  
  Example: 2022-05-26
  
  deal\_idstring
  
  Example: cef01135-7e51-4f6f-a6eb-6e5e5a885ac8
  
  project\_idstring
  
  Example: ebafa4c5-fa8a-4409-92e5-1b192243372f
  
  notestring
  
  Example: Subscription comments
  
  payment\_term objectrequired
  
  typestring
  
  Possible values: \[cash, endofmonth, afterinvoicedate]
  
  daysnumber
  
  Modifier "X" for the above statements. Not required when type is 'cash'.
  
  invoice\_generation objectrequired
  
  oneOf
  
  - With action draft
  - With action book
  - With action & sending\_methods
  
  actionstringrequired
  
  Example: draft
  
  payment\_methodstring
  
  Possible values: \[direct_debit]
  
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
  
  purchase\order\numberstringnullable
  
  Example: 000023
  
  delivery\_information objectnullable
  
  typestringrequired
  
  Possible values: \[setdaysafterinvoicedate]
  
  number\of\days\after\invoice\_dateintegerrequired
  
  Possible values: >= 0
  
  Example: 5

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

  "department_id": "6a6343fc-fdd8-4bc0-aa69-3a004c710e87",

  "starts_on": "2022-04-26",

  "billing_cycle": {

    "periodicity": {

      "unit": "week",

      "period": 2

    },

    "days_in_advance": 7

  },

  "title": "Subscription for cookies",

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

  "ends_on": "2022-05-26",

  "deal_id": "cef01135-7e51-4f6f-a6eb-6e5e5a885ac8",

  "project_id": "ebafa4c5-fa8a-4409-92e5-1b192243372f",

  "note": "Subscription comments",

  "payment_term": {

    "type": "cash",

    "days": 0

  },

  "invoice_generation": {

    "action": "draft",

    "payment_method": "direct_debit"

  },

  "custom_fields": [

    {

      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",

      "value": "092980616"

    }

  ],

  "document_template_id": "179e1564-493b-4305-8c54-a34fc80920fc",

  "purchase_order_number": "000023",

  "delivery_information": {

    "type": "set_days_after_invoice_date",

    "number_of_days_after_invoice_date": 5

  }

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

    "type": "subscription",

    "id": "e2314517-3cab-4aa9-8471-450e73449041"

  }

}
```

```json

{

  "data": {

    "type": "subscription",

    "id": "e2314517-3cab-4aa9-8471-450e73449041"

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/subscriptions.create");
request.Headers.Add("Accept", "application/json");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"invoicee\": {\n    \"customer\": {\n      \"type\": \"contact\",\n      \"id\": \"f29abf48-337d-44b4-aad4-585f5277a456\"\n    },\n    \"for_attention_of\": {\n      \"name\": \"Finance Dept.\"\n    }\n  },\n  \"department_id\": \"6a6343fc-fdd8-4bc0-aa69-3a004c710e87\",\n  \"starts_on\": \"2022-04-26\",\n  \"billing_cycle\": {\n    \"periodicity\": {\n      \"unit\": \"week\",\n      \"period\": 2\n    },\n    \"days_in_advance\": 7\n  },\n  \"title\": \"Subscription for cookies\",\n  \"grouped_lines\": [\n    {\n      \"section\": {\n        \"title\": \"string\"\n      },\n      \"line_items\": [\n        {\n          \"quantity\": 3,\n          \"description\": \"An awesome product\",\n          \"extended_description\": \"Some more information about this awesome product\",\n          \"unit_of_measure_id\": \"f79d3e04-b8dc-0637-8f18-ca7c8fc63b71\",\n          \"unit_price\": {\n            \"amount\": 123.3,\n            \"tax\": \"excluding\"\n          },\n          \"tax_rate_id\": \"c0c03f1e-77e3-402c-a713-30ea1c585823\",\n          \"discount\": {\n            \"value\": 10,\n            \"type\": \"percentage\"\n          },\n          \"product_id\": \"d905ff57-e866-0f59-9d1e-1fd4538bfae1\",\n          \"withholding_tax_rate_id\": \"c0c03f1e-77e3-402c-a713-30ea1c585824\",\n          \"product_category_id\": \"e2314517-3cab-4aa9-8471-450e73449041\"\n        }\n      ]\n    }\n  ],\n  \"ends_on\": \"2022-05-26\",\n  \"deal_id\": \"cef01135-7e51-4f6f-a6eb-6e5e5a885ac8\",\n  \"project_id\": \"ebafa4c5-fa8a-4409-92e5-1b192243372f\",\n  \"note\": \"Subscription comments\",\n  \"payment_term\": {\n    \"type\": \"cash\",\n    \"days\": 0\n  },\n  \"invoice_generation\": {\n    \"action\": \"draft\",\n    \"payment_method\": \"direct_debit\"\n  },\n  \"custom_fields\": [\n    {\n      \"id\": \"bf6765de-56eb-40ec-ad14-9096c5dc5fe1\",\n      \"value\": \"092980616\"\n    }\n  ],\n  \"document_template_id\": \"179e1564-493b-4305-8c54-a34fc80920fc\",\n  \"purchase_order_number\": \"000023\",\n  \"delivery_information\": {\n    \"type\": \"set_days_after_invoice_date\",\n    \"number_of_days_after_invoice_date\": 5\n  }\n}", null, "application/json");
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
  "department_id": "6a6343fc-fdd8-4bc0-aa69-3a004c710e87",
  "starts_on": "2022-04-26",
  "billing_cycle": {
    "periodicity": {
      "unit": "week",
      "period": 2
    },
    "days_in_advance": 7
  },
  "title": "Subscription for cookies",
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
  "ends_on": "2022-05-26",
  "deal_id": "cef01135-7e51-4f6f-a6eb-6e5e5a885ac8",
  "project_id": "ebafa4c5-fa8a-4409-92e5-1b192243372f",
  "note": "Subscription comments",
  "payment_term": {
    "type": "cash",
    "days": 0
  },
  "invoice_generation": {
    "action": "draft",
    "payment_method": "direct_debit"
  },
  "custom_fields": [
    {
      "id": "bf6765de-56eb-40ec-ad14-9096c5dc5fe1",
      "value": "092980616"
    }
  ],
  "document_template_id": "179e1564-493b-4305-8c54-a34fc80920fc",
  "purchase_order_number": "000023",
  "delivery_information": {
    "type": "set_days_after_invoice_date",
    "number_of_days_after_invoice_date": 5
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
subscriptions.info

Next  
\
subscriptions.update
