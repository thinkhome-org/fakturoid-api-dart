# Inventory Items

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `name` **(required)** | `String` | Item name |
| `sku` **(required)** | `String` | Stock Keeping Unit (SKU) |
| `article_number_type` | `String` | Article number type. Values: `ian`, `ean`, `isbn`. Default: `ian` |
| `article_number` | `String` | Article number |
| `unit_name` | `String` | Unit of measure |
| `track_quantity` | `Boolean` | Track quantity via inventory moves? Default: `false` |
| `quantity` | `Decimal` | Quantity in stock. Becomes *(read-only)* after item creation and can be changed only via inventory moves. |
| `min_quantity` | `Decimal` | Minimum stock quantity |
| `max_quantity` | `Decimal` | Maximum stock quantity |
| `allow_below_zero` | `Boolean` | Allow quantity below zero. Default: `false` |
| `low_quantity_date` *(read-only)* | `DateTime` | Date when item quantity dropped below `min_quantity` |
| `native_purchase_price` | `Decimal` | Unit purchase price without VAT in account currency |
| `native_retail_price` | `Decimal` | Unit retail price without VAT in account currency |
| `vat_rate` | `String` | VAT rate. Values: `standard` (21%), `reduced` (12%), `reduced2` (10%), `zero` (0%) |
| `average_native_purchase_price` *(read-only)* | `Decimal` | Average purchase price in account currency |
| `supply_type` | `String` | Item type. Values: `goods`, `service`. Default: `goods` |
| `archived` | `Boolean` | If item is archived |
| `private_note` | `Text` | Private note |
| `suggest_for` | `String` | Suggest item for documents. Values: `invoices`, `expenses`, `both`. Default: `both` |
| `retail_prices` | `Array[Object]` | List of retail prices for specific currencies |
| `created_at` *(read-only)* | `DateTime` | Date and time of item creation |
| `updated_at` *(read-only)* | `DateTime` | Date and time of last item update |

- **(required)**: Required attribute
- *(read-only)*: Read-only attribute
- *(write-only)*: Write-only attribute
- Unmarked attributes are optional and can be omitted during request.

Required notes:
- `sku` is **(required)**.
- `article_number_type` is **(required)** if `track_quantity` is enabled.
- `quantity` is **(required)** if `track_quantity` is enabled.
- `native_purchase_price` is **(required)** if `track_quantity` is enabled.

### Retail Prices

Predefined retail prices for specific currencies to avoid calculations through exchange rates, which may lead to poorly rounded numbers. It is possible to define retail prices for up to five currencies.

#### Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `amount` **(required)** | `Decimal` | Amount in currency |
| `currency` **(required)** | `String` | Currency |
| `created_at` *(read-only)* | `DateTime` | Date and time of retail price creation |
| `updated_at` *(read-only)* | `DateTime` | Date and time of last retail price update |

#### Retail Price Example

```json
{
  "id": 1304,
  "amount": "10",
  "currency": "USD",
  "created_at": "2025-10-23T13:50:00.000+02:00",
  "updated_at": "2025-10-23T13:52:00.000+02:00"
}
```

When editing a document, it is important to send the retail price `ID` with the retail prices, without it the retail price will be added again.

#### Delete Retail Price

For deleting the retail price the attribute `_destroy: true` must be included:

```json
{
  "id": 1304,
  "amount": "10",
  "currency": "USD",
  "_destroy": true
}
```

## Items Index

Archived items are not returned.

If query parameters `since`, `until`, `updated_since` and `updated_until` are not valid date time format (ISO 8601) the server will respond with `400 Bad Request`.

`GET /accounts/{slug}/inventory_items.json`

### Request

