Zavřít menu

[Fakturoid web →](/)

*   [Introduction](https://fakturoid.cz/api/v3)
*   [Changelog](https://fakturoid.cz/api/v3/changelog)
*   [Authorization](https://fakturoid.cz/api/v3/authorization)
*   [Users](https://fakturoid.cz/api/v3/users)
*   [Account](https://fakturoid.cz/api/v3/account)
*   [Bank Accounts](https://fakturoid.cz/api/v3/bank-accounts)
    *   [Attributes](#attributes)
    *   [Banks Accounts Index](#banks-accounts-index)
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
*   [Todos](https://fakturoid.cz/api/v3/todos)
*   [Webhooks](https://fakturoid.cz/api/v3/webhooks)

# Bank Accounts

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

Account name

Read-only attribute

`currency`

`String`

Currency

Read-only attribute

`number`

`String`

Account number

Read-only attribute

`iban`

`String`

IBAN code

Read-only attribute

`swift_bic`

`String`

BIC (for SWIFT payments)

Read-only attribute

`pairing`

`Boolean`

Pairing of incoming payments

Read-only attribute

`expense_pairing`

`Boolean`

Pairing of outgoing payments

Read-only attribute

`payment_adjustment`

`Boolean`

Small amount settlement when matching payments

Read-only attribute

`default`

`Boolean`

Default bank account

Read-only attribute

`created_at`

`DateTime`

Date and time of bank account creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last bank account update

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Banks Accounts Index](#banks-accounts-index)

Bank accounts are read-only, please use the web interface to make changes.

`GET` `/accounts/{slug}/bank_accounts.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/bank_accounts.json` Copy

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
    "id": 11,
    "name": "Účet",
    "currency": "CZK",
    "number": "1234/2010",
    "iban": null,
    "swift_bic": null,
    "pairing": false,
    "expense_pairing": false,
    "payment_adjustment": false,
    "default": false,
    "created_at": "2023-11-06T13:01:41.474+01:00",
    "updated_at": "2023-11-06T13:01:41.474+01:00"
  },
  …
]
```

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Bank Accounts](https://fakturoid.cz/api/v3/bank-accounts)