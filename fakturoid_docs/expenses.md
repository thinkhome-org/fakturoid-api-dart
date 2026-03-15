# Fakturoid API v3 --- Expenses

Source: https://www.fakturoid.cz/api/v3/expenses

------------------------------------------------------------------------

## Expenses Index

`GET /accounts/{slug}/expenses.json`

### Request

GET https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses.json

Headers

User-Agent: YourApp (yourname@example.com)

### Query parameters

  name              description
  ----------------- ---------------------------------------------
  since             expenses created after this date
  updated_since     expenses created or updated after this date
  page              page number (40 records per page)
  subject_id        filter by subject
  custom_id         filter by custom id
  number            filter by expense number
  variable_symbol   filter by variable symbol
  status            open / overdue / paid

------------------------------------------------------------------------

## Expense Detail

`GET /accounts/{slug}/expenses/{id}.json`

GET https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}.json

Headers

User-Agent: YourApp (yourname@example.com)

------------------------------------------------------------------------

## Create Expense

`POST /accounts/{slug}/expenses.json`

POST https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses.json

Headers

User-Agent: YourApp (yourname@example.com)\
Content-Type: application/json

Example request:

``` json
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

------------------------------------------------------------------------

## Update Expense

`PATCH /accounts/{slug}/expenses/{id}.json`

PATCH https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}.json

Example:

``` json
{
  "custom_id": "ORD111132"
}
```

------------------------------------------------------------------------

## Delete Expense

`DELETE /accounts/{slug}/expenses/{id}.json`

DELETE
https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}.json

Response

204 No Content

------------------------------------------------------------------------

## Expense Status

  status    description
  --------- -----------------------
  open      received but not paid
  overdue   overdue
  paid      paid

------------------------------------------------------------------------

## Expense Line Example

``` json
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

------------------------------------------------------------------------

## Attachments

Example request:

``` json
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

``` json
{
  "attachments": [
    {
      "id": 3,
      "filename": "receipt.pdf",
      "content_type": "application/pdf",
      "download_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/expenses/9/attachments/1/download"
    }
  ]
}
```

------------------------------------------------------------------------

## Expense Actions

`POST /accounts/{slug}/expenses/{id}/fire.json`

Events:

  event    description
  -------- ----------------
  lock     lock expense
  unlock   unlock expense

Example:

POST
https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}/fire.json?event=lock
