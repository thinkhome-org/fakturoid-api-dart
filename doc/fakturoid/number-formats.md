Zavřít menu

[Fakturoid web →](/)

*   [Introduction](https://fakturoid.cz/api/v3)
*   [Changelog](https://fakturoid.cz/api/v3/changelog)
*   [Authorization](https://fakturoid.cz/api/v3/authorization)
*   [Users](https://fakturoid.cz/api/v3/users)
*   [Account](https://fakturoid.cz/api/v3/account)
*   [Bank Accounts](https://fakturoid.cz/api/v3/bank-accounts)
*   [Number Formats](https://fakturoid.cz/api/v3/number-formats)
    *   [Attributes](#attributes)
    *   [Number Formats Index](#number-formats-index)
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
*   [Todos](https://fakturoid.cz/api/v3/todos)
*   [Webhooks](https://fakturoid.cz/api/v3/webhooks)

# Number Formats

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

`format`

`String`

Format

Read-only attribute

`preview`

`String`

Preview of number format

Read-only attribute

`default`

`Boolean`

Default number format

Read-only attribute

`created_at`

`DateTime`

Date and time of number format creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last number format update

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Number Formats Index](#number-formats-index)

Number formats are read-only, please use the web interface to change or create a new one. Only unarchived number formats are returned.

A number format can only be assigned when creating an invoice. An attempt to change the number format while editing an invoice will return `422 Unprocessable Content`.

`GET` `/accounts/{slug}/number_formats/invoices.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/number_formats/invoices.json` Copy

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

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "id": 31,
    "format": "#yyyy#-#dddd#",
    "preview": "2023-0001, 2023-0002, ..., 2023-9999",
    "default": true,
    "created_at": "2023-11-06T13:01:40.816+01:00",
    "updated_at": "2023-11-06T13:01:40.816+01:00"
  },
  …
]
```

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Number Formats](https://fakturoid.cz/api/v3/number-formats)