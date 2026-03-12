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
    *   [Attributes](#attributes)
    *   [Expenses Index](#expenses-index)
    *   [Fulltext Search](#fulltext-search)
    *   [Expense Detail](#expense-detail)
    *   [Download Attachment](#download-attachment)
    *   [Expense Actions](#expense-actions)
    *   [Create Expense](#create-expense)
    *   [Update Expense](#update-expense)
    *   [Delete Expense](#delete-expense)
*   [Expense Payments](/api/v3/expense-payments)
*   [Inbox Files](/api/v3/inbox-files)
*   [Inventory Items](/api/v3/inventory-items)
*   [Inventory Moves](/api/v3/inventory-moves)
*   [Generators](/api/v3/generators)
*   [Recurring Generators](/api/v3/recurring-generators)
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)

# Expenses

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

`number`

`String`

Expense number  
Default: Calculate new number automatically

`original_number`

`String`

Original expense number

`variable_symbol`

`String`

Variable symbol

Read-only attribute

`supplier_name`

`String`

Subject company name

Read-only attribute

`supplier_street`

`String`

Subject address street

Read-only attribute

`supplier_city`

`String`

Subject address city

Read-only attribute

`supplier_zip`

`String`

Subject address postal code

Read-only attribute

`supplier_country`

`String`

Subject address country ([ISO Code](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes))

Read-only attribute

`supplier_registration_no`

`String`

Subject registration number (IČO)

Read-only attribute

`supplier_vat_no`

`String`

Subject VAT number (DIČ)

Read-only attribute

`supplier_local_vat_no`

`String`

Subject SK DIČ (only for Slovakia, does not start with country code)

Required attribute

`subject_id`

`Integer`

Subject ID

Read-only attribute

`status`

`String`

Current state of the expense, see [status table](#expense-status-table) for more information  
Values: `open`, `overdue`, `paid`

`document_type`

`String`

Type of expense document  
Values: `invoice`, `bill` (Receipt), `other`  
Default: `invoice`

`issued_on`

`Date`

Date of issue

`taxable_fulfillment_due`

`Date`

Chargeable event date

`received_on`

`Date`

Date when you received the expense from your supplier  
`received_on` also decides when we put the expense into vat returns

`due_on`

`Date`

Date when the expense becomes overdue

`remind_due_date`

`Boolean`

Remind the upcoming due date with a Todo  
Default: `true`

Read-only attribute

`paid_on`

`Date`

Date when the expense was marked as paid

Read-only attribute

`locked_at`

`DateTime`

Date and time when the expense was locked

`description`

`String`

Expense description

`private_note`

`String`

Private note

`tags`

`Array[String]`

List of tags

`bank_account`

`String`

Supplier bank account number  
Default: Inherit from supplier subject

`iban`

`String`

Supplier bank account IBAN  
Default: Inherit from supplier subject

`swift_bic`

`String`

Supplier bank account BIC (for SWIFT payments)  
Default: Inherit from supplier subject

`payment_method`

`String`

Payment method  
Values: `bank`, `cash`, `cod` (cash on delivery), `card`, `paypal`, `custom`  
Default: `bank`

`custom_payment_method`

`String`

Custom payment method (`payment_method` attribute must be set to `custom`, otherwise the `custom_payment_method` value is ignored and set to `null`)  
Value: String up to 20 characters  

`currency`

`String`

Currency [ISO Code](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes)  
Default: Inherit from account settings

`exchange_rate`

`Decimal`

Exchange rate (required if expense currency differs from account currency)

`transferred_tax_liability`

`Boolean`

Self-assesment of VAT?  
Default: `false`

`supply_code`

`String`

Supply code for statement about expenses in reverse charge

`vat_price_mode`

`String`

Calculate VAT from base or final amount, [more info in a table below](#vat-price-mode)  
Values: `without_vat`, `from_total_with_vat`  
Default: `without_vat`

`proportional_vat_deduction`

`Integer`

Proportional VAT deduction (percent)  
Default: `100`

`tax_deductible`

`Boolean`

Tax deductible  
Default: `true`

Write-only attribute

`round_total`

`Boolean`

Round total amount (VAT included)  
Default: `false`

Read-only attribute

`rounding_adjustment`

`Decimal`

Rounding adjustment resulting from the total amount not subject to VAT  
Default: `0.0`

Read-only attribute

`subtotal`

`Decimal`

Total without VAT

Read-only attribute

`total`

`Decimal`

Total with VAT

Read-only attribute

`native_subtotal`

`Decimal`

Total without VAT in the account currency

Read-only attribute

`native_total`

`Decimal`

Total with VAT in the account currency

`lines`

`Array[[Object](#lines)]`

List of lines to expense

Read-only attribute

`vat_rates_summary`

`Array[[Object](#vat-rates-summary)]`

VAT rates summary

Read-only attribute

`payments`

`Array[[Object](/api/v3/expense-payments)]`

List of payments

`attachments`

`Array[[Object](#attachments)]`

List of attachments

Read-only attribute

`html_url`

`String`

Expense HTML web address

Read-only attribute

`url`

`String`

Expense API address

Read-only attribute

`subject_url`

`String`

Subject API address

Read-only attribute

`created_at`

`DateTime`

Date and time of expense creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last expense update

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

### [Expense Status Table](#expense-status-table)

Name

Description

`open`

Expense is received without being paid or overdue

`overdue`

Expense is overdue

`paid`

Expense is paid

### [VAT Price Mode](#vat-price-mode)

Attribute

Description

`without_vat`

The price in the expense line is entered without VAT and the VAT is calculated automatically as a percentage from the line

`from_total_with_vat`

The price in the expense line is inclusive of VAT and the VAT is calculated from it

### [VAT rates summary](#vat-rates-summary)

Attribute

Type

Description

Read-only attribute

`vat_rate`

`Integer`/`Decimal`

VAT rate

Read-only attribute

`base`

`Decimal`

Base total

Read-only attribute

`vat`

`Decimal`

VAT total

Read-only attribute

`currency`

`String`

Currency

Read-only attribute

`native_base`

`Decimal`

Base total in account currency

Read-only attribute

`native_vat`

`Decimal`

VAT total in account currency

Read-only attribute

`native_currency`

`String`

Account currency

### [Attachments](#attachments)

#### [Request](#request)

Attachments are sent as an array of objects. `data_url` attribute is a [Data URI](https://en.wikipedia.org/wiki/Data_URI_scheme), e.g. `"data:application/pdf;base64,xxx"` where `application/pdf` is the MIME type of the attachment and `xx` is the Base64-encoded contents of the file.

Attribute

Type

Description

`attachments`

`Array[Object]`

Attachment object

Attachment object attribute

Type

Description

`filename`

`String`

Attachment file name  
Default: `attachment.{extension}`

Required attribute

`data_url`

`String`

Attachment contents in the form of a [Data URI](https://en.wikipedia.org/wiki/Data_URI_scheme)

Example:

```
{
  …, // Other document attributes
  "attachments": [
    {
      filename: "custom_name.pdf",
      data_url: "data:application/pdf;base64,iVBORw0KGgoAAAANSU…\n…\n" // Data truncated
    },
    {
      data_url: "data:application/pdf;base64,iVBORw0KGgoAAAANSU…\n…\n" // Data truncated
    },
    // Other attachments
  ]
}
```

#### [Response with attachment](#response-with-attachment)

Attribute

Type

Description

Read-only attribute

`filename`

`String`

Attachment file name

Read-only attribute

`content_type`

`String`

Attachment file MIME type

Read-only attribute

`download_url`

`String`

API URL for file download

```
{
  …, // Other document attributes
  "attachments": [
    {
      "id": 3,
      "filename": "64d814c560.pdf",
      "content_type": "application/pdf",
      "download_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/expenses/9/attachments/1/download"
    }
  ]
}
```

#### [Response without attachment](#response-without-attachment)

```
{
  …, // Other document attributes
  "attachments": []
}
```

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

## [Expenses Index](#expenses-index)

`GET` `/accounts/{slug}/expenses.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses.json` Copy

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

Expenses created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_since`

Expenses created or updated after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`page`

Page number (40 records per page)

`Integer`

`2`

`subject_id`

Filter by subject ID

`Number`

`5`

`custom_id`

Filter by your own ID

`String`

`315`

`number`

Filter by expense number

`String`

`2023-0005`

`variable_symbol`

Filter by variable symbol

`String`

`98675423`

`status`

Filter by expense status

`String`

`paid`

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "id": 209,
    "custom_id": null,
    "number": "N20231201",
    "original_number": "AB14",
    "variable_symbol": "98675423",
    "supplier_name": "Apple Czech s.r.o.",
    "supplier_street": "Klimentská 1216/46",
    "supplier_city": "Praha",
    "supplier_zip": "11000",
    "supplier_country": "CZ",
    "supplier_registration_no": "28897501",
    "supplier_vat_no": "CZ28897501",
    "supplier_local_vat_no": null,
    "subject_id": 16,
    "status": "open",
    "document_type": "invoice",
    "issued_on": "2023-12-21",
    "taxable_fulfillment_due": "2023-12-21",
    "received_on": "2023-12-21",
    "due_on": "2024-01-04",
    "paid_on": null,
    "locked_at": null,
    "description": null,
    "private_note": null,
    "tags": [],
    "bank_account": "",
    "iban": "",
    "swift_bic": "",
    "payment_method": "bank",
    "custom_payment_method": null,
    "currency": "CZK",
    "exchange_rate": "1.0",
    "transferred_tax_liability": false,
    "vat_price_mode": "without_vat",
    "supply_code": "",
    "proportional_vat_deduction": 100,
    "tax_deductible": true,
    "subtotal": "250.0",
    "total": "302.5",
    "native_subtotal": "250.0",
    "native_total": "302.5",
    "lines": [
      {
        "id": 503,
        "name": "Disk 250\r\nSKU: DK250\r\nIAN: DSK123432/250",
        "quantity": "1.0",
        "unit_name": "pcs",
        "unit_price": "125.0",
        "vat_rate": 21,
        "unit_price_without_vat": "125.0",
        "unit_price_with_vat": "151.25",
        "total_price_without_vat": "125.0",
        "total_vat": "26.25",
        "native_total_price_without_vat": "125.0",
        "native_total_vat": "26.25",
        "inventory": null
      },
      {
        "id": 504,
        "name": "Disk\r\nSKU: DK123\r\nIAN: DSK123432",
        "quantity": "1.0",
        "unit_name": "pcs",
        "unit_price": "125.0",
        "vat_rate": 21,
        "unit_price_without_vat": "125.0",
        "unit_price_with_vat": "151.25",
        "total_price_without_vat": "125.0",
        "total_vat": "26.25",
        "native_total_price_without_vat": "125.0",
        "native_total_vat": "26.25",
        "inventory": null
      }
    ],
    "vat_rates_summary": [
      {
        "vat_rate": 21,
        "base": "250.0",
        "vat": "52.5",
        "currency": "CZK",
        "native_base": "250.0",
        "native_vat": "52.5",
        "native_currency": "CZK"
      }
    ],
    "payments": [],
    "attachments": null,
    "html_url": "https://app.fakturoid.cz/applecorp/expenses/209",
    "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/expenses/209.json",
    "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/16.json",
    "created_at": "2023-12-21T15:09:56.642+01:00",
    "updated_at": "2023-12-21T15:22:59.160+01:00"
  },
  …
]
```

## [Fulltext Search](#fulltext-search)

Following fields are being searched: `number`, `variable_symbol`, `original_number`, `supplier_name`, `supplier_registration_no`, `supplier_vat_no`, `description`, `private_note` and `lines`. Search by tags is done via `tags` query parameter.

`GET` `/accounts/{slug}/expenses/search.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/search.json` Copy

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

`query`

Search query

`String`

`Search string`

`tags`

Search in tags

`Array[String]`

`["PPC"]`

`page`

Page number (40 records per page)

`Integer`

`2`

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "id": 209,
    "custom_id": null,
    "number": "N20231201",
    "original_number": "AB14",
    … // Other fields truncated for brevity
  },
  …
]
```

## [Expense Detail](#expense-detail)

`GET` `/accounts/{slug}/expenses/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}.json` Copy

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

Expense ID

`Integer`

`209`

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 209,
  "custom_id": null,
  "number": "N20231201",
  "original_number": "AB14",
  … // Other fields truncated for brevity
}
```

## [Download Attachment](#download-attachment)

`GET` `/accounts/{slug}/expenses/{expense_id}/attachments/{id}/download`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{expense_id}/attachments/{id}/download` Copy

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

`expense_id`

Expense ID

`Integer`

`1`

`id`

Attachment ID

`Integer`

`2`

### Response

`Status` `200 OK`

#### Headers

Name

Value

`Content-Type`

`application/pdf`

`Content-Transfer-Encoding`

`binary`

`Content-Disposition`

`attachment; filename="1693487757.pdf"; filename*=UTF-8''1693487757.pdf`

#### Body

```
… Binary data …
```

### Response if file cannot be downloaded

`Status` `204 No Content`

## [Expense Actions](#expense-actions)

Event

Description

`lock`

Lock expense

`unlock`

Unlock expense

`POST` `/accounts/{slug}/expenses/{id}/fire.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}/fire.json` Copy

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

Expense ID

`Integer`

`1`

#### Query Parameters

Name

Description

Type

Example

`event`

Event name

`String`

`lock`

### Response

`Status` `204 No Content`

### Response if action cannot be fired

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "event": [
      "lock cannot be fired"
    ]
  }
}
```

## [Create Expense](#create-expense)

*   After successful expense creation, you will receive a `201 Created` response from the server, the `location` header will be set to the address of the newly created expense.
*   If invalid data is sent, you will receive a `422 Unprocessable Content` response from the server and a JSON with a list of errors in the sent data.

`POST` `/accounts/{slug}/expenses.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses.json` Copy

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

### Response

`Status` `201 Created`

#### Body

```
{
  "id": 216,
  "custom_id": "ORD87968",
  "number": "N20231208",
  … // Other fields truncated for brevity
}
```

### Request with invalid data

#### Body

```
{
  "number": "invalid"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "subject_id": [
      "can't be blank",
      "Contact does not exist."
    ],
    "supplier_name": [
      "can't be blank"
    ]
  }
}
```

## [Update Expense](#update-expense)

*   If expense is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.
*   Trying to update a locked expense will respond with `403 Forbidden`.

`PATCH` `/accounts/{slug}/expenses/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}.json` Copy

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

Expense ID

`Integer`

`1`

#### Body

```
{
  "custom_id": "ORD111132"
}
```

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 216,
  "custom_id": "ORD111132",
  "number": "N20231208",
  … // Other fields truncated for brevity
}
```

### Request with invalid data

#### Body

```
{
  "number": "invalid"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "number": [
      "The number does not match the number format in the settings"
    ]
  }
}
```

### Response if expense is locked

`Status` `403 Forbidden`

#### Body

```
{
  "error": "document_locked",
  "error_description": "Document first needs to be unlocked to perform the action"
}
```

## [Delete Expense](#delete-expense)

*   If successfully deleted the server will respond with status `204 No Content`.
*   If expense cannot be deleted the server will respond with status `422 Unprocessable Content`.

`DELETE` `/accounts/{slug}/expenses/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/expenses/{id}.json` Copy

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

Expense ID

`Integer`

`1`

### Response

`Status` `204 No Content`

### Response if expense cannot be deleted

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "document": [
      "Document cannot be deleted"
    ]
  }
}
```

* * *

1.  [API v3](/api/v3)→
2.  [Expenses](/api/v3/expenses)