`GET /accounts/{slug}/inventory_items.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |

#### Query Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `since` | Items created after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `until` | Items created before this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `updated_since` | Items created or updated after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `updated_until` | Items created or updated before this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `page` | Page number (40 records per page) | `Integer` | `2` |
| `article_number` | Filter items by article number | `String` | `5901234123457` |
| `sku` | Filter items by stock keeping unit (SKU) | `String` | `KU994RUR8423` |

### Response

`Status 200 OK`

#### Body

```json
[
  {
    "id": 12,
    "name": "Monitor 24\" FullHD",
    "sku": "KU994RUR5448",
    "article_number_type": "ian",
    "article_number": null,
    "unit_name": null,
    "track_quantity": true,
    "quantity": "1998.0",
    "min_quantity": "538.0",
    "max_quantity": "2167.0",
    "allow_below_zero": false,
    "low_quantity_date": null,
    "native_purchase_price": "500.0",
    "native_retail_price": "1000.0",
    "vat_rate": "standard",
    "average_native_purchase_price": "500.0",
    "supply_type": "goods",
    "archived": false,
    "private_note": null,
    "suggest_for": "invoices",
    "created_at": "2023-09-05T13:26:21.192+02:00",
    "updated_at": "2023-09-05T13:26:21.197+02:00"
  },
  …
]
```

## Archived Items

`GET /accounts/{slug}/inventory_items/archived.json`

### Request

`GET /accounts/{slug}/inventory_items/archived.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |

#### Query Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `since` | Items created after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `until` | Items created before this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `updated_since` | Items created or updated after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `updated_until` | Items created or updated before this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `page` | Page number (40 records per page) | `Integer` | `2` |
| `article_number` | Filter items by article number | `String` | `5901234123457` |
| `sku` | Filter items by stock keeping unit (SKU) | `String` | `KU994RUR8423` |

### Response

`Status 200 OK`

#### Body

```json
[
  {
    "id": 17,
    "name": "Skříň rohová",
    "sku": "KU994RUR7075",
    "article_number_type": "ian",
    "article_number": null,
    "unit_name": null,
    "track_quantity": true,
    "quantity": "1998.0",
    "min_quantity": "538.0",
    "max_quantity": "2167.0",
    "allow_below_zero": false,
    "low_quantity_date": null,
    "native_purchase_price": "500.0",
    "native_retail_price": "1000.0",
    "vat_rate": "standard",
    "average_native_purchase_price": "500.0",
    "supply_type": "goods",
    "archived": true,
    "private_note": null,
    "suggest_for": "invoices",
    "created_at": "2023-11-03T13:24:03.231+01:00",
    "updated_at": "2023-11-28T14:57:29.782+01:00"
  },
  …
]
```

## Low-Quantity Items

Returns only items having quantity below minimum.

`GET /accounts/{slug}/inventory_items/low_quantity.json`

### Request

`GET /accounts/{slug}/inventory_items/low_quantity.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `page` | Page number (40 records per page) | `Integer` | `2` |

### Response

`Status 200 OK`

#### Body

```json
[
  {
    "id": 15,
    "name": "Projektor",
    "sku": "KU994RUR7660",
    "article_number_type": "ian",
    "article_number": null,
    "unit_name": null,
    "track_quantity": true,
    "quantity": "398.0",
    "min_quantity": "538.0",
    "max_quantity": "2167.0",
    "allow_below_zero": false,
    "low_quantity_date": "2023-11-15",
    "native_purchase_price": "500.0",
    "native_retail_price": "1000.0",
    "vat_rate": "standard",
    "average_native_purchase_price": "500.0",
    "supply_type": "goods",
    "archived": false,
    "private_note": null,
    "suggest_for": "invoices",
    "created_at": "2023-09-05T13:26:21.224+02:00",
    "updated_at": "2023-11-15T14:39:40.720+01:00"
  },
  …
]
```

## Items Search

Following fields are being searched: `name`, `article_number` and `sku`.

`GET /accounts/{slug}/inventory_items/search.json`

### Request

`GET /accounts/{slug}/inventory_items/search.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |

#### Query Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `query` | Search query | `String` | `křeslo` |
| `page` | Page number (40 records per page) | `Integer` | `2` |

### Response

`Status 200 OK`

#### Body

