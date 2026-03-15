# Invoices

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `custom_id` | `String` | Identifier in your application |
| `document_type` | `String` | Type of document. Values: `partial_proforma`, `proforma`, `correction`, `tax_document`, `final_invoice`, `invoice` |
| `proforma_followup_document` | `String` | What to issue after a proforma is paid. Values: `final_invoice_paid` (Invoice paid), `final_invoice` (Invoice with edit), `tax_document` (Document to payment), `none`. Default if document type is `proforma`: `final_invoice_paid`, otherwise `null` |
| `tax_document_ids` | `Array[Integer]` | Required only when creating a final invoice from tax documents. Response then contains a more detailed list in `paid_advances`. |
| `correction_id` | `Integer` | ID of the invoice being corrected; specify this together with the `correction` flag. The invoice will then automatically have `correction_id` set to point back at the correction. |
| `number` | `String` | Document number. Default: calculate automatically. |
| `number_format_id` | `Integer` | ID of a number format; can only be specified on create and is forbidden on update. Default: inherit from account settings. |
| `variable_symbol` | `String` | Variable symbol. Default: calculate from document number automatically. |
| `your_name` *(read-only)* | `String` | Name of your company |
| `your_street` *(read-only)* | `String` | Your address street |
| `your_city` *(read-only)* | `String` | Your address city |
| `your_zip` *(read-only)* | `String` | Your address postal code |
| `your_country` *(read-only)* | `String` | Your address country (ISO code) |
| `your_registration_no` *(read-only)* | `String` | Your registration number (IČO) |
| `your_vat_no` *(read-only)* | `String` | Your VAT number (DIČ) |
| `your_local_vat_no` *(read-only)* | `String` | Your SK DIČ (only for Slovakia, does not start with country code) |
| `client_name` | `String` | Subject company name |
| `client_street` | `String` | Subject address street |
| `client_city` | `String` | Subject address city |
| `client_zip` | `String` | Subject address postal code |
| `client_country` | `String` | Subject address country (ISO code) |
| `client_has_delivery_address` | `Boolean` | Enable delivery address. Default: inherit from client subject. On create, if subject and invoice have delivery address enabled, it is copied from subject. On update, delivery address can be changed when this is `true`; setting it to `false` clears invoice delivery address. |
| `client_delivery_name` | `String` | Subject company delivery name |
| `client_delivery_street` | `String` | Subject delivery address street |
| `client_delivery_city` | `String` | Subject delivery address city |
| `client_delivery_zip` | `String` | Subject delivery address postal code |
| `client_delivery_country` | `String` | Subject delivery address country (ISO code) |
| `client_registration_no` | `String` | Subject registration number |
| `client_vat_no` | `String` | Subject VAT number |
| `client_local_vat_no` | `String` | Subject SK DIČ (only for Slovakia, does not start with country code) |
| `subject_id` **(required)** | `Integer` | Subject ID |
| `subject_custom_id` | `String` | Subject identifier in your application |
| `generator_id` *(read-only)* | `Integer` | Generator ID from which the document was generated |
| `related_id` | `Integer` | When proforma: ID of related invoice. When invoice: ID of related proforma (works both on read and write). When tax document: ID of related final invoice. |
| `paypal` | `Boolean` | Enable PayPal payment button on invoice. Default: `false` |
| `gopay` | `Boolean` | Enable GoPay payment button on invoice. Default: `false` |
| `token` *(read-only)* | `String` | Token string for the webinvoice URL |
| `status` *(read-only)* | `String` | Current state of the document. Values: `open`, `sent`, `overdue`, `paid`, `cancelled`, `uncollectible` |
| `order_number` | `String` | Order number in your application |
| `issued_on` | `Date` | Date of issue |
| `taxable_fulfillment_due` | `String` | Chargeable event date |
| `due` | `Integer` | Number of days until the invoice becomes overdue. Default: inherit from account settings. |
| `due_on` *(read-only)* | `Date` | Date when the invoice becomes overdue (depends on `due`) |
| `sent_at` *(read-only)* | `DateTime` | Date and time of sending the document via email |
| `paid_on` *(read-only)* | `Date` | Date when the document was marked as paid |
| `reminder_sent_at` *(read-only)* | `DateTime` | Date and time of the first sent reminder |
| `last_reminder_sent_at` *(read-only)* | `DateTime` | Date and time of the last sent reminder |
| `cancelled_at` *(read-only)* | `DateTime` | Date and time when the invoice was cancelled (only for non-VAT-payers) |
| `uncollectible_at` *(read-only)* | `DateTime` | Date and time when an invoice was marked as uncollectible |
| `locked_at` *(read-only)* | `DateTime` | Date and time when the document was locked |
| `webinvoice_seen_on` *(read-only)* | `Date` | Date when the client visited the webinvoice |
| `note` | `String` | Text before lines. Default: inherit from account settings. |
| `footer_note` | `String` | Invoice footer. Default: inherit from account settings. |
| `private_note` | `String` | Private note |
| `tags` | `Array[String]` | List of tags |
| `bank_account_id` | `Integer` | Bank account ID (used only on create action). Default: inherit from account settings. |
| `bank_account` | `String` | Bank account number. Default: inherit from account settings. |
| `iban` | `String` | IBAN. Default: inherit from account settings. |
| `swift_bic` | `String` | BIC (for SWIFT payments). Default: inherit from account settings. |
| `iban_visibility` | `String` | Controls IBAN visibility on document webinvoice and PDF. Values: `automatically`, `always`. Default: `automatically`. |
| `show_already_paid_note_in_pdf` | `Boolean` | Show “Do not pay, …” on document webinvoice and PDF. Default: `false`. |
| `payment_method` | `String` | Payment method. Values: `bank`, `cash`, `cod`, `card`, `paypal`, `custom`. Default: inherit from account settings. |
| `custom_payment_method` | `String` | Custom payment method. Only used when `payment_method = custom`, otherwise ignored and set to `null`. Max 20 characters. |
| `hide_bank_account` | `Boolean` | Hide bank account on webinvoice and PDF. Values: `null`, `true`, `false`. Default: inherit from account settings. |
| `currency` | `String` | Currency ISO code. Default: inherit from account settings. |
| `exchange_rate` | `Decimal` | Exchange rate (required if document currency differs from account currency) |
| `language` | `String` | Language of the document. Values: `cz`, `sk`, `en`, `de`, `fr`, `it`, `es`, `ru`, `pl`, `hu`, `ro`. Default: inherit from account settings. |
| `transferred_tax_liability` | `Boolean` | Use reverse charge. Default: `false`. |
| `supply_code` | `String` | Supply code for statement about invoices in reverse charge |
| `oss` | `String` | Use OSS mode. Values: `disabled`, `service`, `goods`. Default: `disabled`. |
| `vat_price_mode` | `String` | Calculate VAT from base or final amount. Values: `without_vat`, `from_total_with_vat`. |
| `round_total` *(write-only)* | `Boolean` | Round total amount (VAT included). Default: `false`. |
| `subtotal` *(read-only)* | `Decimal` | Total without VAT |
| `total` *(read-only)* | `Decimal` | Total with VAT |
| `native_subtotal` *(read-only)* | `Decimal` | Total without VAT in the account currency |
| `native_total` *(read-only)* | `Decimal` | Total with VAT in the account currency |
| `rounding_adjustment` *(read-only)* | `Decimal` | Rounding adjustment resulting from total amount not subject to VAT. Default: `0.0` |
| `remaining_amount` *(read-only)* | `Decimal` | Remaining invoice amount after deducting proformas and/or tax documents, VAT included |
| `remaining_native_amount` *(read-only)* | `Decimal` | Remaining invoice amount in account currency |
| `eet_records` | `Array[Object]` | EET records |
| `lines` | `Array[Object]` | List of lines to invoice |
| `vat_rates_summary` *(read-only)* | `Array[Object]` | VAT rates summary |
| `paid_advances` *(read-only)* | `Array[Object]` | List of paid advances (if final invoice) |
| `payments` *(read-only)* | `Array[Object]` | List of payments |
| `attachments` | `Array[Object]` | List of attachments |
| `html_url` *(read-only)* | `String` | Document HTML web address |
| `public_html_url` *(read-only)* | `String` | Webinvoice web address |
| `url` *(read-only)* | `String` | Document API address |
| `pdf_url` *(read-only)* | `String` | PDF download address |
| `subject_url` *(read-only)* | `String` | Subject API address |
| `created_at` *(read-only)* | `String` | Date and time of document creation |
| `updated_at` *(read-only)* | `String` | Date and time of last document update |

