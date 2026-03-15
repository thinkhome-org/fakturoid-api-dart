# Generators

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `custom_id` | `String` | Identifier in your application |
| `name` **(required)** | `String` | Template name |
| `proforma` | `Boolean` | Issue invoice as a proforma. Default: `false` |
| `paypal` | `Boolean` | Show PayPal pay button on invoice. Default: `false` |
| `gopay` | `Boolean` | Show GoPay pay button on invoice. Default: `false` |
| `tax_date_at_end_of_last_month` | `Boolean` | Set CED at the end of last month. Default: `false` |
| `due` | `Integer` | Number of days until the invoice is overdue. Default: inherit from account settings |
| `subject_id` **(required)** | `Integer` | Subject ID |
| `number_format_id` | `Integer` | Number format ID. Default: inherit from default account settings |
| `note` | `String` | Text before invoice lines |
| `footer_note` | `String` | Text in invoice footer |
| `legacy_bank_details` | `Object` | Display IBAN, BIC (SWIFT) and bank account number for legacy templates set without bank account ID. Default: `null` |
| `bank_account_id` | `Integer` | Bank account ID. Default: inherit from account settings |
| `iban_visibility` | `String` | Controls IBAN visibility on the document webinvoice and PDF. IBAN must be valid to show. Values: `automatically`, `always`. Default: `automatically` |
| `tags` | `Array[String]` | List of tags |
| `order_number` | `String` | Order number |
| `currency` | `String` | Currency ISO code. Default: inherit from account settings |
| `exchange_rate` | `Decimal` | Exchange rate |
| `payment_method` | `String` | Payment method. Values: `bank`, `cash`, `cod`, `card`, `paypal`, `custom`. Default: inherit from account settings |
| `custom_payment_method` | `String` | Custom payment method (`payment_method` must be `custom`, otherwise value is ignored and set to `null`). Up to 20 characters. Default: inherit from account settings if default account payment method is `custom` |
| `language` | `String` | Invoice language. Values: `cz`, `sk`, `en`, `de`, `fr`, `it`, `es`, `ru`, `pl`, `hu`, `ro`. Default: inherit from account settings |
| `vat_price_mode` | `String` | Calculate VAT from base or final amount. Values: `without_vat`, `from_total_with_vat`. Default: inherit from account settings |
| `transferred_tax_liability` | `Boolean` | Use reverse charge. Default: `false` |
| `supply_code` | `Integer` | Supply code for reverse charge |
| `oss` | `String` | Use OSS mode on invoice. Values: `disabled`, `service`, `goods`. Default: `disabled` |
| `round_total` | `Boolean` | Round total amount (VAT included). Default: `false` |
| `subtotal` *(read-only)* | `Decimal` | Total amount without VAT |
| `total` *(read-only)* | `Decimal` | Total amount with VAT |
| `native_subtotal` *(read-only)* | `Decimal` | Total amount without VAT in the account currency |
| `native_total` *(read-only)* | `Decimal` | Total amount with VAT in the account currency |
| `rounding_adjustment` *(read-only)* | `Decimal` | Rounding adjustment resulting from the total amount not subject to VAT. Default: `0.0` |
| `lines` | `Array[Object]` | List of lines to invoice |
| `html_url` *(read-only)* | `String` | Template HTML web address |
| `url` *(read-only)* | `String` | Template API address |
| `subject_url` *(read-only)* | `String` | API address of subject |
| `created_at` *(read-only)* | `DateTime` | Date and time of template creation |
| `updated_at` *(read-only)* | `DateTime` | Date and time of last template update |

### VAT Price Mode

`vat_price_mode` settings is ignored in following cases:

- Account is set as non VAT payer.
- Reverse charge (`transferred_tax_liability`) is used.

| Attribute | Description |
|---|---|
| `null` | Inherited automatically from the account settings |
| `"without_vat"` | The price in the invoice line is entered without VAT and the VAT is calculated automatically as a percentage from the line |
| `"from_total_with_vat"` | The price in the invoice line is inclusive of VAT and the VAT is calculated from it |

### Lines

#### Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `name` **(required)** | `String` | Line name |
| `quantity` | `Decimal` | Quantity. Default: `1` |
| `unit_name` | `String` | Unit name |
| `unit_price` **(required)** | `Decimal` | Unit price |
| `vat_rate` **(required)** | `Integer` / `Decimal` | VAT rate. Default: `0` |
| `unit_price_without_vat` *(read-only)* | `Decimal` | Unit price without VAT |
| `unit_price_with_vat` *(read-only)* | `Decimal` | Unit price including VAT |
| `total_price_without_vat` *(read-only)* | `Decimal` | Total price without VAT |
| `total_vat` *(read-only)* | `Decimal` | Total VAT |
| `native_total_price_without_vat` *(read-only)* | `Decimal` | Total price without VAT in account currency |
| `native_total_vat` *(read-only)* | `Decimal` | Total VAT in account currency |
| `inventory_item_id` | `Integer` | ID of the related inventory item, use this to set an ID during document creation |
| `sku` | `String` | Stock Keeping Unit (SKU), use this to load data from an inventory item with matching SKU code. Other writable attributes may be specified too; they override values from the inventory item |
| `inventory` *(read-only)* | `Object` | Inventory information. Default: `null` |

#### Inventory

| Attribute | Type | Description |
|---|---|---|
| `item_id` *(read-only)* | `Integer` | ID of the related inventory item |
| `sku` *(read-only)* | `String` | Stock Keeping Unit (SKU) |
| `article_number_type` *(read-only)* | `String` | Article number type (only if `article_number` is present). Values: `ian`, `ean`, `isbn` |
| `article_number` *(read-only)* | `String` | Article number (if present) |
| `move_id` *(read-only)* | `Integer` | ID of the related inventory move |

#### Line Example

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
  "total_vat": "420.0",
  "native_total_price_without_vat": "2000.0",
  "native_total_vat": "420.0",
  "inventory": {
    "item_id": 28,
    "sku": "KU994RUR8465",
    "article_number_type": "ian",
    "article_number": "32165478",
    "move_id": 52
  }
}
```

When editing a document, it is important to send the line `ID` with the lines, without it the line will be added again.

The `unit_price_without_vat` and `unit_price_with_vat` attributes are read-only and are set based on the amount entered in `unit_price`, the `vat_rate` and the `vat_price_mode` attribute.

The `unit_price_without_vat` and `unit_price_with_vat` attributes have the same value in the following cases:

- The VAT rate is set to `0`.
- Reverse charge is enabled (if reverse charge is enabled on the document, the `vat_price_mode` setting is ignored).

You can use variables in recurring generators for inserting dates to your text.

#### More Examples

##### Unit price without VAT

###### Request

```json
{
  "vat_price_mode": "without_vat",
  …
  "lines": [
    {
      …
      "unit_price": "1000.0",
      "vat_rate": "21"
    }
  ]
}
```

###### Response

```json
{
  …
  "vat_price_mode": "without_vat",
  …
  "lines": [
    {
      …
      "unit_price": "1000.0",
      "vat_rate": "21",
      "unit_price_without_vat": "1000.0",
      "unit_price_with_vat": "1210.0"
    }
  ]
}
```

##### Unit price with VAT

###### Request

```json
{
  …
  "vat_price_mode": "from_total_with_vat",
  …
  "lines": [
    {
      …
      "unit_price": "1210.0",
      "vat_rate": "21"
    }
  ]
}
```

###### Response

```json
{
  …
  "vat_price_mode": "from_total_with_vat",
  …
  "lines": [
    {
      …
      "unit_price": "1000.0",
      "vat_rate": "21",
      "unit_price_without_vat": "1000.0",
      "unit_price_with_vat": "1210.0"
    }
  ]
}
```

#### Delete Line

For deleting the line the attribute `_destroy: true` must be included:

```json
{
  "id": 1234,
  "name": "PC",
  "quantity": "1.0",
  "unit_name": "",
  "unit_price": "20000.0",
  "vat_rate": 21,
  "_destroy": true
}
```

### Legacy Bank Details

| Attribute | Type | Description |
|---|---|---|
| `bank_account` *(read-only)* | `String` | Bank account number |
| `iban` *(read-only)* | `String` | IBAN |
| `swift_bic` *(read-only)* | `String` | BIC (for SWIFT payments) |

- **(required)** — must always be present.
- *(read-only)* — cannot be changed.
- *(write-only)* — will not be returned.
- Unmarked attributes are optional and can be omitted during request.

## Generators Index

If query parameters `since` and `updated_since` are not valid date time format (ISO 8601) the server will respond with `400 Bad Request`.

`GET` `/accounts/{slug}/generators.json`

### Request

`GET` `/accounts/{slug}/generators.json`

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
| `since` | Generators created after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `updated_since` | Generators created or updated after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `page` | Page number (40 records per page) | `Integer` | `2` |
| `subject_id` | Generators for subject | `Integer` | `24` |

### Response

`Status` `200 OK`

#### Body

```json
[
  {
    "id": 10,
    "custom_id": null,
    "name": "Školení",
    "proforma": false,
    "paypal": false,
    "gopay": false,
    "tax_date_at_end_of_last_month": false,
    "due": 10,
    "subject_id": 32,
    "number_format_id": null,
    "note": "",
    "footer_note": "",
    "legacy_bank_details": null,
    "bank_account_id": null,
    "iban_visibility": "automatically",
    "tags": [],
    "order_number": "",
    "currency": "CZK",
    "payment_method": "bank",
    "custom_payment_method": null,
    "exchange_rate": "1.0",
    "language": "cz",
    "vat_price_mode": "without_vat",
    "transferred_tax_liability": false,
    "oss": "disabled",
    "supply_code": "",
    "subtotal": "28044.0",
    "total": "33933.24",
    "native_subtotal": "28044.0",
    "native_total": "33933.24",
    "lines": [
      {
        "id": 1269,
        "name": "Školení personálu",
        "quantity": "4.0",
        "unit_name": "lidi",
        "unit_price": "7000.0",
        "vat_rate": 21,
        "unit_price_without_vat": "7000.0",
        "unit_price_with_vat": "8470.0",
        "inventory_item_id": null
      },
      {
        "id": 1278,
        "name": "Občerstvení",
        "quantity": "1.0",
        "unit_name": "",
        "unit_price": "44.0",
        "vat_rate": 21,
        "unit_price_without_vat": "44.0",
        "unit_price_with_vat": "53.24",
        "inventory_item_id": null
      }
    ],
    "html_url": "https://app.fakturoid.cz/applecorp/generators/10",
    "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/10.json",
    "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/32.json",
    "created_at": "2023-09-05T13:26:20.806+02:00",
    "updated_at": "2023-09-26T12:00:21.083+02:00"
  },
  …
]
```

## Generator Detail

`GET` `/accounts/{slug}/generators/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Generator ID | `Integer` | `1` |

