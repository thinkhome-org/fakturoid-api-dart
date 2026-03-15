# Inventory Moves

------------------------------------------------------------------------

## Attributes

| Attribute | Type | Description |
| :--- | :--- | :--- |
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `direction` **(required)** | `String` | Move direction (`in`, `out`) |
| `moved_on` | `Datetime` | Move date |
| `quantity_change` **(required)** | `Decimal` | Item quantity in move (positive for "in", negative for "out") |
| `purchase_price` | `Decimal` | Purchase price per unit (without VAT) |
| `purchase_currency` | `String` | Purchase currency (3‑letter code) |
| `native_purchase_price` *(read-only)* | `Decimal` | Unit purchase price in account currency |
| `retail_price` | `Decimal` | Retail price per unit |
| `retail_currency` | `String` | Retail currency (3‑letter code) |
| `native_retail_price` *(read-only)* | `Decimal` | Retail price in account currency |
| `private_note` | `Text` | Private note |
| `inventory_item_id` **(required)** | `Integer` | Inventory item ID |
| `document` *(read-only)* | `Object` | Document and line the move is tied to |
| `created_at` *(read-only)* | `DateTime` | Date and time of creation |
| `updated_at` *(read-only)* | `DateTime` | Date and time of last update |

### Document object

| Attribute | Type | Description |
| :--- | :--- | :--- |
| `id` *(read-only)* | `Integer` | Document ID |
| `type` *(read-only)* | `String` | Document type (`Estimate`, `Expense`, `Generator`, `Invoice` ...) |
| `line_id` *(read-only)* | `Integer` | Document line ID |

------------------------------------------------------------------------

# Inventory Moves Index

`GET /accounts/{slug}/inventory_moves.json`

### Example request

``` http
GET https://app.fakturoid.cz/api/v3/accounts/{slug}/inventory_moves.json
User-Agent: YourApp (your@email.com)
```

### Query parameters

| Name | Description |
| :--- | :--- |
| `since` | Moves created after datetime |
| `until` | Moves created before datetime |
| `updated_since` | Created or updated after datetime |
| `updated_until` | Created or updated before datetime |
| `page` | Pagination (40 records/page) |
| `inventory_item_id` | Filter by inventory item |

### Example response

``` json
[
  {
    "id": 1,
    "direction": "in",
    "moved_on": "2023-08-05",
    "quantity_change": "1000.0",
    "purchase_price": "500.0",
    "purchase_currency": "CZK",
    "native_purchase_price": "500.0",
    "retail_price": null,
    "retail_currency": "CZK",
    "native_retail_price": null,
    "private_note": null,
    "inventory_item_id": 1,
    "document": null,
    "created_at": "2023-08-05T13:26:20.871+02:00",
    "updated_at": "2023-08-05T13:26:20.871+02:00"
  }
]
```

------------------------------------------------------------------------

# Inventory Move Detail

`GET /accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json`

### Example response

``` json
{
  "id": 12,
  "direction": "out",
  "moved_on": "2023-08-21",
  "quantity_change": "980.0",
  "purchase_price": "1273.474",
  "purchase_currency": "CZK",
  "native_purchase_price": "1273.474",
  "retail_price": "2528.0",
  "retail_currency": "CZK",
  "native_retail_price": "2528.0",
  "private_note": null,
  "inventory_item_id": 1,
  "document": {
    "id": 540,
    "type": "Invoice",
    "line_id": 1298
  }
}
```

------------------------------------------------------------------------

# Create Inventory Move

`POST /accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves.json`

### Example request

``` json
{
  "direction": "in",
  "moved_on": "2023-11-10",
  "quantity_change": "35",
  "purchase_price": "50"
}
```

### Success response

`201 Created`

``` json
{
  "id": 51,
  "direction": "in",
  "moved_on": "2023-11-10",
  "quantity_change": "35.0",
  "purchase_price": "50.0"
}
```

------------------------------------------------------------------------

# Update Inventory Move

`PATCH /accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json`

``` json
{
  "quantity_change": "55",
  "purchase_price": "100"
}
```

------------------------------------------------------------------------

# Delete Inventory Move

`DELETE /accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json`

Response: `204 No Content`
