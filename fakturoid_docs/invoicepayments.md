# Invoice Payments

------------------------------------------------------------------------

## Attributes

  ------------------------------------------------------------------------------
  Attribute                      Type                    Description
  ------------------------------ ----------------------- -----------------------
  `id`                           `Integer`               Unique identifier in
                                                         Fakturoid

  `paid_on`                      `Date`                  Payment date

                                                         Default: Today

  `currency`                     `String`                Currency ISO 4217 code
                                                         (same as invoice
                                                         currency)

  `amount`                       `Decimal`               Paid amount in document
                                                         currency

                                                         Default: Remaining
                                                         amount to pay

  `native_amount`                `Decimal`               Paid amount in account
                                                         currency

                                                         Default: Remaining
                                                         amount converted to
                                                         account currency

  `mark_document_as_paid`        `Boolean`               Mark document as paid

  `proforma_followup_document`   `String`                Issue followup document
                                                         for proforma

  `send_thank_you_email`         `Boolean`               Send thank‑you email

  `variable_symbol`              `String`                Payment variable symbol

  `bank_account_id`              `Integer`               Bank account ID

  `tax_document_id`              `Integer`               Tax document ID

  `created_at`                   `DateTime`              Payment creation time

  `updated_at`                   `DateTime`              Last update time
  ------------------------------------------------------------------------------

### Read‑only attributes

-   `id`
-   `currency`
-   `tax_document_id`
-   `created_at`
-   `updated_at`

------------------------------------------------------------------------

## Create Payment

POST `/accounts/{slug}/invoices/{invoice_id}/payments.json`

### Example Request

POST
https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/payments.json

Headers:

User-Agent: YourApp (your@email.com)\
Content-Type: application/json

Body:

``` json
{
  "paid_on": "2023-12-06"
}
```

### Response

Status: **201 Created**

``` json
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

### Invalid Request

``` json
{
  "amount": ""
}
```

Response:

Status **422 Unprocessable Content**

``` json
{
  "errors": {
    "amount": ["can't be blank", "is not a number"],
    "native_amount": ["can't be blank", "is not a number"]
  }
}
```

### If invoice is already paid

Status **403 Forbidden**

``` json
{
  "error": "forbidden",
  "error_description": "Payment cannot be added to already paid invoice"
}
```

------------------------------------------------------------------------

## Create Tax Document

POST
`/accounts/{slug}/invoices/{invoice_id}/payments/{id}/create_tax_document.json`

Example request:

POST
https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/payments/{id}/create_tax_document.json

Response **201 Created**

``` json
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

If tax document cannot be created:

Status **422**

``` json
{
  "errors": {
    "document": ["Tax document cannot be created"]
  }
}
```

------------------------------------------------------------------------

## Delete Invoice Payment

DELETE `/accounts/{slug}/invoices/{invoice_id}/payments/{id}.json`

Example:

DELETE
https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/payments/{id}.json

Response:

Status **204 No Content**

If deletion is forbidden:

``` json
{
  "error": "forbidden",
  "error_description": "Payments cannot be changed on a cancelled invoice"
}
```