### Response

`Status` `200 OK`

#### Body

```json
{
  "id": 10,
  "custom_id": null,
  "name": "Školení",
  "proforma": false,
  "paypal": false,
  "gopay": false,
  "tax_date_at_end_of_last_month": false,
  "due": 10,
  "subject_id": 32,
  "number_format_id": null,
  "note": "",
  "footer_note": "",
  "legacy_bank_details": null,
  "bank_account_id": null,
  "iban_visibility": "automatically",
  "tags": [],
  "order_number": "",
  "currency": "CZK",
  "payment_method": "bank",
  "exchange_rate": "1.0",
  "language": "cz",
  "vat_price_mode": "without_vat",
  "transferred_tax_liability": false,
  "oss": "disabled",
  "supply_code": "",
  "subtotal": "28044.0",
  "total": "33933.24",
  "native_subtotal": "28044.0",
  "native_total": "33933.24",
  "lines": [
    {
      "id": 1269,
      "name": "Školení personálu",
      "quantity": "4.0",
      "unit_name": "lidi",
      "unit_price": "7000.0",
      "vat_rate": 21,
      "unit_price_without_vat": "7000.0",
      "unit_price_with_vat": "8470.0",
      "inventory_item_id": null
    },
    {
      "id": 1278,
      "name": "Pronájem prostor",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "44.0",
      "vat_rate": 21,
      "unit_price_without_vat": "44.0",
      "unit_price_with_vat": "53.24",
      "inventory_item_id": null
    }
  ],
  "html_url": "https://app.fakturoid.cz/applecorp/generators/10",
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/10.json",
  "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/32.json",
  "created_at": "2023-09-05T13:26:20.806+02:00",
  "updated_at": "2023-09-26T12:00:21.083+02:00"
}
```

## Create Generator

- After successful template creation, you will receive a `201 Created` response from the server, the `location` header will be set to the address of the newly created template.
- If non-valid data is sent, you will receive a `422 Unprocessable Content` response from the server and a JSON with a list of errors in the sent data.
- If no bank account is specified in Fakturoid account, the API returns a `403 Forbidden`. The body of the response will contain a description of the error with a link to the bank account settings.