- **(required)**: Required attribute
- *(read-only)*: Read-only attribute
- *(write-only)*: Write-only attribute
- Unmarked attributes are optional and can be omitted during request.

### Invoice Status Table

| Name | Description |
|---|---|
| `open` | Invoice is issued without being paid, sent, overdue or in any other state |
| `sent` | Invoice was sent and is not overdue |
| `overdue` | Invoice is overdue |
| `paid` | Invoice is paid |
| `cancelled` | Invoice is cancelled (only for VAT-payers) |
| `uncollectible` | Invoice can no longer be paid and is thus uncollectible |

### VAT Price Mode

`vat_price_mode` is ignored in the following cases:

- Account is set as non VAT payer.
- Reverse charge (`transferred_tax_liability`) is used.

| Attribute | Description |
|---|---|
| `null` | Inherited automatically from the account settings |
| `"without_vat"` | The price in the invoice line is entered without VAT and VAT is calculated automatically as a percentage from the line |
| `"from_total_with_vat"` | The price in the invoice line is inclusive of VAT and VAT is calculated from it |

### Document Type

| Name | Description |
|---|---|
| `invoice` | Invoice |
| `proforma` | Proforma |
| `partial_proforma` | Legacy partial proforma (cannot be set for new documents) |
| `correction` | Correction document for an invoice |
| `tax_document` | Tax document for a received payment |
| `final_invoice` | Final invoice for tax documents |

