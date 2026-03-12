Zavřít menu

[Fakturoid web →](/)

*   [Introduction](/api/v3)
*   [Changelog](/api/v3/changelog)
*   [Authorization](/api/v3/authorization)
*   [Users](/api/v3/users)
*   [Account](/api/v3/account)
*   [Bank Accounts](/api/v3/bank-accounts)
*   [Number Formats](/api/v3/number-formats)
*   [Subjects](/api/v3/subjects)
*   [Invoices](/api/v3/invoices)
*   [Invoice Payments](/api/v3/invoice-payments)
*   [Invoice Messages](/api/v3/invoice-messages)
*   [Expenses](/api/v3/expenses)
*   [Expense Payments](/api/v3/expense-payments)
*   [Inbox Files](/api/v3/inbox-files)
*   [Inventory Items](/api/v3/inventory-items)
*   [Inventory Moves](/api/v3/inventory-moves)
*   [Generators](/api/v3/generators)
*   [Recurring Generators](/api/v3/recurring-generators)
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
    *   [Attributes](#attributes)
    *   [Todos Index](#todos-index)
    *   [Todo Toggle Completion](#todo-toggle-completion)
*   [Webhooks](/api/v3/webhooks)

# Todos

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Unique identifier in Fakturoid

Read-only attribute

`name`

`String`

Todo name

Read-only attribute

`created_at`

`DateTime`

Date and time of todo creation

Read-only attribute

`completed_at`

`DateTime`

Date and time of todo completion

Read-only attribute

`text`

`String`

Todo text

Read-only attribute

`related_objects`

[`Object`](/api/v3/todos#related-objects)

Attributes of objects related to the todo

Read-only attribute

`params`

`Object`

Parameters with details about todo, specific for each type of todo

### [Related objects](#related-objects)

Attribute

Type

Description

Read-only attribute

`type`

`String`

Type of the object related to the todo  
Values:`Invoice`, `Subject`, `Expense`, `Generator`, `RecurringGenerator`, `ExpenseGenerator`

Read-only attribute

`id`

`Integer`

ID of the object related to todo

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Todos Index](#todos-index)

If query parameter `since` is not valid date time format ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)) the server will respond with `400 Bad Request`.

`GET` `/accounts/{slug}/todos.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/todos.json` Copy

#### Headers

Name

Value

`User-Agent`

`YourApp (yourname@example.com)`

#### URL Parameters

Name

Description

Type

Example

`slug`

Account name

`String`

`applecorp`

#### Query Parameters

Name

Description

Type

Example

`page`

Page number (40 records per page)

`Integer`

`2`

`since`

Todo created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "id": 36,
    "name": "inbox_files_too_many_attachments",
    "created_at": "2023-09-05T13:26:21.662+02:00",
    "completed_at": null,
    "text": "Počet příloh v emailu překračuje zbývající kapacitu krabice",
    "related_objects": [],
    "params": {
      "email_from": "borivoj.hejsek@example.com",
      "count": "3",
      "attachments": "expense-145-4.pdf, photo-145-4.jpg, image-687-5455668-67.gif"
    }
  },
  {
    "id": 35,
    "name": "account_exceeded_vat_turnover_limit",
    "created_at": "2023-09-05T13:26:21.660+02:00",
    "completed_at": null,
    "text": "Zdá se, že jste překročili obrat pro povinnou registrace k DPH.",
    "related_objects": [
      {
        "type": "Subject",
        "id": 32
      }
    ],
    "params": {
      "register_until_date": "2017-10-15",
      "vat_payer_from_date": "2017-11-01"
    }
  },
  {
    "id": 33,
    "name": "email_bounced",
    "created_at": "2023-09-05T13:26:21.654+02:00",
    "completed_at": null,
    "text": "Email na test@test.com se nepodařil doručit",
    "related_objects": [
      {
        "type": "Subject",
        "id": 32
      }
    ],
    "params": {
      "email": "test@test.com",
      "inactive": "true"
    }
  },
  {
    "id": 32,
    "name": "expense_payment_unpaired",
    "created_at": "2023-09-05T13:26:21.651+02:00",
    "completed_at": null,
    "text": "Nespárovaná odchozí platba - VS: 123456789, částka: € 123,00 ",
    "related_objects": [],
    "params": {
      "note": "",
      "amount": "123",
      "currency": "EUR",
      "bank_account_id": "21",
      "variable_symbol": "123456789",
      "bank_account_name": "Účet"
    }
  },
  …
]
```

## [Todo Toggle Completion](#todo-toggle-completion)

`POST` `/accounts/{slug}/todos/{id}/toggle_completion.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/todos/{id}/toggle_completion.json` Copy

#### Headers

Name

Value

`User-Agent`

`YourApp (yourname@example.com)`

#### URL Parameters

Name

Description

Type

Example

`slug`

Account name

`String`

`applecorp`

`id`

Todo ID

`Integer`

`32`

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 32,
  "name": "expense_payment_unpaired",
  "created_at": "2023-09-05T13:26:21.651+02:00",
  "completed_at": "2023-09-26T17:08:01.597+02:00",
  "text": "Nespárovaná odchozí platba - VS: 123456789, částka: € 123,00 ",
  "related_objects": [],
  "params": {
    "note": "",
    "amount": "123",
    "currency": "EUR",
    "bank_account_id": "21",
    "variable_symbol": "123456789",
    "bank_account_name": "Účet"
  }
}
```

* * *

1.  [API v3](/api/v3)→
2.  [Todos](/api/v3/todos)