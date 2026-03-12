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
*   [Recurring Generators](/api/v3/recurring-generators)
    *   [Attributes](#attributes)
    *   [Recurring Generators Index](#recurring-generators-index)
    *   [Recurring Generator Detail](#recurring-generator-detail)
    *   [Create Recurring Generator](#create-recurring-generator)
    *   [Update Recurring Generator](#update-recurring-generator)
    *   [Pause Recurring Generator](#pause-recurring-generator)
    *   [Activate Recurring Generator](#activate-recurring-generator)
    *   [Delete Recurring Generator](#delete-recurring-generator)
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)

# Recurring Generators

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

Generator name

Read-only attribute

`active`

`Boolean`

Generator is active or paused  
Values: `true` (active), `false` (paused)  
Default: `true`

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

Required attribute

`start_date`

`Date`

Start date

`end_date`

`Date`

End date

Required attribute

`months_period`

`Integer`

Number of months until the next invoice

`next_occurrence_on`

`Date`

Next invoice date

`last_day_in_month`

`Boolean`

Issue an invoice on the last day of the month  
Default: `false`

`tax_date_at_end_of_last_month`

`Boolean`

Set CED at the end of last month  
Default: `false`

`due`

`Integer`

Number of days until the invoice is overdue  
Default: Inherit from account settings

`send_email`

`Boolean`

Send invoice by email  
Default: `false`

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

Display IBAN, BIC (SWIFT) and bank account number for legacy generators set without bank account ID  
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

List of lines to invoice. You can use [variables](https://www.fakturoid.cz/podpora/faktury/promenne-v-sablonach-faktur) for inserting dates to your text.

Read-only attribute

`html_url`

`String`

Generator HTML web address

Read-only attribute

`url`

`String`

Generator API address

Read-only attribute

`subject_url`

`String`

API address of subject

Read-only attribute

`created_at`

`DateTime`

Date and time of generator creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last generator update

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
    

## [Recurring Generators Index](#recurring-generators-index)

If query parameters `since` and `updated_since` are not valid date time format ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)) the server will respond with `400 Bad Request`.

`GET` `/accounts/{slug}/recurring_generators.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/recurring_generators.json` Copy

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

Recurring generators created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_since`

Recurring generators created or updated after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`page`

Page number (40 records per page)

`Integer`

`2`

`subject_id`

Recurring generators for subject

`Integer`

`24`

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "id": 24,
    "custom_id": null,
    "name": "Vývoj",
    "active": true,
    "proforma": false,
    "paypal": false,
    "gopay": false,
    "start_date": "2023-10-11",
    "end_date": null,
    "months_period": 12,
    "next_occurrence_on": "2024-10-11",
    "last_day_in_month": false,
    "tax_date_at_end_of_last_month": false,
    "due": 14,
    "send_email": false,
    "subject_id": 37,
    "number_format_id": null,
    "note": null,
    "footer_note": null,
    "legacy_bank_details": null,
    "bank_account_id": null,
    "iban_visibility": "always",
    "tags": [
      "štítek"
    ],
    "order_number": null,
    "currency": "CZK",
    "payment_method": "bank",
    "custom_payment_method": null,
    "exchange_rate": "1.0",
    "language": "cz",
    "vat_price_mode": "without_vat",
    "transferred_tax_liability": false,
    "oss": "disabled",
    "supply_code": null,
    "subtotal": "50550.0",
    "total": "61165.5",
    "native_subtotal": "50550.0",
    "native_total": "61165.5",
    "lines": [
      {
        "id": 1292,
        "name": "One plan",
        "quantity": "1.0",
        "unit_name": "",
        "unit_price": "550.0",
        "vat_rate": 21,
        "unit_price_without_vat": "550.0",
        "unit_price_with_vat": "665.5",
        "inventory_item_id": null
      },
      {
        "id": 1294,
        "name": "Napojení na Fakturoid",
        "quantity": "1.0",
        "unit_name": "",
        "unit_price": "50000.0",
        "vat_rate": 21,
        "unit_price_without_vat": "50000.0",
        "unit_price_with_vat": "60500.0",
        "inventory_item_id": null
      }
    ],
    "html_url": "https://app.fakturoid.cz/applecorp/recurring_generators/24",
    "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/24.json",
    "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/37.json",
    "created_at": "2023-10-11T13:38:21.603+02:00",
    "updated_at": "2023-10-11T19:59:20.290+02:00"
  },
  …
]
```

## [Recurring Generator Detail](#recurring-generator-detail)

`GET` `/accounts/{slug}/recurring_generators/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/recurring_generators/{id}.json` Copy

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

Recurring generator ID

`Integer`

`24`

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 24,
  "custom_id": null,
  "name": "Vývoj",
  "active": true,
  "proforma": false,
  "paypal": false,
  "gopay": false,
  "start_date": "2023-10-11",
  "end_date": null,
  "months_period": 12,
  "next_occurrence_on": "2024-10-11",
  "last_day_in_month": false,
  "tax_date_at_end_of_last_month": false,
  "due": 14,
  "send_email": false,
  "subject_id": 37,
  "number_format_id": null,
  "note": null,
  "footer_note": null,
  "legacy_bank_details": null,
  "bank_account_id": null,
  "iban_visibility": "always",
  "tags": [
    "štítek"
  ],
  "order_number": null,
  "currency": "CZK",
  "payment_method": "bank",
  "custom_payment_method": null,
  "exchange_rate": "1.0",
  "language": "cz",
  "vat_price_mode": "without_vat",
  "transferred_tax_liability": false,
  "oss": "disabled",
  "supply_code": null,
  "subtotal": "50550.0",
  "total": "61165.5",
  "native_subtotal": "50550.0",
  "native_total": "61165.5",
  "lines": [
    {
      "id": 1292,
      "name": "One plan",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "550.0",
      "vat_rate": 21,
      "unit_price_without_vat": "550.0",
      "unit_price_with_vat": "665.5",
      "inventory_item_id": null
    },
    {
      "id": 1294,
      "name": "Napojení na Fakturoid",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "50000.0",
      "vat_rate": 21,
      "unit_price_without_vat": "50000.0",
      "unit_price_with_vat": "60500.0",
      "inventory_item_id": null
    }
  ],
  "html_url": "https://app.fakturoid.cz/applecorp/recurring_generators/24",
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/24.json",
  "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/37.json",
  "created_at": "2023-10-11T13:38:21.603+02:00",
  "updated_at": "2023-10-12T20:56:18.345+02:00"
}
```

## [Create Recurring Generator](#create-recurring-generator)

*   After successful generator creation, you will receive a `201 Created` response from the server, the `location` header will be set to the address of the newly created generator.
*   If non-valid data is sent, you will receive a `422 Unprocessable Content` response from the server and a JSON with a list of errors in the sent data.
*   In the case where no bank account is specified in Fakturoid account, the API returns a `403 Forbidden`. The body of the response will contain a description of the error with a link to the bank account settings (bank account cannot be entered via the API).
*   Only one recurring generator is allowed on the Zdarma, Na lehko and Na každý den plans, if you try to add another, the server will return `403 Forbidden`.

`POST` `/accounts/{slug}/recurring_generators.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/recurring_generators.json` Copy

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
  "name": "Web service",
  "start_date": "2023-10-13",
  "months_period": "12",
  "subject_id": "37",
  "lines": [
    {
      "name": "One plan",
      "quantity": "1",
      "unit_price": "550",
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

`https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/28.json`

#### Body

```
{
  "id": 28,
  "custom_id": null,
  "name": "Web service",
  "active": true,
  "proforma": false,
  "paypal": false,
  "gopay": false,
  "start_date": "2023-10-13",
  "end_date": null,
  "months_period": 12,
  "next_occurrence_on": "2023-10-13",
  "last_day_in_month": false,
  "tax_date_at_end_of_last_month": false,
  "due": 14,
  "send_email": false,
  "subject_id": 37,
  "number_format_id": null,
  "note": null,
  "footer_note": null,
  "legacy_bank_details": null,
  "bank_account_id": null,
  "iban_visibility": "automatically",
  "tags": [],
  "order_number": null,
  "currency": "CZK",
  "payment_method": "bank",
  "custom_payment_method": null,
  "exchange_rate": "1.0",
  "language": "cz",
  "vat_price_mode": "without_vat",
  "transferred_tax_liability": false,
  "oss": "disabled",
  "supply_code": null,
  "subtotal": "550.0",
  "total": "665.5",
  "native_subtotal": "550.0",
  "native_total": "665.5",
  "lines": [
    {
      "id": 1299,
      "name": "One plan",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "550.0",
      "vat_rate": 21,
      "unit_price_without_vat": "550.0",
      "unit_price_with_vat": "665.5",
      "inventory_item_id": null
    }
  ],
  "html_url": "https://app.fakturoid.cz/applecorp/recurring_generators/28",
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/28.json",
  "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/37.json",
  "created_at": "2023-10-12T21:16:35.730+02:00",
  "updated_at": "2023-10-12T21:16:35.730+02:00"
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
      "je povinná položka",
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
      "You have to setup bank account in your Fakturoid account https://app.fakturoid.cz/applecorp/settings/bank_accounts to create a generator.",
    ]
  }
}
```

### Response if cannot add more generators (limit would be exceeded)

`Status` `403 Forbidden`

## [Update Recurring Generator](#update-recurring-generator)

*   If generator is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`PATCH` `/accounts/{slug}/recurring_generators/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/recurring_generators/{id}.json` Copy

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

Recurring generator ID

`Integer`

`24`

#### Body

```
{
  "name": "Web UI"
}
```

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 28,
  "custom_id": null,
  "name": "Web UI",
  "active": true,
  "proforma": false,
  "paypal": false,
  "gopay": false,
  "start_date": "2023-10-13",
  "end_date": null,
  "months_period": 12,
  "next_occurrence_on": "2023-10-13",
  "last_day_in_month": false,
  "tax_date_at_end_of_last_month": false,
  "due": 14,
  "send_email": false,
  "subject_id": 37,
  "number_format_id": null,
  "note": null,
  "footer_note": null,
  "legacy_bank_details": null,
  "bank_account_id": null,
  "iban_visibility": "automatically",
  "tags": [],
  "order_number": null,
  "currency": "CZK",
  "payment_method": "bank",
  "custom_payment_method": null,
  "exchange_rate": "1.0",
  "language": "cz",
  "vat_price_mode": "without_vat",
  "transferred_tax_liability": false,
  "oss": "disabled",
  "supply_code": null,
  "subtotal": "550.0",
  "total": "665.5",
  "native_subtotal": "550.0",
  "native_total": "665.5",
  "lines": [
    {
      "id": 1299,
      "name": "One plan",
      "quantity": "1.0",
      "unit_name": "",
      "unit_price": "550.0",
      "vat_rate": 21,
      "unit_price_without_vat": "550.0",
      "unit_price_with_vat": "665.5",
      "inventory_item_id": null
    }
  ],
  "html_url": "https://app.fakturoid.cz/applecorp/recurring_generators/28",
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/generators/28.json",
  "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/37.json",
  "created_at": "2023-10-12T21:16:35.730+02:00",
  "updated_at": "2023-10-12T21:35:22.409+02:00"
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

## [Pause Recurring Generator](#pause-recurring-generator)

*   If generator is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Unsucessful request will result in response `422 Unprocessable Content` with a JSON body describing error or in response `404 Not Found` if generator is not recurring nor exists.

`PATCH` `/accounts/{slug}/recurring_generators/{id}/pause.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/recurring_generators/{id}/pause.json` Copy

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

`28`

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 28,
  "active": false,
  … // other generator attributes removed for brevity
}
```

### Response if generator is already paused

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "generator": [
      "Generator is already paused"
    ]
  }
}
```

### Response if generator is already finished

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "generator": [
      "Generator is already finished"
    ]
  }
}
```

### Response if generator is not recurring or is not exists

`Status` `404 Not Found`

## [Activate Recurring Generator](#activate-recurring-generator)

*   If generator is successfully activated the server will respond with `200 OK` and a JSON body with its data.
*   Unsucessful request will result in response `422 Unprocessable Content` with a JSON body describing error or in response `404 Not Found` if generator is not recurring nor exists.
*   It is possible to specify the date of the next generator occurrence, it must be in the future.
*   If the generator has the `last_day_in_month` attribute set to `true`, the next occurrence will be the last day of the respective month.

`PATCH` `/accounts/{slug}/recurring_generators/{id}/activate.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/recurring_generators/{id}/activate.json` Copy

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

`28`

#### Body

```
{
  "next_occurrence_on": "2024-09-15"
}
```

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 28,
  "active": true,
  "last_day_in_month": false,
  "next_occurrence_on": "2024-09-15",
  … // other generator attributes removed for brevity
}
```

### Response if generator is already active

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "generator": [
      "Generator is already active"
    ]
  }
}
```

### Response if generator is already finished

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "generator": [
      "Generator is already finished"
    ]
  }
}
```

### Response if generator is not recurring or is not exists

`Status` `404 Not Found`

## [Delete Recurring Generator](#delete-recurring-generator)

After deleting the recurring generator the server will respond with `204 No Content`.

`DELETE` `/accounts/{slug}/recurring_generators/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/recurring_generators/{id}.json` Copy

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

Recurring generator ID

`Integer`

`12`

### Response

`Status` `204 No Content`

* * *

1.  [API v3](/api/v3)→
2.  [Recurring Generators](/api/v3/recurring-generators)