`POST` `/accounts/{slug}/generators.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators.json`

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
  "name": "Předplatné",
  "proforma": true,
  "due": "10",
  "subject_id": "37",
  "order_number": "01X4",
  "lines": [
    {
      "name": "Předplatné 06/2024",
      "quantity": "1.0",
      "unit_price": "1500",
      "vat_rate": "21"
    }
  ]
}
```

### Response

`Status` `201 Created`

#### Headers

| Name | Value |
|---|---|
| `Location` | `https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/14.json` |

#### Body

```json
{
  "id": 14,
  "custom_id": null,
  "name": "Předplatné",
  "proforma": true,
  "paypal": false,
  "gopay": false,
  "tax_date_at_end_of_last_month": false,
  "due": 10,
  "subject_id": 37,
  "number_format_id": null,
  "note": null,
  "footer_note": null,
  "legacy_bank_details": null,
  "bank_account_id": null,
  "iban_visibility": "automatically",
  "tags": [],
  "order_number": "01X4",
  "currency": "CZK",
  "payment_method": "bank",
  "exchange_rate": "1.0",
  "language": "cz",
  "vat_price_mode": "without_vat",
  "transferred_tax_liability": false,
  "oss": "disabled",
  "supply_code": null,
  "subtotal": "1500.0",
  "total": "1815.0",
  "native_subtotal": "1500.0",
  "native_total": "1815.0",
  "lines": [
    {
      "id": 1280,
      "name": "Předplatné 06/2024",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "1500.0",
      "vat_rate": 21,
      "unit_price_without_vat": "1500.0",
      "unit_price_with_vat": "1815.0",
      "inventory_item_id": null
    }
  ],
  "html_url": "https://app.fakturoid.cz/applecorp/generators/14",
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/14.json",
  "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/37.json",
  "created_at": "2023-10-09T14:03:10.233+02:00",
  "updated_at": "2023-10-09T14:03:10.233+02:00"
}
```

### Request with invalid data

#### Body

```json
{
  "name": ""
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "name": [
      "je povinná položka"
    ]
  }
}
```

### Response if missing bank account

`Status` `403 Forbidden`

#### Body

```json
{
  "errors": {
    "bank_account": [
      "You have to setup bank account in your Fakturoid account https://app.fakturoid.cz/applecorp/settings/bank_accounts to create a generator."
    ]
  }
}
```

## Update Generator

- If generator is successfully updated the server will respond with `200 OK` and a JSON body with its data.
- Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`PATCH` `/accounts/{slug}/generators/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |
| `Content-Type` | `application/json` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Generator ID | `Integer` | `17` |

#### Body

```json
{
  "name": "Konference",
  "lines": [
    {
      "name": "Organizace",
      "quantity": "1",
      "unit_price": "20000",
      "vat_rate": 21
    }
  ]
}
```

### Response

`Status` `200 OK`

#### Body

```json
{
  "id": 17,
  "custom_id": null,
  "name": "Konference",
  "proforma": false,
  "paypal": false,
  "gopay": false,
  "tax_date_at_end_of_last_month": false,
  "due": 14,
  "subject_id": 17,
  "number_format_id": null,
  "note": "",
  "footer_note": "",
  "legacy_bank_details": null,
  "bank_account_id": null,
  "iban_visibility": "automatically",
  "tags": [],
  "order_number": "",
  "currency": "CZK",
  "payment_method": "bank",
  "exchange_rate": "1.0",
  "language": "cz",
  "vat_price_mode": "without_vat",
  "transferred_tax_liability": false,
  "oss": "disabled",
  "supply_code": "",
  "subtotal": "20040.0",
  "total": "24240.0",
  "native_subtotal": "20040.0",
  "native_total": "24240.0",
  "lines": [
    {
      "id": 1283,
      "name": "Poplatky",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "40.0",
      "vat_rate": 0,
      "unit_price_without_vat": "40.0",
      "unit_price_with_vat": "40.0",
      "inventory_item_id": null
    },
    {
      "id": 1288,
      "name": "Organizace",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "20000.0",
      "vat_rate": 21,
      "unit_price_without_vat": "20000.0",
      "unit_price_with_vat": "24200.0",
      "inventory_item_id": null
    }
  ],
  "html_url": "https://app.fakturoid.cz/applecorp/generators/17",
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/17.json",
  "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/17.json",
  "created_at": "2023-10-09T14:13:54.839+02:00",
  "updated_at": "2023-10-09T17:12:07.281+02:00"
}
```

### Request with invalid data

#### Body

```json
{
  "oss": "invoice"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "oss": [
      "není v seznamu povolených hodnot"
    ]
  }
}
```

## Delete Generator

After deleting the template the server will respond with `204 No Content`.

`DELETE` `/accounts/{slug}/generators/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Generator ID | `Integer` | `1` |

### Response

`Status` `204 No Content`