### Proforma Followup Document

If `document_type` is set to `proforma`, the field `proforma_followup_document` is used to determine what to issue once the proforma is paid.

| Name | Description |
|---|---|
| `final_invoice_paid` | Labelled “Invoice paid” on the web. Automatically issue an invoice that will be marked as paid. |
| `final_invoice` | Labelled “Invoice with edit” on the web. Invoice must be created manually (via web or create API endpoint), `related_id` must reference the proforma ID, and the lines should be copied from the proforma, though they can be changed. |
| `tax_document` | Labelled “Document to payment” on the web. Automatically create a tax document to the received payment on the same amount. |
| `none` | Do not issue any document after receiving payment. |

### EET Records

For legacy purpose of invoices issued with EET records. Cannot be used on new invoices.

| Attribute | Description |
|---|---|
| `id` | Record ID |
| `vat_no` | VAT number (DIČ) in Fakturoid |
| `number` | Document serial number |
| `store` | Store ID |
| `cash_register` | Cash register number |
| `paid_at` | Payment date and time |
| `vat_base0` | Base amount not subjected to VAT |
| `vat_base1` | Base amount for basic VAT rate (21 %) |
| `vat1` | VAT amount for basic VAT rate |
| `vat_base2` | Base amount for first lowered VAT rate (15 %) |
| `vat2` | VAT amount for first lowered VAT rate |
| `vat_base3` | Base amount for second lowered VAT rate (10 %) |
| `vat3` | VAT amount for second lowered VAT rate |
| `total` | Total paid amount |
| `fik` | FIK code |
| `bkp` | BKP code |
| `pkp` | PKP code |
| `status` | Evidence/register status: `waiting`, `pkp`, `fik` |
| `fik_received_at` | Date and time when FIK code was received from EET servers |
| `external` | `true` if payment is recorded outside Fakturoid and required codes are specified via API; `false` if Fakturoid handles evidence |
| `attempts` | Number of attempts to register the payment |
| `last_attempt_at` | Date and time of last attempt to register the payment |
| `last_uuid` | UUID of the last attempt to register the payment |
| `playground` | Payment registered in EET playground environment |
| `invoice_id` | Invoice ID which the payment belongs to |
| `created_at` | Date and time of EET record creation |
| `updated_at` | Date and time of last EET record update |

### VAT rates summary

| Attribute | Type | Description |
|---|---|---|
| `vat_rate` *(read-only)* | `Integer` / `Decimal` | VAT rate |
| `base` *(read-only)* | `Decimal` | Base total |
| `vat` *(read-only)* | `Decimal` | VAT total |
| `currency` *(read-only)* | `String` | Currency |
| `native_base` *(read-only)* | `Decimal` | Base total in account currency |
| `native_vat` *(read-only)* | `Decimal` | VAT total in account currency |
| `native_currency` *(read-only)* | `String` | Account currency |

