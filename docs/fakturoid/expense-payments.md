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
    *   [Attributes](#attributes)
    *   [Create Payment](#create-payment)
    *   [Delete Expense Payment](#delete-expense-payment)
*   [Inbox Files](https://fakturoid.cz/api/v3/inbox-files)
*   [Inventory Items](https://fakturoid.cz/api/v3/inventory-items)
*   [Inventory Moves](https://fakturoid.cz/api/v3/inventory-moves)
*   [Generators](https://fakturoid.cz/api/v3/generators)
*   [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators)
*   [Events](https://fakturoid.cz/api/v3/events)
*   [Todos](https://fakturoid.cz/api/v3/todos)
*   [Webhooks](https://fakturoid.cz/api/v3/webhooks)

# Expense Payments

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Unique identifier in Fakturoid

`paid_on`

`Date`

Payment date  
Default: Today

Read-only attribute

`currency`

`String`

Currency [ISO Code](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) (same as expense currency)

`amount`

`Decimal`

Paid amount in document currency  
Default: Remaining amount to pay

`native_amount`

`Decimal`

Paid amount in account currency  
Default: Remaining amount to pay converted to account currency

`mark_document_as_paid`

`Boolean`

Mark document as paid?  
Default: `true` if the total paid amount becomes greater or equal to remaining amount to pay

`variable_symbol`

`String`

Payment variable symbol  
Default: Expense variable symbol

`bank_account_id`

`Integer`

Bank account ID  
Default: Expense bank account or default bank account

Read-only attribute

`created_at`

`DateTime`

The date and time of payment creation

Read-only attribute

`updated_at`

`DateTime`

The date and time of last payment update

## [Create Payment](#create-payment)

`POST` `/accounts/{slug}/expenses/{expense_id}/payments.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{expense_id}/payments.json` Copy

#### Headers

Name

Value

`User-Agent`

`YourApp (yourname@example.com)`

`Content-Type`

`application/json`

#### URL Parameters

Name

Description

Type

Example

`slug`

Account name

`String`

`applecorp`

`expense_id`

Expense ID

`Integer`

`1`

#### Body

```
{
  "paid_on": "2023-12-14"
}
```

### Response

`Status` `201 Created`

#### Body

```
{
  "id": 2,
  "paid_on": "2023-12-14",
  "currency": "CZK",
  "amount": "24200.0",
  "native_amount": "24200.0",
  "variable_symbol": "19774",
  "bank_account_id": 11,
  "created_at": "2024-01-12T11:58:30.468+01:00",
  "updated_at": "2024-01-15T16:32:08.890+01:00"
}
```

### Request with invalid data

#### Body

```
{
  "amount": ""
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "amount": [
      "can't be blank",
      "is not a number"
    ],
    "native_amount": [
      "can't be blank",
      "is not a number"
    ]
  }
}
```

### Response if expense is already paid

`Status` `403 Forbidden`

#### Body

```
{
  "error": "forbidden",
  "error_description": "Payment cannot be added to already paid expense"
}
```

## [Delete Expense Payment](#delete-expense-payment)

`DELETE` `/accounts/{slug}/expenses/{expense_id}/payments/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{expense_id}/payments/{id}.json` Copy

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

`expense_id`

Expense ID

`Integer`

`1`

`id`

Payment ID

`Integer`

`2`

### Response

`Status` `204 No Content`

### Response if payment cannot be deleted

`Status` `422 Unprocessable Content`

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Expense Payments](https://fakturoid.cz/api/v3/expense-payments)