```json
[
  {
    "id": 5,
    "name": "Kancelářské křeslo",
    "sku": "KU994RUR3897",
    "article_number_type": "ian",
    "article_number": null,
    "unit_name": null,
    "track_quantity": true,
    "quantity": "1998.0",
    "min_quantity": "538.0",
    "max_quantity": "2167.0",
    "allow_below_zero": false,
    "low_quantity_date": null,
    "native_purchase_price": "500.0",
    "native_retail_price": "1000.0",
    "vat_rate": "standard",
    "average_native_purchase_price": "500.0",
    "supply_type": "goods",
    "archived": false,
    "private_note": null,
    "suggest_for": "invoices",
    "created_at": "2023-11-03T13:24:03.046+01:00",
    "updated_at": "2023-11-03T13:24:03.049+01:00"
  },
  …
]
```

## Item Detail

`GET /accounts/{slug}/inventory_items/{id}.json`

### Request

`GET /accounts/{slug}/inventory_items/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Item ID | `Integer` | `11` |

### Response

`Status 200 OK`

#### Body

```json
{
  "id": 11,
  "name": "Magic mouse",
  "sku": "KU994RUR9439",
  "article_number_type": "ian",
  "article_number": null,
  "unit_name": null,
  "track_quantity": true,
  "quantity": "1998.0",
  "min_quantity": "538.0",
  "max_quantity": "2167.0",
  "allow_below_zero": false,
  "low_quantity_date": null,
  "native_purchase_price": "500.0",
  "native_retail_price": "1000.0",
  "vat_rate": "standard",
  "average_native_purchase_price": "500.0",
  "supply_type": "goods",
  "archived": false,
  "private_note": null,
  "suggest_for": "invoices",
  "created_at": "2023-09-05T13:26:21.175+02:00",
  "updated_at": "2023-09-05T13:26:21.180+02:00"
}
```

## Create Item

- If inventory item is successfully created the server will respond with `201 Created` and a JSON body with its data. A `Location` header will also be returned which contains a link to the newly created item.
- Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`POST /accounts/{slug}/inventory_items.json`

### Request

`POST /accounts/{slug}/inventory_items.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |
| `Content-Type` | `application/json` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |

#### Body

```json
{
  "name": "Keyboard 55F",
  "sku": "00TF6455F",
  "track_quantity": true,
  "quantity": 50,
  "native_purchase_price": 150,
  "native_retail_price": 250
}
```

### Response

`Status 201 Created`

#### Headers

| Name | Value |
|---|---|
| `Location` | "/accounts/applecorp/inventory_items/27.json" |

#### Body

```json
{
  "id": 34,
  "name": "Keyboard 55F",
  "sku": "00TF6455F",
  "article_number_type": "ian",
  "article_number": null,
  "unit_name": "",
  "track_quantity": true,
  "quantity": "50.0",
  "min_quantity": null,
  "max_quantity": null,
  "allow_below_zero": false,
  "low_quantity_date": null,
  "native_purchase_price": "150.0",
  "native_retail_price": "250.0",
  "vat_rate": null,
  "average_native_purchase_price": "150.0",
  "supply_type": "goods",
  "archived": false,
  "private_note": null,
  "suggest_for": "both",
  "created_at": "2023-11-28T15:51:05.598+01:00",
  "updated_at": "2023-11-28T15:51:05.607+01:00"
}
```

### Request with invalid data

#### Body

```json
{
  "sku": "00TF6455F",
  "native_retail_price": "250",
  "quantity": "50",
  "max_quantity": "150"
}
```

### Response

`Status 422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "name": [
      "can't be blank",
      "is too short (minimum is 2 characters)"
    ],
    "sku": [
      "has already been taken"
    ]
  }
}
```

## Update Item

- If item is successfully updated the server will respond with `200 OK` and a JSON body with its data.
- Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`PATCH /accounts/{slug}/inventory_items/{id}.json`

### Request

