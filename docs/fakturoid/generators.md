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
*   [Generators](/api/v3/generators)
    *   [Attributes](#attributes)
    *   [Generators Index](#generators-index)
    *   [Generator Detail](#generator-detail)
    *   [Create Generator](#create-generator)
    *   [Update Generator](#update-generator)
    *   [Delete Generator](#delete-generator)
*   [Recurring Generators](/api/v3/recurring-generators)
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)

# Generators

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Unique identifier in Fakturoid

`custom_id`

`String`

Identifier in your application

Required attribute

`name`

`String`

Template name

`proforma`

`Boolean`

Issue invoice as a proforma  
Default: `false`

`paypal`

`Boolean`

Show PayPal pay button on invoice  
Default: `false`

`gopay`

`Boolean`

Show GoPay pay button on invoice  
Default: `false`

`tax_date_at_end_of_last_month`

`Boolean`

Set CED at the end of last month  
Default: `false`

`due`

`Integer`

Number of days until the invoice is overdue  
Default: Inherit from account settings

Required attribute

`subject_id`

`Integer`

Subject ID

`number_format_id`

`Integer`

Number format ID  
Default: Inherit from default account settings

`note`

`String`

Text before invoice lines

`footer_note`

`String`

Text in invoice footer

Read-only attribute

`legacy_bank_details`

`[Object](#legacy-bank-details)`

Display IBAN, BIC (SWIFT) and bank account number for legacy templates set without bank account ID  
Default: `null`

`bank_account_id`

`Integer`

Bank account ID  
Default: Inherit from account settings

`iban_visibility`

`String`

Controls IBAN visibility on the document webinvoice and PDF. IBAN must be valid to show  
Values: `automatically`, `always`  
Default: `automatically`

`tags`

`Array[String]`

List of tags

`order_number`

`String`

Order number

`currency`

`String`

[Currency ISO code](https://en.wikipedia.org/wiki/ISO_4217)  
Default: Inherit from account settings

`exchange_rate`

`Decimal`

Exchange rate

`payment_method`

`String`

Payment method  
Values: `bank`, `cash`, `cod` (cash on delivery), `card`, `paypal`, `custom`  
Default: Inherit from account settings

`custom_payment_method`

`String`

Custom payment method (`payment_method` attribute must be set to `custom`, otherwise the `custom_payment_method` value is ignored and set to `null`)  
Value: String up to 20 characters  
Default: Inherit from account settings if default account payment method is set to `custom`

`language`

`String`

Invoice language  
Values: `cz`, `sk`, `en`, `de`, `fr`, `it`, `es`, `ru`, `pl`, `hu`, `ro`  
Default: Inherit from account settings

`vat_price_mode`

`String`

Calculate VAT from base or final amount, [more info in a table below](#vat-price-mode)  
Values: `without_vat`, `from_total_with_vat`  
Default: Inherit from account settings

`transferred_tax_liability`

`Boolean`

Use reverse charge  
Default: `false`

`supply_code`

`Integer`

Supply code for reverse charge  
[List of codes](https://www.fakturoid.cz/podpora/ucetnictvi/prenesena-danova-povinnost-dph)

`oss`

`String`

Use OSS mode on invoice  
Values: `disabled`, `service`, `goods`  
Default: `disabled`

Write-only attribute

`round_total`

`Boolean`

Round total amount (VAT included)  
Default: `false`

Read-only attribute

`subtotal`

`Decimal`

Total amount without VAT

Read-only attribute

`total`

`Decimal`

Total amount with VAT

Read-only attribute

`native_subtotal`

`Decimal`

Total amount without VAT in the account currency

Read-only attribute

`native_total`

`Decimal`

Total amount with VAT in the account currency

Read-only attribute

`rounding_adjustment`

`Decimal`

Rounding adjustment resulting from the total amount not subject to VAT  
Default: `0.0`

`lines`

`Array[[Object](#lines)]`

List of lines to invoice

Read-only attribute

`html_url`

`String`

Template HTML web address

Read-only attribute

`url`

`String`

Template API address

Read-only attribute

`subject_url`

`String`

API address of subject

Read-only attribute

`created_at`

`DateTime`

Date and time of template creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last template update

### [VAT Price Mode](#vat-price-mode)

`vat_price_mode` settings is ignored in following cases:

*   Account is set as non VAT payer.
*   Reverse charge (`transferred_tax_liability`) is used.

Attribute

Description

`null`

Inherited automatically from the account settings

`"without_vat"`

The price in the invoice line is entered without VAT and the VAT is calculated automatically as a percentage from the line

`"from_total_with_vat"`

The price in the invoice line is inclusive of VAT and the VAT is calculated from it

### [Lines](#lines)

#### [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Unique identifier in Fakturoid

Required attribute

`name`

`String`

Line name

`quantity`

`Decimal`

Quantity  
Default: `1`

`unit_name`

`String`

Unit name

Required attribute

`unit_price`

`Decimal`

Unit price

`vat_rate`

`Integer`/`Decimal`

VAT Rate  
Default: `0`

Read-only attribute

`unit_price_without_vat`

`Decimal`

Unit price without VAT

Read-only attribute

`unit_price_with_vat`

`Decimal`

Unit price including VAT

Read-only attribute

`total_price_without_vat`

`Decimal`

Total price without VAT

Read-only attribute

`total_vat`

`Decimal`

Total VAT

Read-only attribute

`native_total_price_without_vat`

`Decimal`

Total price without VAT in account currency

Read-only attribute

`native_total_vat`

`Decimal`

Total VAT in account currency

Write-only attribute

`inventory_item_id`

`Integer`

ID of the related inventory item, use this to set an ID during document creation

Write-only attribute

`sku`

`String`

Stock Keeping Unit (SKU), use this to load data from an inventory item with matching SKU code.  
You can specify the other writable attributes as well and they will override the values from the inventory item.

Read-only attribute

`inventory`

`[Object](#inventory)`

Inventory information  
Default: `null`

#### [Inventory](#inventory)

Attribute

Type

Description

Read-only attribute

`item_id`

`Integer`

ID of the related inventory item

Read-only attribute

`sku`

`String`

Stock Keeping Unit (SKU)

Read-only attribute

`article_number_type`

`String`

Article number type (only if `article_number` is present)  
Values: `ian`, `ean`, `isbn`

Read-only attribute

`article_number`

`String`

Article number (if present)

Read-only attribute

`move_id`

`Integer`

ID of the related inventory move

#### [Line Example](#line-example)

```
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

When editing a document, it is important to send the line `ID` with the lines, without it the line will be added again.

The `unit_price_without_vat` and `unit_price_with_vat` attributes are read-only and are set based on the amount entered in `unit_price`, the `vat_rate` and the `vat_price_mode` attribute.

The `unit_price_without_vat` and `unit_price_with_vat` attributes have the same value in the following cases:

*   The VAT rate is set to 0.
*   Reverse charge is enabled (if reverse charge is enabled on the document, `the vat_price_mode` setting is ignored).

You can use [variables](https://www.fakturoid.cz/podpora/faktury/promenne-v-sablonach-faktur) in recurring generators for inserting dates to your text.

#### [More Examples](#more-examples)

##### [Unit price without VAT](#unit-price-without-vat)

###### [Request](#request)

```
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

###### [Response](#response)

```
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

##### [Unit price with VAT](#unit-price-with-vat)

###### [Request](#request)

```
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

###### [Response](#response)

```
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

#### [Delete Line](#delete-line)

For deleting the line the attribute `_destroy: true` must be included:

```
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

### [Legacy Bank Details](#legacy-bank-details)

Attribute

Type

Description

Read-only attribute

`bank_account`

`String`

Bank account number

Read-only attribute

`iban`

`String`

IBAN

Read-only attribute

`swift_bic`

`String`

BIC (for SWIFT payments)

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Generators Index](#generators-index)

If query parameters `since` and `updated_since` are not valid date time format ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)) the server will respond with `400 Bad Request`.

`GET` `/accounts/{slug}/generators.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators.json` Copy

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

Generators created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_since`

Generators created or updated after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`page`

Page number (40 records per page)

`Integer`

`2`

`subject_id`

Generators for subject

`Integer`

`24`

### Response

`Status` `200 OK`

#### Body

```
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

## [Generator Detail](#generator-detail)

`GET` `/accounts/{slug}/generators/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators/{id}.json` Copy

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

`id`

Generator ID

`Integer`

`1`

### Response

`Status` `200 OK`

#### Body

```
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

## [Create Generator](#create-generator)

*   After successful template creation, you will receive a `201 Created` response from the server, the `location` header will be set to the address of the newly created template.
*   If non-valid data is sent, you will receive a `422 Unprocessable Content` response from the server and a JSON with a list of errors in the sent data.
*   In the case where no bank account is specified in Fakturoid account, the API returns a `403 Forbidden`. The body of the response will contain a description of the error with a link to the bank account settings (bank account cannot be entered via the API).

`POST` `/accounts/{slug}/generators.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators.json` Copy

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

#### Body

```
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

Name

Value

`Location`

`https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/14.json`

#### Body

```
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

```
{
  "name": ""
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
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

```
{
  "errors": {
    "bank_account": [
      "You have to setup bank account in your Fakturoid account https://app.fakturoid.cz/applecorp/settings/bank_accounts to create a generator."
    ]
  }
}
```

## [Update Generator](#update-generator)

*   If generator is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`PATCH` `/accounts/{slug}/generators/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators/{id}.json` Copy

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

`id`

Generator ID

`Integer`

`17`

#### Body

```
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

```
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

```
{
  "oss": "invoice"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "oss": [
      "není v seznamu povolených hodnot"
    ]
  }
}
```

## [Delete Generator](#delete-generator)

After deleting the template the server will respond with `204 No Content`.

`DELETE` `/accounts/{slug}/generators/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/generators/{id}.json` Copy

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

`id`

Generator ID

`Integer`

`1`

### Response

`Status` `204 No Content`

* * *

1.  [API v3](/api/v3)→
2.  [Generators](/api/v3/generators)