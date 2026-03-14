Zavřít menu

[Fakturoid web →](/)

*   [Introduction](https://fakturoid.cz/api/v3)
*   [Changelog](https://fakturoid.cz/api/v3/changelog)
*   [Authorization](https://fakturoid.cz/api/v3/authorization)
*   [Users](https://fakturoid.cz/api/v3/users)
*   [Account](https://fakturoid.cz/api/v3/account)
*   [Bank Accounts](https://fakturoid.cz/api/v3/bank-accounts)
*   [Number Formats](https://fakturoid.cz/api/v3/number-formats)
*   [Subjects](https://fakturoid.cz/api/v3/subjects)
*   [Invoices](https://fakturoid.cz/api/v3/invoices)
    *   [Attributes](#attributes)
    *   [Invoices Index](#invoices-index)
    *   [Fulltext Search](#fulltext-search)
    *   [Invoice Detail](#invoice-detail)
    *   [Download Invoice PDF](#download-invoice-pdf)
    *   [Download Attachment](#download-attachment)
    *   [Invoice Actions](#invoice-actions)
    *   [Create Invoice](#create-invoice)
    *   [Update Invoice](#update-invoice)
    *   [Delete Invoice](#delete-invoice)
*   [Invoice Payments](https://fakturoid.cz/api/v3/invoice-payments)
*   [Invoice Messages](https://fakturoid.cz/api/v3/invoice-messages)
*   [Expenses](https://fakturoid.cz/api/v3/expenses)
*   [Expense Payments](https://fakturoid.cz/api/v3/expense-payments)
*   [Inbox Files](https://fakturoid.cz/api/v3/inbox-files)
*   [Inventory Items](https://fakturoid.cz/api/v3/inventory-items)
*   [Inventory Moves](https://fakturoid.cz/api/v3/inventory-moves)
*   [Generators](https://fakturoid.cz/api/v3/generators)
*   [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators)
*   [Events](https://fakturoid.cz/api/v3/events)
*   [Todos](https://fakturoid.cz/api/v3/todos)
*   [Webhooks](https://fakturoid.cz/api/v3/webhooks)

# Invoices

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

`document_type`

`String`

Type of document, [more info below](#document-type)  
Values: `partial_proforma`, `proforma`, `correction`, `tax_document`, `final_invoice`, `invoice`

`proforma_followup_document`

`String`

What to issue after a proforma is paid, [more info below](#proforma-followup-document)  
Values: `final_invoice_paid` (Invoice paid), `final_invoice` (Invoice with edit), `tax_document` (Document to payment), `none`  
Default if document type is `proforma`: `final_invoice_paid`  
Otherwise default: `null`

`tax_document_ids`

`Array[Integer]`

Required only when creating a final invoice from tax documents.  
Response then contains a more detailed list of such documents in the [`paid_advances`](#paid-advances) field.

`correction_id`

`Integer`

ID of the invoice being corrected, specify this together with the `correction` flag.  
The invoice will then automatically have `correction_id` set to point back at the correction.

`number`

`String`

Document number  
Default: Calculate new number automatically

`number_format_id`

`Integer`

ID of a number format, can only be specified on create and is forbidden on update  
Default: Inherit from account settings

`variable_symbol`

`String`

Variable symbol  
Default: Calculate from document number automatically

Read-only attribute

`your_name`

`String`

Name of your company

Read-only attribute

`your_street`

`String`

Your address street

Read-only attribute

`your_city`

`String`

Your address city

Read-only attribute

`your_zip`

`String`

Your address postal code

Read-only attribute

`your_country`

`String`

Your address country (ISO code)

Read-only attribute

`your_registration_no`

`String`

Your registration number (IČO)

Read-only attribute

`your_vat_no`

`String`

Your VAT number (DIČ)

Read-only attribute

`your_local_vat_no`

`String`

Your SK DIČ (only for Slovakia, does not start with country code)

`client_name`

`String`

Subject company name

`client_street`

`String`

Subject address street

`client_city`

`String`

Subject address city

`client_zip`

`String`

Subject address postal code

`client_country`

`String`

Subject address country (ISO code)

`client_has_delivery_address`

`Boolean`

Enable delivery address  
Default: Inherit from client subject  

*   When creating invoice: If subject and invoice has delivery address enabled, the invoice delivery address is always copied from the subject delivery address.
*   When updating invoice: Invoice delivery address can be changed when this attribute is `true`. Setting it to false will clear the invoice delivery address.

`client_delivery_name`

`String`

Subject company delivery name

`client_delivery_street`

`String`

Subject delivery address street

`client_delivery_city`

`String`

Subject delivery address city

`client_delivery_zip`

`String`

Subject delivery address postal code

`client_delivery_country`

`String`

Subject delivery address country (ISO code)

`client_registration_no`

`String`

Subject registration number

`client_vat_no`

`String`

Subject VAT number

`client_local_vat_no`

`String`

Subject SK DIČ (only for Slovakia, does not start with country code)

Required attribute

`subject_id`

`Integer`

Subject ID

`subject_custom_id`

`String`

Subject identifier in your application

Read-only attribute

`generator_id`

`Integer`

Generator ID from which the document was generated

`related_id`

`Integer`

*   When proforma: ID of related invoice
*   When invoice: ID of related proforma (works both on read and write)
*   When tax document: ID of related final invoice

`paypal`

`Boolean`

Enable PayPal payment button on invoice  
Default: `false`

`gopay`

`Boolean`

Enable GoPay payment button on invoice  
Default: `false`

Read-only attribute

`token`

`String`

Token string for the webinvoice URL

Read-only attribute

`status`

`String`

Current state of the document, see [status table](#invoice-status-table) for more information  
Values: `open`, `sent`, `overdue`, `paid`, `cancelled`, `uncollectible`

`order_number`

`String`

Order number in your application

`issued_on`

`Date`

Date of issue

`taxable_fulfillment_due`

`String`

Chargeable event date

`due`

`Integer`

Number of days until the invoice becomes overdue  
Default: Inherit from account settings

Read-only attribute

`due_on`

`Date`

Date when the invoice becomes overdue (depends on `due`)

Read-only attribute

`sent_at`

`DateTime`

Date and time of sending the document via email

Read-only attribute

`paid_on`

`Date`

Date when the document was marked as paid

Read-only attribute

`reminder_sent_at`

`DateTime`

Date and time of the first sent reminder

Read-only attribute

`last_reminder_sent_at`

`DateTime`

Date and time of the last sent reminder

Read-only attribute

`cancelled_at`

`DateTime`

Date and time when the invoice was cancelled (only for non-VAT-payers)

Read-only attribute

`uncollectible_at`

`DateTime`

Date and time when an invoice was marked as uncollectible

Read-only attribute

`locked_at`

`DateTime`

Date and time when the document was locked

Read-only attribute

`webinvoice_seen_on`

`Date`

Date when the client visited the webinvoice

`note`

`String`

Text before lines  
Default: Inherit from account settings

`footer_note`

`String`

Invoice footer  
Default: Inherit from account settings

`private_note`

`String`

Private note

`tags`

`Array[String]`

List of tags

`bank_account_id`

`Integer`

Bank account ID (used only on create action)  
Default: Inherit from account settings

`bank_account`

`String`

Bank account number  
Default: Inherit from account settings

`iban`

`String`

IBAN  
Default: Inherit from account settings

`swift_bic`

`String`

BIC (for SWIFT payments)  
Default: Inherit from account settings

`iban_visibility`

`String`

Controls IBAN visibility on the document webinvoice and PDF. IBAN must be valid to show  
Values: `automatically`, `always`  
Default: `automatically`

`show_already_paid_note_in_pdf`

`Boolean`

Show „Do not pay, …“ on document webinvoice and PDF  
Default: `false`

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

`hide_bank_account`

`Boolean`

Hide bank account on webinvoice and PDF  
Values: `null`, `true`, `false`  
Default: Inherit from account settings

`currency`

`String`

Currency ISO code  
Default: Inherit from account settings

`exchange_rate`

`Decimal`

Exchange rate (required if document currency differs from account currency)

`language`

`String`

Language of the document  
Values: `cz`, `sk`, `en`, `de`, `fr`, `it`, `es`, `ru`, `pl`, `hu`, `ro`  
Default: Inherit from account settings

`transferred_tax_liability`

`Boolean`

Use reverse charge  
Default: `false`

`supply_code`

`String`

Supply code for statement about invoices in reverse charge

`oss`

`String`

Use OSS mode  
Values: `disabled`, `service`, `goods`  
Default: `disabled`

`vat_price_mode`

`String`

Calculate VAT from base or final amount, [more info in a table below](#vat-price-mode)  
Values: `without_vat`, `from_total_with_vat`

Write-only attribute

`round_total`

`Boolean`

Round total amount (VAT included)  
Default: `false`

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

Read-only attribute

`rounding_adjustment`

`Decimal`

Rounding adjustment resulting from the total amount not subject to VAT  
Default: `0.0`

Read-only attribute

`remaining_amount`

`Decimal`

Remaining invoice amount (after deducting proformas and/or tax documents, VAT included)

Read-only attribute

`remaining_native_amount`

`Decimal`

Remaining invoice amount (after deducting proformas and/or tax documents, VAT included) in the account currency

Read-only attribute

`eet_records`

`Array[[Object](#eet-records)]`

EET records

`lines`

`Array[[Object](#lines)]`

List of lines to invoice

Read-only attribute

`vat_rates_summary`

`Array[[Object](#vat-rates-summary)]`

VAT rates summary

Read-only attribute

`paid_advances`

`Array[[Object](#paid-advances)]`

List of paid advances (if final invoice)

Read-only attribute

`payments`

`Array[[Object](https://fakturoid.cz/api/v3/invoice-payments)]`

List of payments

`attachments`

`Array[[Object](#attachments)]`

List of attachments

Read-only attribute

`html_url`

`String`

Document HTML web address

Read-only attribute

`public_html_url`

`String`

Webinvoice web address

Read-only attribute

`url`

`String`

Document API address

Read-only attribute

`pdf_url`

`String`

PDF download address

Read-only attribute

`subject_url`

`String`

Subject API address

Read-only attribute

`created_at`

`String`

Date and time of document creation

Read-only attribute

`updated_at`

`String`

Date and time of last document update

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

### [Invoice Status Table](#invoice-status-table)

Name

Description

`open`

Invoice is issued without being paid, sent, overdue or in any other state

`sent`

Invoice was sent and is not overdue

`overdue`

Invoice is overdue

`paid`

Invoice is paid

`cancelled`

Invoice is cancelled (only for VAT-payers)

`uncollectible`

Invoice can no longer be paid and is thus uncollectible

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

### [Document Type](#document-type)

Name

Description

`invoice`

Invoice

`proforma`

Proforma

`partial_proforma`

Legacy partial proforma (cannot be set for new documents)

`correction`

Correction document for an invoice

`tax_document`

Tax document for a received payment

`final_invoice`

Final invoice for tax documents

### [Proforma Followup Document](#proforma-followup-document)

If `document_type` is set to `proforma`, the field `proforma_followup_document` is used to determine what to issue once the proforma is paid.

Name

Description

`final_invoice_paid`

Labelled _Invoice paid_ on the web.  
Automatically issue an invoice that will be marked as paid.

`final_invoice`

Labelled _Invoice with edit_ on the web.  

*   Invoice has be created manually (either via web or by calling [create API endpoint](#create-invoice)).
*   Specify Query Parameter `related_id` to the proforma ID.
*   It is necessary to copy the lines from the proforma into the new invoice but you are free to change/add or remove any line and the invoice total price will reflect the changes.

`tax_document`

Labelled _Document to payment_ on the web.  
Automatically create a tax document to the received payment that will be on the same amount as the payment (invoice is not created).

`none`

Do not issue any document after receiving payment.

### [EET Records](#eet-records)

For legacy purpose of invoices issued with EET records. Cannot be used on new invoices.

Attribute

Description

`id`

Record ID

`vat_no`

VAT number (DIČ) in Fakturoid

`number`

Document serial number

`store`

Store ID

`cash_register`

Cash register number

`paid_at`

Payment date and time

`vat_base0`

Base amount not subjected to VAT

`vat_base1`

Base amount for basic VAT rate (21 %)

`vat1`

VAT amount for basic VAT rate

`vat_base2`

Base amount for first lowered VAT rate (15 %)

`vat2`

VAT amount for first lowered VAT rate

`vat_base3`

Base amount for second lowered VAT rate (10 %)

`vat3`

VAT amount for second lowered VAT rate

`total`

Total paid amount

`fik`

FIK code

`bkp`

BKP code

`pkp`

PKP code

`status`

Evidence/register status:

*   `waiting` – waiting for first response from EET server
*   `pkp`: PKP code will be visible on the invoice
*   `fik`: FIK code will be visible on the invoice

`fik_received_at`

Date and time when FIK code was received from EET servers

`external`

*   `true`: The payment is recorded outside Fakturoid and required codes are specified via API
*   `false`: Fakturoid handles the correct evidence of the payment

`attempts`

Number of attempts to register the payment

`last_attempt_at`

Date and time of last attempt to register the payment

`last_uuid`

UUID of the last attempt to register the payment

`playground`

Payment registered in EET playground environment

`invoice_id`

Invoice ID which the payment belongs to

`created_at`

Date and time of EET record creation

`updated_at`

Date and time of last EET record update

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

### [Paid Advances](#paid-advances)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Tax document ID

Read-only attribute

`number`

`String`

Document number

Read-only attribute

`variable_symbol`

`String`

Variable symbol

Read-only attribute

`paid_on`

`Date`

Date of payment

Read-only attribute

`vat_rate`

`Integer`/`Decimal`

VAT rate

Read-only attribute

`price`

`Decimal`

Price for given VAT rate

Read-only attribute

`vat`

`Decimal`

VAT for given VAT rate

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
      "download_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices/9/attachments/1/download"
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

## [Invoices Index](#invoices-index)

Includes all documents like invoices, proformas, corrections and tax documents.

`GET` `/accounts/{slug}/invoices.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices.json` Copy

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

Invoices created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`until`

Invoices created before this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_since`

Invoices created or updated after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_until`

Invoices created or updated before this date

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

Filter by document number

`String`

`2023-0005`

`status`

Filter by document status

`String`

`paid`

`document_type`

Filter by document type

`String`

`regular`, `proforma`, `correction`, `tax_document`. See document type filter table below for more information.

#### Document Type Filter

Name

Description

`regular`

All documents except proforma invoices (invoices, correction documents, tax documents for received payments)

`proforma`

Proforma invoices

`correction`

Correction documents for invoices

`tax_document`

Tax documents for received payments

### Response

`Status` `200 OK`

#### Body

```
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

## [Fulltext Search](#fulltext-search)

Following fields are being searched: `number`, `variable_symbol`, `client_name`, `note`, `private_note`, `footer_note` and `lines`. Search by tags is done via `tags` query parameter.

`GET` `/accounts/{slug}/invoices/search.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/search.json` Copy

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
    "id": 12,
    "number": "2023-0006",
    "tags": [
      "PPC"
    ],
    …
  },
  …
]
```

## [Invoice Detail](#invoice-detail)

`GET` `/accounts/{slug}/invoices/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{id}.json` Copy

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

Invoice ID

`Integer`

`1`

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 27,
  "number": "2023-0021",
  … // Other fields truncated for brevity
}
```

## [Download Invoice PDF](#download-invoice-pdf)

*   It takes a little while until the PDF is generated so if you do request the PDF before it is ready you will receive status `204 No Content` in which case you should wait a second or two and try again.
*   If PDF is ready you will receive `200 OK` along with PDF contents in the response body.
*   After invoice create or update you should wait a second or two again before requesting the PDF.

`GET` `/accounts/{slug}/invoices/{id}/download.pdf`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{id}/download.pdf` Copy

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

Invoice ID

`Integer`

`1`

### Response

`Status` `200 OK`

#### Headers

Name

Value

`Content-Type`

`application/pdf`

`Content-Transfer-Encoding`

`binary`

#### Body

```
… Binary data …
```

### Response if PDF cannot be downloaded yet

`Status` `204 No Content`

## [Download Attachment](#download-attachment)

`GET` `/accounts/{slug}/invoices/{invoice_id}/attachments/{id}/download`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/attachments/{id}/download` Copy

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

`invoice_id`

Invoice ID

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

## [Invoice Actions](#invoice-actions)

Event

Description

`mark_as_sent`

Mark invoice as sent

`cancel`

Cancel invoice

`undo_cancel`

Undo invoice cancellation

`lock`

Lock invoice

`unlock`

Unlock invoice

`mark_as_uncollectible`

Mark invoice as uncollectible

`undo_uncollectible`

Undo invoice marking as uncollectible

`POST` `/accounts/{slug}/invoices/{id}/fire.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{id}/fire.json` Copy

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

Invoice ID

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

`mark_as_sent`

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

## [Create Invoice](#create-invoice)

*   After successful invoice creation, you will receive a `201 Created` response from the server, the `location` header will be set to the address of the newly created invoice.
*   If invalid data is sent, you will receive a `422 Unprocessable Content` response from the server and a JSON with a list of errors in the sent data.
*   In the case where no bank account is specified in Fakturoid account, the API returns a `403 Forbidden`. The body of the response will contain a description of the error with a link to the bank account settings (bank account cannot be entered via the API).

`POST` `/accounts/{slug}/invoices.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices.json` Copy

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

`Status` `201 Created`

#### Body

```
{
  "id": 529,
  "custom_id": "1234",
  "number": "2023-0024",
  "due": 21,
  "due_on": "2023-12-10",
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

### Response if no bank account is present

`Status` `403 Forbidden`

#### Body

```
{
  "errors": {
    "bank_account": [
      "Please set up a bank account in your Fakturoid account https://app.fakturoid.cz/applecorp/settings/bank_accounts to create an invoice."
    ]
  }
}
```

## [Update Invoice](#update-invoice)

*   If invoice is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.
*   Trying to update a locked invoice will respond with `403 Forbidden`.

`PATCH` `/accounts/{slug}/invoices/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{id}.json` Copy

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

Invoice ID

`Integer`

`1`

#### Body

```
{
  "due": "14"
}
```

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 529,
  "due": 14,
  "due_on": "2023-12-03",
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

### Response if document is locked

`Status` `403 Forbidden`

#### Body

```
{
  "error": "document_locked",
  "error_description": "Document first needs to be unlocked to perform the action"
}
```

## [Delete Invoice](#delete-invoice)

*   If successfully deleted the server will respond with status `204 No Content`.
*   If invoice cannot be deleted the server will respond with status `422 Unprocessable Content`.  
    Cases when the invoice cannot be deleted:
    *   Proforma which already has a paid invoice connected to it.
    *   Invoice which has a correction invoice connected to it.
    *   Proforma which has tax documents connected to it.
    *   Tax document which has invoice connected to it.
    *   Document is locked.

`DELETE` `/accounts/{slug}/invoices/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{id}.json` Copy

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

Invoice ID

`Integer`

`1`

### Response

`Status` `204 No Content`

### Response if invoice cannot be deleted

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

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Invoices](https://fakturoid.cz/api/v3/invoices)