`PATCH /accounts/{slug}/inventory_items/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |
| `Content-Type` | `application/json` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Inventory item ID | `Integer` | `27` |

#### Body

```json
{
  "name": "Keyboard 55G"
}
```

### Response

`Status 200 OK`

#### Body

```json
{
  "id": 34,
  "name": "Keyboard 55G",
  "sku": "00TF6455F",
  "article_number_type": "ian",
  "article_number": null,
  "unit_name": "",
  "track_quantity": true,
  "quantity": "50.0",
  "min_quantity": null,
  "max_quantity": null,
  "allow_below_zero": false,
  "low_quantity_date": null,
  "native_purchase_price": "150.0",
  "native_retail_price": "250.0",
  "vat_rate": null,
  "average_native_purchase_price": "150.0",
  "supply_type": "goods",
  "archived": false,
  "private_note": null,
  "suggest_for": "both",
  "created_at": "2023-11-28T15:51:05.598+01:00",
  "updated_at": "2023-11-28T15:53:24.685+01:00"
}
```

### Request with invalid data

#### Body

```json
{
  "native_retail_price": "bad_retail_price"
}
```

### Response

`Status 422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "native_retail_price": [
      "is not a number"
    ]
  }
}
```

## Delete Item

- After deleting an item the server will respond with `204 No Content`.
- If item cannot be deleted (contains inventory moves) server will respond with `403 Forbidden`.

`DELETE /accounts/{slug}/inventory_items/{id}.json`

### Request

`DELETE /accounts/{slug}/inventory_items/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Inventory item ID | `Integer` | `27` |

### Response

`Status 204 No Content`

### Response if item cannot be deleted

`Status 422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "inventory_item": [
      "Inventory item with moves cannot be deleted"
    ]
  }
}
```

## Archive Item

- After archiving an item the server will respond with `200 OK` and a JSON body with its data.
- If item cannot be archived (does not contain inventory moves) server will respond with `403 Forbidden`.

`POST /accounts/{slug}/inventory_items/{id}/archive.json`

### Request

`POST /accounts/{slug}/inventory_items/{id}/archive.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Inventory item ID | `Integer` | `11` |

### Response

`Status 200 OK`

#### Body

```json
{
  "id": 11,
  "name": "Magic mouse",
  "sku": "KU994RUR9439",
  "article_number_type": "ian",
  "article_number": null,
  "unit_name": null,
  "track_quantity": true,
  "quantity": "1998.0",
  "min_quantity": "538.0",
  "max_quantity": "2167.0",
  "allow_below_zero": false,
  "low_quantity_date": null,
  "native_purchase_price": "500.0",
  "native_retail_price": "1000.0",
  "vat_rate": "standard",
  "average_native_purchase_price": "500.0",
  "supply_type": "goods",
  "archived": true,
  "private_note": null,
  "suggest_for": "invoices",
  "created_at": "2023-09-05T13:26:21.175+02:00",
  "updated_at": "2023-11-09T17:23:51.326+01:00"
}
```

### Response if item cannot be archived

`Status 403 Forbidden`

#### Body

```json
{
  "errors": {
    "inventory_item": [
      "Inventory item cannot be archived"
    ]
  }
}
```

## Unarchive Item

After unarchiving an item the server will respond with `200 OK` and a JSON body with its data.

`POST /accounts/{slug}/inventory_items/{id}/unarchive.json`

### Request

`POST /accounts/{slug}/inventory_items/{id}/unarchive.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Inventory item ID | `Integer" | `11` |

### Response

`Status 200 OK`

#### Body

```json
{
  "id": 11,
  "name": "Magic mouse",
  "sku": "KU994RUR9439",
  "article_number_type": "ian",
  "article_number": null,
  "unit_name": null,
  "track_quantity": true,
  "quantity": "1998.0",
  "min_quantity": "538.0",
  "max_quantity": "2167.0",
  "allow_below_zero": false,
  "low_quantity_date": null,
  "native_purchase_price": "500.0",
  "native_retail_price": "1000.0",
  "vat_rate": "standard",
  "average_native_purchase_price": "500.0",
  "supply_type": "goods",
  "archived": false,
  "private_note": null,
  "suggest_for": "invoices",
  "created_at": "2023-09-05T13:26:21.175+02:00",
  "updated_at": "2023-11-09T17:26:56.868+01:00"
}
```
