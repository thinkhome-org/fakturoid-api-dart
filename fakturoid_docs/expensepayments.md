# Expense Payments

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` | `Integer` | Unique identifier in Fakturoid |
| `paid_on` | `Date` | Payment date. Default: Today |
| `currency` | `String` | Currency [ISO Code](https://en.wikipedia.org/wiki/ISO_4217) (same as expense currency) |
| `amount` | `Decimal` | Paid amount in document currency. Default: Remaining amount to pay |
| `native_amount` | `Decimal` | Paid amount in account currency. Default: Remaining amount to pay converted to account currency |
| `mark_document_as_paid` | `Boolean` | Mark document as paid? Default: `true` if the total paid amount becomes greater or equal to remaining amount to pay |
| `variable_symbol` | `String` | Payment variable symbol. Default: Expense variable symbol |
| `bank_account_id` | `Integer` | Bank account ID. Default: Expense bank account or default bank account |
| `created_at` | `DateTime` | The date and time of payment creation |
| `updated_at` | `DateTime` | The date and time of last payment update |

Read-only attributes:
- `id`
- `currency`
- `created_at`
- `updated_at`

## Create Payment

`POST` `/accounts/{slug}/expenses/{expense_id}/payments.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{expense_id}/payments.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |
| `Content-Type` | `application/json` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `expense_id` | Expense ID | `Integer` | `1` |

#### Body

```json
{
  "paid_on": "2023-12-14"
}
```

### Response

`Status` `201 Created`

#### Body

```json
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

```json
{
  "amount": ""
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "amount": [
      "can't be blank",
      "is not a number"
    ],
    "native_amount": [
      "can't be blank",
      "is not a number"
    ]
  }
}
```

### Response if expense is already paid

`Status` `403 Forbidden`

#### Body

```json
{
  "error": "forbidden",
  "error_description": "Payment cannot be added to already paid expense"
}
```

## Delete Expense Payment

`DELETE` `/accounts/{slug}/expenses/{expense_id}/payments/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{expense_id}/payments/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `expense_id` | Expense ID | `Integer` | `1` |
| `id` | Payment ID | `Integer` | `2` |

### Response

`Status` `204 No Content`

### Response if payment cannot be deleted

`Status` `422 Unprocessable Content`