### Paid Advances

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Tax document ID |
| `number` *(read-only)* | `String` | Document number |
| `variable_symbol` *(read-only)* | `String` | Variable symbol |
| `paid_on` *(read-only)* | `Date` | Date of payment |
| `vat_rate` *(read-only)* | `Integer` / `Decimal` | VAT rate |
| `price` *(read-only)* | `Decimal` | Price for given VAT rate |
| `vat` *(read-only)* | `Decimal` | VAT for given VAT rate |

### Attachments

#### Request

Attachments are sent as an array of objects. `data_url` is a [Data URI](https://en.wikipedia.org/wiki/Data_URI), for example `"data:application/pdf;base64,xxx"`, where `application/pdf` is the MIME type and `xxx` is the Base64-encoded file content.

| Attribute | Type | Description |
|---|---|---|
| `attachments` | `Array[Object]` | Attachment object |

Attachment object:

| Attribute | Type | Description |
|---|---|---|
| `filename` | `String` | Attachment file name. Default: `attachment.{extension}` |
| `data_url` **(required)** | `String` | Attachment contents in the form of a Data URI |

Example:

```json
{
  "attachments": [
    {
      "filename": "custom_name.pdf",
      "data_url": "data:application/pdf;base64,iVBORw0KGgoAAAANSU…\n…\n"
    },
    {
      "data_url": "data:application/pdf;base64,iVBORw0KGgoAAAANSU…\n…\n"
    }
  ]
}
```

#### Response with attachment

| Attribute | Type | Description |
|---|---|---|
| `filename` *(read-only)* | `String` | Attachment file name |
| `content_type` *(read-only)* | `String` | Attachment file MIME type |
| `download_url` *(read-only)* | `String` | API URL for file download |

```json
{
  "attachments": [
    {
      "id": 3,
      "filename": "64d814c560.pdf",
      "content_type": "application/pdf",
      "download_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices/9/attachments/1/download"
    }
  ]
}
```

#### Response without attachment

```json
{
  "attachments": []
}
```

### Lines

#### Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `name` **(required)** | `String` | Line name |
| `quantity` | `Decimal` | Quantity. Default: `1` |
| `unit_name` | `String` | Unit name |
| `unit_price` **(required)** | `Decimal` | Unit price |
| `vat_rate` | `Integer` / `Decimal` | VAT rate. Default: `0` |
| `unit_price_without_vat` *(read-only)* | `Decimal` | Unit price without VAT |
| `unit_price_with_vat` *(read-only)* | `Decimal` | Unit price including VAT |
| `total_price_without_vat` *(read-only)* | `Decimal` | Total price without VAT |
| `total_vat` *(read-only)* | `Decimal` | Total VAT |
| `native_total_price_without_vat` *(read-only)* | `Decimal` | Total price without VAT in account currency |
| `native_total_vat` *(read-only)* | `Decimal` | Total VAT in account currency |
| `inventory_item_id` *(write-only)* | `Integer` | ID of the related inventory item; use to set an ID during document creation |
| `sku` *(write-only)* | `String` | Stock Keeping Unit; use to load data from matching inventory item. Other writable attributes can override loaded values. |
| `inventory` *(read-only)* | `Object` | Inventory information |

#### Inventory

| Attribute | Type | Description |
|---|---|---|
| `item_id` *(read-only)* | `Integer` | ID of the related inventory item |
| `sku` *(read-only)* | `String` | Stock Keeping Unit (SKU) |
| `article_number_type` *(read-only)* | `String` | Article number type. Values: `ian`, `ean`, `isbn` |
| `article_number` *(read-only)* | `String` | Article number, if present |
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

When editing a document, send the line `id`; otherwise the line will be added again.

`unit_price_without_vat` and `unit_price_with_vat` are read-only and are derived from `unit_price`, `vat_rate`, and `vat_price_mode`.

These two attributes have the same value when:

- VAT rate is `0`.
- Reverse charge is enabled.

You can use variables in recurring generators for inserting dates to your text.

#### More Examples

##### Unit price without VAT

Request:

```json
{
  "vat_price_mode": "without_vat",
  "lines": [
    {
      "unit_price": "1000.0",
      "vat_rate": "21"
    }
  ]
}
```

Response:

```json
{
  "vat_price_mode": "without_vat",
  "lines": [
    {
      "unit_price": "1000.0",
      "vat_rate": "21",
      "unit_price_without_vat": "1000.0",
      "unit_price_with_vat": "1210.0"
    }
  ]
}
```

##### Unit price with VAT

Request:

```json
{
  "vat_price_mode": "from_total_with_vat",
  "lines": [
    {
      "unit_price": "1210.0",
      "vat_rate": "21"
    }
  ]
}
```

Response:

```json
{
  "vat_price_mode": "from_total_with_vat",
  "lines": [
    {
      "unit_price": "1000.0",
      "vat_rate": "21",
      "unit_price_without_vat": "1000.0",
      "unit_price_with_vat": "1210.0"
    }
  ]
}
```

#### Delete Line

For deleting the line, include `_destroy: true`:

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

## Invoices Index

Includes all documents like invoices, proformas, corrections and tax documents.

`GET /accounts/{slug}/invoices.json`

### Request

`GET /accounts/{slug}/invoices.json`

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
| `since` | Invoices created after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `until` | Invoices created before this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `updated_since` | Invoices created or updated after this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `updated_until` | Invoices created or updated before this date | `DateTime` | `2023-08-25T10:55:14+02:00` |
| `page` | Page number (40 records per page) | `Integer` | `2` |
| `subject_id` | Filter by subject ID | `Number` | `5` |
| `custom_id` | Filter by your own ID | `String` | `315` |
| `number` | Filter by document number | `String` | `2023-0005` |
| `status` | Filter by document status | `String` | `paid` |
| `document_type` | Filter by document type | `String` | `regular`, `proforma`, `correction`, `tax_document` |

#### Document Type Filter

| Name | Description |
|---|---|
| `regular` | All documents except proforma invoices |
| `proforma` | Proforma invoices |
| `correction` | Correction documents for invoices |
| `tax_document` | Tax documents for received payments |

### Response

`Status 200 OK`

#### Body

```json
[
  {
    "id": 27,
    "custom_id": null,
    "document_type": "invoice",
    "proforma_followup_document": null,
    "correction_id": null,
    "number": "2023-0021",
    "number_format_id": 31,
    "variable_symbol": "20230021",
    "your_name": "Alexandr Hejsek",
    "your_street": "Hopsinková 14",
    "your_city": "Praha",
    "your_zip": "10000",
    "your_country": "CZ",
    "your_registration_no": "87654321",
    "your_vat_no": "CZ12121212",
    "your_local_vat_no": null,
    "client_name": "Apple Czech s.r.o.",
    "client_street": "Klimentská 1216/46",
    "client_city": "Praha",
    "client_zip": "11000",
    "client_country": "CZ",
    "client_registration_no": "28897501",
    "client_vat_no": "CZ28897501",
    "client_local_vat_no": null,
    "client_has_delivery_address": false,
    "client_delivery_name": null,
    "client_delivery_street": null,
    "client_delivery_city": null,
    "client_delivery_zip": null,
    "client_delivery_country": null,
    "subject_id": 16,
    "subject_custom_id": null,
    "generator_id": null,
    "related_id": null,
    "paypal": false,
    "gopay": false,
    "token": "69UqMuxhiA",
    "status": "sent",
    "order_number": null,
    "issued_on": "2023-11-30",
    "taxable_fulfillment_due": "2023-11-30",
    "due": 14,
    "due_on": "2023-12-14",
    "sent_at": "2023-12-01T09:05:47.117+01:00",
    "paid_on": null,
    "reminder_sent_at": null,
    "cancelled_at": null,
    "uncollectible_at": null,
    "locked_at": null,
    "webinvoice_seen_on": null,
    "note": "Fakturujeme Vám následující položky",
    "footer_note": "",
    "private_note": null,
    "tags": [],
    "bank_account": "1234/2010",
    "iban": null,
    "swift_bic": null,
    "iban_visibility": "automatically",
    "show_already_paid_note_in_pdf": false,
    "payment_method": "bank",
    "custom_payment_method": null,
    "hide_bank_account": false,
    "currency": "CZK",
    "exchange_rate": "1.0",
    "language": "cz",
    "transferred_tax_liability": false,
    "supply_code": null,
    "oss": "disabled",
    "vat_price_mode": "with_vat",
    "subtotal": "9133.6",
    "total": "11000.0",
    "native_subtotal": "9133.6",
    "native_total": "11000.0",
    "remaining_amount": "11000.0",
    "remaining_native_amount": "11000.0",
    "eet_records": [],
    "lines": [
      {
        "id": 46,
        "name": "Grafická karta",
        "quantity": "1.0",
        "unit_name": "",
        "unit_price": "8264.0",
        "vat_rate": 21,
        "unit_price_without_vat": "8264.0",
        "unit_price_with_vat": "10000.0",
        "total_price_without_vat": "8264.0",
        "total_vat": "1736.0",
        "native_total_price_without_vat": "8264.0",
        "native_total_vat": "1736.0",
        "inventory": {
          "item_id": 26,
          "sku": "KU994RUR8465",
          "article_number_type": null,
          "article_number": null,
          "move_id": 56
        }
      },
      {
        "id": 47,
        "name": "Jídlo",
        "quantity": "5.0",
        "unit_name": "",
        "unit_price": "173.92",
        "vat_rate": 15,
        "unit_price_without_vat": "173.92",
        "unit_price_with_vat": "200.0",
        "total_price_without_vat": "869.6",
        "total_vat": "130.4",
        "native_total_price_without_vat": "869.6",
        "native_total_vat": "130.4",
        "inventory": null
      }
    ],
    "vat_rates_summary": [
      {
        "vat_rate": 21,
        "base": "8264.0",
        "vat": "1736.0",
        "currency": "CZK",
        "native_base": "8264.0",
        "native_vat": "1736.0",
        "native_currency": "CZK"
      },
      {
        "vat_rate": 15,
        "base": "869.6",
        "vat": "130.4",
        "currency": "CZK",
        "native_base": "869.6",
        "native_vat": "130.4",
        "native_currency": "CZK"
      }
    ],
    "paid_advances": [],
    "payments": [],
    "attachments": null,
    "html_url": "https://app.fakturoid.cz/applecorp/invoices/27",
    "public_html_url": "https://app.fakturoid.cz/applecorp/p/69UqMuxhiA/2023-0021",
    "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices/27.json",
    "pdf_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices/27/download.pdf",
    "subject_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/16.json",
    "created_at": "2023-11-30T13:50:45.848+01:00",
    "updated_at": "2023-12-01T09:05:47.187+01:00"
  },
  …
]
```

## Fulltext Search

Following fields are searched: `number`, `variable_symbol`, `client_name`, `note`, `private_note`, `footer_note`, and `lines`. Search by tags is done via `tags` query parameter.

`GET /accounts/{slug}/invoices/search.json`

### Request

`GET /accounts/{slug}/invoices/search.json`

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
| `query` | Search query | `String` | `Search string` |
| `tags` | Search in tags | `Array[String]` | `["PPC"]` |
| `page` | Page number (40 records per page) | `Integer` | `2` |

### Response

`Status 200 OK`

#### Body

```json
[
  {
    "id": 12,
    "number": "2023-0006",
    "tags": ["PPC"],
    …
  },
  …
]
```

## Invoice Detail

`GET /accounts/{slug}/invoices/{id}.json`

### Request

`GET /accounts/{slug}/invoices/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Invoice ID | `Integer` | `1` |

### Response

`Status 200 OK`

#### Body

```json
{
  "id": 27,
  "number": "2023-0021",
  …
}
```

## Download Invoice PDF

- It takes a little while until the PDF is generated. If you request it before it is ready, you will receive `204 No Content`; wait a second or two and try again.
- If PDF is ready, you will receive `200 OK` with PDF contents in the response body.
- After invoice create or update, wait a second or two again before requesting the PDF.

`GET /accounts/{slug}/invoices/{id}/download.pdf`

### Request

`GET /accounts/{slug}/invoices/{id}/download.pdf`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Invoice ID | `Integer` | `1` |

### Response

`Status 200 OK`

#### Headers

| Name | Value |
|---|---|
| `Content-Type` | `application/pdf` |
| `Content-Transfer-Encoding` | `binary` |

#### Body

```text
… Binary data …
```

### Response if PDF cannot be downloaded yet

`Status 204 No Content`

## Download Attachment

`GET /accounts/{slug}/invoices/{invoice_id}/attachments/{id}/download`

### Request

`GET /accounts/{slug}/invoices/{invoice_id}/attachments/{id}/download`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `invoice_id` | Invoice ID | `Integer` | `1` |
| `id` | Attachment ID | `Integer` | `2` |

### Response

`Status 200 OK`

#### Headers

| Name | Value |
|---|---|
| `Content-Type` | `application/pdf` |
| `Content-Transfer-Encoding` | `binary` |
| `Content-Disposition` | `attachment; filename="1693487757.pdf"; filename*=UTF-8''1693487757.pdf` |

#### Body

```text
… Binary data …
```

### Response if file cannot be downloaded

`Status 204 No Content`

## Invoice Actions

| Event | Description |
|---|---|
| `mark_as_sent` | Mark invoice as sent |
| `cancel` | Cancel invoice |
| `undo_cancel` | Undo invoice cancellation |
| `lock` | Lock invoice |
| `unlock` | Unlock invoice |
| `mark_as_uncollectible` | Mark invoice as uncollectible |
| `undo_uncollectible` | Undo invoice marking as uncollectible |

`POST /accounts/{slug}/invoices/{id}/fire.json`

### Request

`POST /accounts/{slug}/invoices/{id}/fire.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Invoice ID | `Integer` | `1` |

#### Query Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `event` | Event name | `String` | `mark_as_sent` |

### Response

`Status 204 No Content`

### Response if action cannot be fired

`Status 422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "event": [
      "lock cannot be fired"
    ]
  }
}
```

## Create Invoice

- After successful invoice creation, the server returns `201 Created`, and the `location` header points to the newly created invoice.
- If invalid data is sent, the server returns `422 Unprocessable Content` with JSON errors.
- If no bank account is specified in the Fakturoid account, the API returns `403 Forbidden` and a link to bank account settings.

`POST /accounts/{slug}/invoices.json`

### Request

`POST /accounts/{slug}/invoices.json`

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
  "custom_id": "1234",
  "subject_id": 16,
  "due": 21,
  "issued_on": "2023-11-19",
  "taxable_fulfillment_due": "2023-11-19",
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

`Status 201 Created`

#### Body

```json
{
  "id": 529,
  "custom_id": "1234",
  "number": "2023-0024",
  "due": 21,
  "due_on": "2023-12-10",
  …
}
```

### Request with invalid data

#### Body

```json
{
  "number": "invalid"
}
```

### Response

`Status 422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "number": [
      "The number does not match the number format in the settings"
    ],
    "client_name": [
      "can't be blank"
    ],
    "subject_id": [
      "can't be blank",
      "Contact does not exist."
    ]
  }
}
```

### Response if no bank account is present

`Status 403 Forbidden`

#### Body

```json
{
  "errors": {
    "bank_account": [
      "Please set up a bank account in your Fakturoid account https://app.fakturoid.cz/applecorp/settings/bank_accounts to create an invoice."
    ]
  }
}
```

## Update Invoice

- If invoice is successfully updated, the server returns `200 OK` with JSON body.
- Invalid data returns `422 Unprocessable Content` with JSON errors.
- Updating a locked invoice returns `403 Forbidden`.

`PATCH /accounts/{slug}/invoices/{id}.json`

### Request

`PATCH /accounts/{slug}/invoices/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |
| `Content-Type` | `application/json` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Invoice ID | `Integer` | `1` |

#### Body

```json
{
  "due": "14"
}
```

### Response

`Status 200 OK`

#### Body

```json
{
  "id": 529,
  "due": 14,
  "due_on": "2023-12-03",
  …
}
```

### Request with invalid data

#### Body

```json
{
  "number": "invalid"
}
```

### Response

`Status 422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "number": [
      "The number does not match the number format in the settings"
    ]
  }
}
```

### Response if document is locked

`Status 403 Forbidden`

#### Body

```json
{
  "error": "document_locked",
  "error_description": "Document first needs to be unlocked to perform the action"
}
```

## Delete Invoice

- If successfully deleted, the server returns `204 No Content`.
- If invoice cannot be deleted, the server returns `422 Unprocessable Content`.

Cases when invoice cannot be deleted:

- Proforma which already has a paid invoice connected to it.
- Invoice which has a correction invoice connected to it.
- Proforma which has tax documents connected to it.
- Tax document which has invoice connected to it.
- Document is locked.

`DELETE /accounts/{slug}/invoices/{id}.json`

### Request

`DELETE /accounts/{slug}/invoices/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Invoice ID | `Integer` | `1` |

### Response

`Status 204 No Content`

### Response if invoice cannot be deleted

`Status 422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "document": [
      "Document cannot be deleted"
    ]
  }
}
```
