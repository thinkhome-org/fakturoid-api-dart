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
*   [Invoice Messages](/api/v3/invoice-messages)
*   [Expenses](/api/v3/expenses)
*   [Expense Payments](/api/v3/expense-payments)
*   [Inbox Files](/api/v3/inbox-files)
*   [Inventory Items](/api/v3/inventory-items)
*   [Inventory Moves](/api/v3/inventory-moves)
    *   [Attributes](#attributes)
    *   [Inventory Moves Index](#inventory-moves-index)
    *   [Inventory Move Detail](#inventory-move-detail)
    *   [Create Inventory Move](#create-inventory-move)
    *   [Update Inventory Move](#update-inventory-move)
    *   [Delete Inventory Move](#delete-inventory-move)
*   [Generators](/api/v3/generators)
*   [Recurring Generators](/api/v3/recurring-generators)
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)

# Inventory Moves

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Unique identifier in Fakturoid

Required attribute

`direction`

`String`

Move direction  
Values: `in`, `out`

Required attribute

`moved_on`

`Datetime`

Move date

Required attribute

`quantity_change`

`Decimal`

Item quantity in move

Required attribute

`purchase_price`

`Decimal`

Purchase price per unit (without VAT)

`purchase_currency`

`String`

Purchase currency  
Values: Currency code (3 characters). [See all supported currencies here.](https://www.fakturoid.cz/podpora/faktury/faktura-v-cizi-mene)  
Default: Inherit from account settings

`native_purchase_price`

`Decimal`

Unit purchase price in account currency

`retail_price`

`Decimal`

Retail price per unit

`retail_currency`

`String`

Retail currency  
Values: Currency code (3 characters)  
[List of supported currencies](https://www.fakturoid.cz/podpora/faktury/faktura-v-cizi-mene)  
Default: Inherit from account settings

`native_retail_price`

`Decimal`

Retail price in account currency

`private_note`

`Text`

Private note

Read-only attribute

`inventory_item_id`

`Integer`

Inventory item ID

Read-only attribute

`document`

`[Object](#document)`

Details about document and line the move is tied to  
Default: `null`

Read-only attribute

`created_at`

`DateTime`

Date and time of move creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last move update

### [Document](#document)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Document ID

Read-only attribute

`type`

`String`

Type of document  
Values: `Estimate`, `Expense`, `ExpenseGenerator`, `Generator`, `Invoice`

Read-only attribute

`line_id`

`Integer`

Document line ID

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Inventory Moves Index](#inventory-moves-index)

If query parameters `since`, `until`, `updated_since` and `updated_until` are not valid date time format ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)) the server will respond with `400 Bad Request`.

`GET` `/accounts/{slug}/inventory_moves.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inventory_moves.json` Copy

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

#### Query Parameters

Name

Description

Type

Example

`since`

Moves created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`until`

Moves created before this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_since`

Moves created or updated after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_until`

Moves created or updated before this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`page`

Page number (40 records per page)

`Integer`

`2`

`inventory_item_id`

Filter moves by inventory item ID

`Integer`

`1`

### Response

`Status` `200 OK`

#### Body

```
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
  },
  {
    "id": 24,
    "direction": "in",
    "moved_on": "2023-08-07",
    "quantity_change": "624.0",
    "purchase_price": "1978.0",
    "purchase_currency": "CZK",
    "native_purchase_price": "1978.0",
    "retail_price": null,
    "retail_currency": "CZK",
    "native_retail_price": null,
    "private_note": "3 letá záruka za příplatek. Disk je vybaven nejnovějším řadičem, který umožňuje dosahovat rychlosti čtení až 500 MB/s a zápisu 320 MB/s.",
    "inventory_item_id": 46,
    "document": {
      "id": 540,
      "type": "Invoice",
      "line_id": 1298
    },
    "created_at": "2023-09-05T13:26:21.041+02:00",
    "updated_at": "2023-09-05T13:26:21.041+02:00"
  },
  …
]
```

## [Inventory Move Detail](#inventory-move-detail)

`GET` `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json` Copy

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

`inventory_item_id`

Inventory item ID

`Integer`

`1`

`id`

Move ID

`Integer`

`12`

### Response

`Status` `200 OK`

#### Body

```
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
  },
  "created_at": "2023-09-05T13:26:20.968+02:00",
  "updated_at": "2023-09-05T13:26:20.968+02:00"
}
```

## [Create Inventory Move](#create-inventory-move)

*   If inventory move is successfully created the server will respond with `201 Created` and a JSON body with its data. A `Location` header will also be returned which contains a link to the newly created move.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`POST` `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves.json` Copy

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

`inventory_item_id`

Inventory item ID

`Integer`

`1`

#### Body

```
{
  "direction": "in",
  "moved_on": "2023-11-10",
  "quantity_change": "35",
  "purchase_price": "50"
}
```

### Response

`Status` `201 Created`

#### Headers

Name

Value

`Location`

`https://app.fakturoid.cz/api/v3/accounts/applecorp/inventory_items/1/inventory_moves/56.json`

#### Body

```
{
  "id": 51,
  "direction": "in",
  "moved_on": "2023-11-10",
  "quantity_change": "35.0",
  "purchase_price": "50.0",
  "purchase_currency": null,
  "native_purchase_price": "50.0",
  "retail_price": null,
  "retail_currency": "CZK",
  "native_retail_price": null,
  "private_note": null,
  "inventory_item_id": 1,
  "document": null,
  "created_at": "2023-11-10T15:47:46.269+01:00",
  "updated_at": "2023-11-10T15:47:46.269+01:00"
}
```

### Request with invalid data

#### Body

```
{
  "direction": "in",
  "moved_on": "2023-11-10",
  "quantity_change": "35"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "purchase_price": [
      "can't be blank"
    ]
  }
}
```

## [Update Inventory Move](#update-inventory-move)

*   If the inventory move is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.
*   When editing a move that is assigned to a document, you will receive `403 Forbidden` from the server.

`PATCH` `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json` Copy

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

`inventory_item_id`

Inventory item ID

`Integer`

`1`

`id`

Inventory move ID

`Integer`

`51`

#### Body

```
{
  "direction": "in",
  "moved_on": "2023-11-10",
  "quantity_change": "55",
  "purchase_price": "100"
}
```

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 51,
  "direction": "in",
  "moved_on": "2023-11-10",
  "quantity_change": "55.0",
  "purchase_price": "100.0",
  "purchase_currency": null,
  "native_purchase_price": "50.0",
  "retail_price": null,
  "retail_currency": "CZK",
  "native_retail_price": null,
  "private_note": null,
  "inventory_item_id": 1,
  "document": null,
  "created_at": "2023-11-10T15:47:46.269+01:00",
  "updated_at": "2023-11-10T16:00:08.073+01:00"
}
```

### Request with invalid data

#### Body

```
{
  "direction": "1"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "direction": [
      "is not included in the list",
      "cannot be changed"
    ]
  }
}
```

## [Delete Inventory Move](#delete-inventory-move)

After deleting a move the server will respond with `204 No Content`.

When deleting a move that is assigned to a document, you will receive `403 Forbidden` from the server.

`DELETE` `/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inventory_items/{inventory_item_id}/inventory_moves/{id}.json` Copy

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

`inventory_item_id`

Inventory item ID

`Integer`

`1`

`id`

Inventory move ID

`Integer`

`51`

### Response

`Status` `204 No Content`

* * *

1.  [API v3](/api/v3)→
2.  [Inventory Moves](/api/v3/inventory-moves)