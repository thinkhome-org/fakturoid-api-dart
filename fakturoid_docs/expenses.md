# Expenses

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `number` *(read-only)* | `String` | Expense number in Fakturoid |
| `original_number` | `String` | Document number from supplier |
| `variable_symbol` | `String` | Variable symbol |
| `supplier_name` | `String` | Supplier name |
| `supplier_registration_no` | `String` | Supplier registration number |
| `supplier_vat_no` | `String` | Supplier VAT number |
| `subject_id` | `Integer` | ID of the subject (supplier) in the directory |
| `lines` | `Array` | Expense items (name, quantity, price, VAT) |
| `status` *(read-only)* | `String` | Status (`open`, `overdue`, `paid`) |
| `total_price` *(read-only)* | `Decimal` | Total price including VAT |
| `native_total_price` *(read-only)* | `Decimal` | Total price including VAT in account currency |
| `rounding_adjustment` *(read-only)* | `Decimal` | Rounding adjustment |
| `attachments` | `Array` | Attachments (e.g. PDF invoice) |
| `created_at` *(read-only)* | `DateTime` | Date and time of expense creation |
| `updated_at` *(read-only)* | `DateTime` | Date and time of last expense update |

- *(read-only)*: Read-only attribute (cannot be changed).
- **(required)**: Required attribute (must always be present).
- *(write-only)*: Write-only attribute (will not be returned).

## Expenses Index

`GET /accounts/{slug}/expenses.json`

### Request

`GET /accounts/{slug}/expenses.json`

Headers:

```text
User-Agent: YourApp (yourname@example.com)
```

### Query parameters

| Name | Description |
|---|---|
| `since` | expenses created after this date |
| `updated_since` | expenses created or updated after this date |
| `page` | page number (40 records per page) |
| `subject_id` | filter by subject |
| `custom_id` | filter by custom id |
| `number` | filter by expense number |
| `variable_symbol` | filter by variable symbol |
| `status` | open / overdue / paid |

---

## Expense Detail

`GET /accounts/{slug}/expenses/{id}.json`

`GET /accounts/{slug}/expenses/{id}.json`

Headers:

```text
User-Agent: YourApp (yourname@example.com)
```

---

## Create Expense

`POST /accounts/{slug}/expenses.json`

`POST /accounts/{slug}/expenses.json`

Headers:

```text
User-Agent: YourApp (yourname@example.com)
Content-Type: application/json
```

Example request:

```json
{
  "custom_id": "ORD87968",
  "subject_id": 16,
  "lines": [
    {
      "name": "Hard work",
      "quantity": "1.0",
      "unit_name": "h",
      "unit_price": "40000",
      "vat_rate": "21"
    }
  ]
}
```

---

## Update Expense

`PATCH /accounts/{slug}/expenses/{id}.json`

`PATCH /accounts/{slug}/expenses/{id}.json`

Example:

```json
{
  "custom_id": "ORD111132"
}
```

---

## Delete Expense

`DELETE /accounts/{slug}/expenses/{id}.json`

`DELETE /accounts/{slug}/expenses/{id}.json`

Response:

`204 No Content`

---

## Expense Status

| Status | Description |
|---|---|
| `open` | received but not paid |
| `overdue` | overdue |
| `paid` | paid |

---

## Expense Line Example

```json
{
  "id": 1304,
  "name": "Disk 2TB",
  "quantity": "2.0",
  "unit_name": "ks",
  "unit_price": "1000.0",
  "vat_rate": 21,
  "unit_price_without_vat": "1000.0",
  "unit_price_with_vat": "1210.0",
  "total_price_without_vat": "2000.0",
  "total_vat": "420.0"
}
```

---

## Attachments

Example request:

```json
{
  "attachments": [
    {
      "filename": "receipt.pdf",
      "data_url": "data:application/pdf;base64,BASE64DATA"
    }
  ]
}
```

Example response:

```json
{
  "attachments": [
    {
      "id": 3,
      "filename": "receipt.pdf",
      "content_type": "application/pdf",
      "download_url": "/accounts/applecorp/expenses/9/attachments/1/download"
    }
  ]
}
```

---

## Expense Actions

`POST /accounts/{slug}/expenses/{id}/fire.json`

Events:

| Event | Description |
|---|---|
| `lock` | lock expense |
| `unlock` | unlock expense |

Example:

`POST /accounts/{slug}/expenses/{id}/fire.json?event=lock`
