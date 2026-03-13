Zavřít menu

[Fakturoid web →](/)

*   [Introduction](https://fakturoid.cz/api/v3)
*   [Changelog](https://fakturoid.cz/api/v3/changelog)
*   [Authorization](https://fakturoid.cz/api/v3/authorization)
*   [Users](https://fakturoid.cz/api/v3/users)
*   [Account](https://fakturoid.cz/api/v3/account)
*   [Bank Accounts](https://fakturoid.cz/api/v3/bank-accounts)
*   [Number Formats](https://fakturoid.cz/api/v3/number-formats)
*   [Subjects](https://fakturoid.cz/api/v3/subjects)
*   [Invoices](https://fakturoid.cz/api/v3/invoices)
*   [Invoice Payments](https://fakturoid.cz/api/v3/invoice-payments)
*   [Invoice Messages](https://fakturoid.cz/api/v3/invoice-messages)
*   [Expenses](https://fakturoid.cz/api/v3/expenses)
*   [Expense Payments](https://fakturoid.cz/api/v3/expense-payments)
*   [Inbox Files](https://fakturoid.cz/api/v3/inbox-files)
*   [Inventory Items](https://fakturoid.cz/api/v3/inventory-items)
*   [Inventory Moves](https://fakturoid.cz/api/v3/inventory-moves)
*   [Generators](https://fakturoid.cz/api/v3/generators)
*   [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators)
*   [Events](https://fakturoid.cz/api/v3/events)
    *   [Attributes](#attributes)
    *   [Events Index](#events-index)
    *   [Events Paid Index](#events-paid-index)
*   [Todos](https://fakturoid.cz/api/v3/todos)
*   [Webhooks](https://fakturoid.cz/api/v3/webhooks)

# Events

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`name`

`String`

Event name

Read-only attribute

`created_at`

`DateTime`

Date and time of event creation

Read-only attribute

`text`

`String`

Text of the event

Read-only attribute

`related_objects`

[`Object`](https://fakturoid.cz/api/v3/events#related-objects)

Attributes of objects related to the event

Read-only attribute

`user`

[`Object`](https://fakturoid.cz/api/v3/events#user)

User details

Read-only attribute

`params`

`Object`

Parameters with details about event, specific for each type of event

### [Related objects](#related-objects)

Attribute

Type

Description

Read-only attribute

`type`

`String`

Type of the object related to the event  
Values:`Invoice`, `Subject`, `Expense`, `Generator`, `RecurringGenerator`, `ExpenseGenerator`, `Estimate`

Read-only attribute

`id`

`Integer`

ID of the object related to event

### [User](#user)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

User ID

Read-only attribute

`full_name`

`String`

Full user name

Read-only attribute

`avatar`

`String`

Avatar URL

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Events Index](#events-index)

If query parameter `since` is not valid date time format ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)) the server will respond with `400 Bad Request`.

`GET` `/accounts/{slug}/events.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/events.json` Copy

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

Event created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`subject_id`

Filter events only for specific subject

`Integer`

`5`

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "name": "invoice_sent",
    "created_at": "2023-12-01T09:05:47.183+01:00",
    "text": "Sent",
    "related_objects": [
      {
        "id": 27,
        "type": "Invoice"
      },
      {
        "id": 16,
        "type": "Subject"
      }
    ],
    "user": {
      "id": 5,
      "full_name": "Alexandr Hejsek",
      "avatar": "https://app.fakturoid.cz/rails/active_storage/…"
    },
    "params": {
      "email": "pokus@test.cz",
      "marked": "false",
      "email_body": "Hezký den,\r\n\r\nvystavil jsem pro Vás fakturu\r\n…",
      "email_copy": "",
      "email_subject": "Faktura č. 2023-0021"
    }
  },
  {
    "name": "invoice_taxable_fulfillment_due_changed",
    "created_at": "2023-12-01T09:17:52.604+01:00",
    "text": "Chargeable event changed from Nov 30, 2023 to Dec 01, 2023",
    "related_objects": [
      {
        "id": 26,
        "type": "Invoice"
      },
      {
        "id": 16,
        "type": "Subject"
      }
    ],
    "user": {
      "id": 5,
      "full_name": "Alexandr Hejsek",
      "avatar": null
    },
    "params": {
      "new": "2023-12-01",
      "old": "2023-11-30"
    }
  },
  {
    "name": "inbox_file_added",
    "created_at": "2023-12-01T09:15:29.706+01:00",
    "text": "New file test001.isdoc.pdf was added to the inbox",
    "related_objects": [],
    "user": {
      "id": 5,
      "full_name": "Alexandr Hejsek",
      "avatar": "https://app.fakturoid.cz/rails/active_storage/…"
    },
    "params": {
      "filename": "test001.isdoc.pdf"
    }
  },
  …
]
```

## [Events Paid Index](#events-paid-index)

Returns paid events for invoices and expenses.

`GET` `/accounts/{slug}/events/paid.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/events/paid.json` Copy

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

Event created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`subject_id`

Filter events only for specific subject

`Integer`

`5`

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "name": "invoice_paid_with_thank_you_note",
    "created_at": "2023-12-01T09:21:45.218+01:00",
    "text": "Paid and thank you note sent ",
    "related_objects": [
      {
        "id": 26,
        "type": "Invoice"
      },
      {
        "id": 16,
        "type": "Subject"
      }
    ],
    "user": {
      "id": 5,
      "full_name": "Alexandr Hejsek",
      "avatar": null
    },
    "params": {
      "date": null,
      "email": "pokus@test.cz",
      "email_body": "Zdravím,\n\nděkuji za zaplacení faktury č. 2023-0020.\n\nAť se daří\n\nAlexandr Hejsek",
      "email_copy": null,
      "email_subject": "[Zaplacena] Faktura č. 2023-0020"
    }
  },
  …
]
```

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Events](https://fakturoid.cz/api/v3/events)