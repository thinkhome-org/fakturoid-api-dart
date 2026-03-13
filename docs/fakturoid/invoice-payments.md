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
    *   [Attributes](#attributes)
    *   [Create Payment](#create-payment)
    *   [Create Tax Document](#create-tax-document)
    *   [Delete Invoice Payment](#delete-invoice-payment)
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
*   [Webhooks](/api/v3/webhooks)

# Invoice Payments

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

Currency [ISO Code](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) (same as invoice currency)

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

`proforma_followup_document`

`String`

Issue a followup document with payment  
Only for proformas and `mark_document_as_paid` must be `true`.  
Values: `final_invoice_paid` (Invoice paid), `final_invoice` (Invoice with edit), `tax_document` (Document to payment), `none` (None)

`send_thank_you_email`

`Boolean`

Send thank-you email?  
`mark_document_as_paid` must be `true`  
Default: Inherit from account settings

`variable_symbol`

`String`

Payment variable symbol  
Default: Invoice variable symbol

`bank_account_id`

`Integer`

Bank account ID  
Default: Invoice bank account or default bank account

Read-only attribute

`tax_document_id`

`Integer`

Tax document ID (if present)

Read-only attribute

`created_at`

`DateTime`

The date and time of payment creation

Read-only attribute

`updated_at`

`DateTime`

The date and time of last payment update

## [Create Payment](#create-payment)

`POST` `/accounts/{slug}/invoices/{invoice_id}/payments.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/payments.json` Copy

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

`invoice_id`

Invoice ID

`Integer`

`1`

#### Body

```
{
  "paid_on": "2023-12-06"
}
```

### Response

`Status` `201 Created`

#### Body

```
{
  "id": 2,
  "paid_on": "2023-12-08",
  "currency": "CZK",
  "amount": "1210.0",
  "native_amount": "1210.0",
  "variable_symbol": "120230004",
  "bank_account_id": 11,
  "tax_document_id": null,
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

### Response if invoice is already paid

`Status` `403 Forbidden`

#### Body

```
{
  "error": "forbidden",
  "error_description": "Payment cannot be added to already paid invoice"
}
```

## [Create Tax Document](#create-tax-document)

Use `tax_document_id` attribute from the response to fetch the newly created tax document via [Invoice Detail endpoint](/api/v3/invoices#invoices-detail).

`POST` `/accounts/{slug}/invoices/{invoice_id}/payments/{id}/create_tax_document.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/payments/{id}/create_tax_document.json` Copy

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

`invoice_id`

Invoice ID

`Integer`

`1`

`id`

Payment ID

`Integer`

`2`

### Response

`Status` `201 Created`

#### Body

```
{
  "id": 2,
  "paid_on": "2023-12-08",
  "currency": "CZK",
  "amount": "1210.0",
  "native_amount": "1210.0",
  "variable_symbol": "120230004",
  "bank_account_id": 11,
  "tax_document_id": 550,
  "created_at": "2024-01-12T11:58:30.468+01:00",
  "updated_at": "2024-01-15T16:32:08.890+01:00"
}
```

### Response if tax document cannot be created

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "document": [
      "Tax document cannot be created"
    ]
  }
}
```

## [Delete Invoice Payment](#delete-invoice-payment)

`DELETE` `/accounts/{slug}/invoices/{invoice_id}/payments/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/payments/{id}.json` Copy

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

`invoice_id`

Invoice ID

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

`Status` `403 Forbidden`

#### Body

```
{
  "error": "forbidden",
  "error_description": "Payments cannot be changed on a cancelled invoice"
}
```

* * *

1.  [API v3](/api/v3)→
2.  [Invoice Payments](/api/v3/invoice-payments)