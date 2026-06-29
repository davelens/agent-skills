---
url: https://developer.focus.teamleader.eu/docs/api/nextgen-projects-tasks-update
title: tasks.update | Teamleader Developers
words: 599
---
- [](/)
- API Reference
- New Projects
- Tasks
- tasks.update

tasks.update

```
POST https://api.focus.teamleader.eu/projects-v2/tasks.update
```

Update a task. All attributes except for id are optional. Providing null will clear that value from the project (for properties that are nullable).

Request​

- application/json

<!--THE END-->

- Body
- Example

Bodyrequired

- idstringrequired
  
  Example: ff19a113-50ba-4afc-9fff-2e5c5c5a5485
  
  work\type\idstringnullable
  
  Cannot be null if billingmethod is worktype_rate.
  
  Example: 0f517e20-2e76-4684-8d6c-3334f6d7148c
  
  task\type\idstringnullable
  
  DEPRECATED - Use worktypeid instead.
  
  Example: 0f517e20-2e76-4684-8d6c-3334f6d7148c
  
  statusstring
  
  Possible values: \[todo, inprogress, on_hold, done]
  
  Example: on_hold
  
  titlestring
  
  Example: Write API documentation
  
  descriptionstringnullable
  
  Example: But nothing is any good without you cause baby you are my centerpiece
  
  billing\_methodstring
  
  Possible values: \[userrate, worktyperate, customrate, fixedprice, parentfixedprice, nonbillable]
  
  Example: user_rate
  
  fixed\_price objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  external\_budget objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  internal\_budget objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  custom\_rate objectnullable
  
  amountnumberrequired
  
  Example: 123.3
  
  currencyCurrencyCoderequired
  
  Possible values: \[BAM, CAD, CHF, CLP, CNY, COP, CZK, DKK, EUR, GBP, INR, ISK, JPY, MAD, MXN, NOK, PEN, PLN, RON, SEK, TRY, USD, ZAR]
  
  start\_datestringnullable
  
  Example: 2023-01-18
  
  end\_datestringnullable
  
  Example: 2023-03-22
  
  time\_estimated objectnullable
  
  valuenumberrequired
  
  Example: 480
  
  unitstringrequired
  
  Possible values: \[hours, minutes, seconds]
  
  Example: minutes

```json

{

  "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485",

  "work_type_id": "0f517e20-2e76-4684-8d6c-3334f6d7148c",

  "task_type_id": "0f517e20-2e76-4684-8d6c-3334f6d7148c",

  "status": "on_hold",

  "title": "Write API documentation",

  "description": "But nothing is any good without you cause baby you are my centerpiece",

  "billing_method": "fixed_price",

  "fixed_price": {

    "amount": 123.3,

    "currency": "EUR"

  },

  "external_budget": {

    "amount": 123.3,

    "currency": "EUR"

  },

  "internal_budget": {

    "amount": 123.3,

    "currency": "EUR"

  },

  "custom_rate": {

    "amount": 123.3,

    "currency": "EUR"

  },

  "start_date": "2023-01-18",

  "end_date": "2023-03-22",

  "time_estimated": {

    "value": 480,

    "unit": "minutes"

  }

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
var request = new HttpRequestMessage(HttpMethod.Post, "https://api.focus.teamleader.eu/projects-v2/tasks.update");
request.Headers.Add("Authorization", "Bearer <token>");
var content = new StringContent("{\n  \"id\": \"ff19a113-50ba-4afc-9fff-2e5c5c5a5485\",\n  \"work_type_id\": \"0f517e20-2e76-4684-8d6c-3334f6d7148c\",\n  \"task_type_id\": \"0f517e20-2e76-4684-8d6c-3334f6d7148c\",\n  \"status\": \"on_hold\",\n  \"title\": \"Write API documentation\",\n  \"description\": \"But nothing is any good without you cause baby you are my centerpiece\",\n  \"billing_method\": \"fixed_price\",\n  \"fixed_price\": {\n    \"amount\": 123.3,\n    \"currency\": \"EUR\"\n  },\n  \"external_budget\": {\n    \"amount\": 123.3,\n    \"currency\": \"EUR\"\n  },\n  \"internal_budget\": {\n    \"amount\": 123.3,\n    \"currency\": \"EUR\"\n  },\n  \"custom_rate\": {\n    \"amount\": 123.3,\n    \"currency\": \"EUR\"\n  },\n  \"start_date\": \"2023-01-18\",\n  \"end_date\": \"2023-03-22\",\n  \"time_estimated\": {\n    \"value\": 480,\n    \"unit\": \"minutes\"\n  }\n}", null, "application/json");
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
  "id": "ff19a113-50ba-4afc-9fff-2e5c5c5a5485",
  "work_type_id": "0f517e20-2e76-4684-8d6c-3334f6d7148c",
  "task_type_id": "0f517e20-2e76-4684-8d6c-3334f6d7148c",
  "status": "on_hold",
  "title": "Write API documentation",
  "description": "But nothing is any good without you cause baby you are my centerpiece",
  "billing_method": "fixed_price",
  "fixed_price": {
    "amount": 123.3,
    "currency": "EUR"
  },
  "external_budget": {
    "amount": 123.3,
    "currency": "EUR"
  },
  "internal_budget": {
    "amount": 123.3,
    "currency": "EUR"
  },
  "custom_rate": {
    "amount": 123.3,
    "currency": "EUR"
  },
  "start_date": "2023-01-18",
  "end_date": "2023-03-22",
  "time_estimated": {
    "value": 480,
    "unit": "minutes"
  }
}
```

Send API Request

ResponseClear

Click the Send API Request button above and see the response here!

Previous  
\
tasks.create

Next  
\
tasks.duplicate
