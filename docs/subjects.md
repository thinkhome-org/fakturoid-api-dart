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
    *   [Attributes](#attributes)
    *   [Subjects Index](#subjects-index)
    *   [Subjects Search](#subjects-search)
    *   [Subject Detail](#subject-detail)
    *   [Create Subject](#create-subject)
    *   [Update Subject](#update-subject)
    *   [Delete Subject](#delete-subject)
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
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)

# Subjects

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

Read-only attribute

`user_id`

`Integer`

User ID who created the subject

`type`

`String`

Type of subject  
Values: `"customer"`, `"supplier"`, `"both"`  
Default: `"customer"`

Required attribute

`name`

`String`

Name of the subject

`full_name`

`String`

Contact person name

`email`

`String`

Main email address receive invoice emails

`email_copy`

`String`

Email copy address to receive invoice emails

`phone`

`String`

Phone number

`web`

`String`

Web page

`street`

`String`

Street

`city`

`String`

City

`zip`

`String`

ZIP or postal code

`country`

`String`

Country (ISO code)  
Default: Account setting

`has_delivery_address`

`Boolean`

Enable delivery address  
Default: `false`  
To be able to set delivery address in the attributes below this must be set to `true`.  
Upon setting this to `false`, the delivery address below is cleared.

`delivery_name`

`String`

Delivery address name

`delivery_street`

`String`

Delivery address street

`delivery_city`

`String`

Delivery address city

`delivery_zip`

`String`

Delivery address ZIP or postal code

`delivery_country`

`String`

Delivery address country (ISO code)  
Default: Account setting

`due`

`Integer`

Number of days until an invoice is due for this subject  
Default: Inherit from account settings

`currency`

`String`

Currency (ISO code)  
Default: Inherit from account settings

`language`

`String`

Invoice language  
Default: Inherit from account settings

`private_note`

`String`

Private note

`registration_no`

`String`

Registration number (IČO)

`vat_no`

`String`

VAT-payer VAT number (DIČ, IČ DPH in Slovakia, typically starts with the country code)

`local_vat_no`

`String`

SK DIČ (only in Slovakia, does not start with country code)

Read-only attribute

`unreliable`

`Boolean`

Unreliable VAT-payer

Read-only attribute

`unreliable_checked_at`

`DateTime`

Date of last check for unreliable VAT-payer

`legal_form`

`String`

A three-digit number (as a string). Describes whether subject is a physical/natural person or a company of some sort. For list of codes see a CSV file on the official [Legal form](https://data.gov.cz/datov%C3%A1-sada?iri=https%3A%2F%2Fdata.gov.cz%2Fzdroj%2Fdatov%C3%A9-sady%2F17651921%2Fa53e252840787c4ecb08f60415b33690) page (corresponds to `chodnota` field).

`vat_mode`

`String`

VAT mode

`bank_account`

`String`

Bank account number

`iban`

`String`

IBAN

`swift_bic`

`String`

SWIFT/BIC

`variable_symbol`

`String`

Fixed variable symbol (used for all invoices for this client instead of invoice number)

`setting_update_from_ares`

`String`

Whether to update subject data from ARES. Used to override account settings  
Values: `inherit`, `on`, `off`  
Default: `inherit`  
Updating this will also update the deprecated `ares_update` attribute.  
If both this and the deprecated attribute are present, the new one takes precedence.

`ares_update`

`Boolean`

Whether to update subject data from ARES. Used to override account settings  
Default: `true`  
**Deprecated** in favor of `setting_update_from_ares`  
Updating this will also update the new attribute.

`setting_invoice_pdf_attachments`

`String`

Whether to attach invoice PDF in email. Used to override account settings  
Values: `inherit`, `on`, `off`  
Default: `inherit`

`setting_estimate_pdf_attachments`

`String`

Whether to attach estimate PDF in email. Used to override account settings  
Values: `inherit`, `on`, `off`  
Default: `inherit`

`setting_invoice_send_reminders`

`String`

Whether to send overdue invoice email reminders. Used to override account settings  
Values: `inherit`, `on`, `off`  
Default: `inherit`

`suggestion_enabled`

`Boolean`

Suggest for documents  
Default: `true`

`custom_email_text`

`String`

New invoice custom email text

`overdue_email_text`

`String`

Overdue reminder custom email text

`invoice_from_proforma_email_text`

`String`

Proforma paid custom email text

`thank_you_email_text`

`String`

Thanks for payment custom email text

`custom_estimate_email_text`

`String`

Estimate custom email text

`webinvoice_history`

`String`

Webinvoice history  
Values: `null`, `"disabled"`, `"recent"`, `"client_portal"`  
Default: `null` (inherit from account settings)

Read-only attribute

`html_url`

`String`

Subject HTML web address

Read-only attribute

`url`

`String`

Subject API address

Read-only attribute

`created_at`

`DateTime`

Date and time of subject creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last subject update

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Subjects Index](#subjects-index)

If query parameters `since` and `updated_since` are not valid date time format ([ISO 8601](https://en.wikipedia.org/wiki/ISO_8601)) the server will respond with `400 Bad Request`.

`GET` `/accounts/{slug}/subjects.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/subjects.json` Copy

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

Subjects created after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`updated_since`

Subject created or updated after this date

`DateTime`

`2023-08-25T10:55:14+02:00`

`page`

Page number (40 records per page)

`Integer`

`2`

`custom_id`

Filter by your own ID

`String`

`315`

### Response

`Status` `200 OK`

#### Body

```
[
  {
    "id": 16,
    "custom_id": null,
    "user_id": null,
    "type": "customer",
    "name": "Apple Czech s.r.o.",
    "full_name": null,
    "email": "pokus@test.cz",
    "email_copy": null,
    "phone": null,
    "web": "https://www.apple.cz",
    "street": "Klimentská 1216/46",
    "city": "Praha",
    "zip": "11000",
    "country": "CZ",
    "has_delivery_address": false,
    "delivery_name": null,
    "delivery_street": null,
    "delivery_city": null,
    "delivery_zip": null,
    "delivery_country": null,
    "due": null,
    "currency": null,
    "language": null,
    "private_note": null,
    "registration_no": "28897501",
    "vat_no": "CZ28897501",
    "local_vat_no": null,
    "unreliable": null,
    "unreliable_checked_at": null,
    "legal_form": null,
    "vat_mode": null,
    "bank_account": null,
    "iban": null,
    "swift_bic": null,
    "variable_symbol": null,
    "setting_update_from_ares": "inherit",
    "ares_update": false,
    "setting_invoice_pdf_attachments": "inherit",
    "setting_estimate_pdf_attachments": "inherit",
    "setting_invoice_send_reminders": "inherit",
    "suggestion_enabled": true,
    "custom_email_text": null,
    "overdue_email_text": null,
    "invoice_from_proforma_email_text": null,
    "thank_you_email_text": null,
    "custom_estimate_email_text": null,
    "webinvoice_history": null,
    "html_url": "https://app.fakturoid.cz/applecorp/subjects/16",
    "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/16.json",
    "created_at": "2023-08-22T10:59:00.330+02:00",
    "updated_at": "2023-08-22T10:59:00.330+02:00"
  },
  …
]
```

## [Subjects Search](#subjects-search)

Following fields are being searched: `name`, `full_name`, `email`, `email_copy`, `registration_no`, `vat_no` and `private_note`.

`GET` `/accounts/{slug}/subjects/search.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/subjects/search.json` Copy

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

`Apple`

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
    "id": 16,
    "custom_id": null,
    "user_id": null,
    "type": "customer",
    "name": "Apple Czech s.r.o.",
    … // Other fields truncated for brevity
  },
  …
]
```

## [Subject Detail](#subject-detail)

`GET` `/accounts/{slug}/subjects/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/subjects/{id}.json` Copy

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

Subject ID

`Integer`

`1`

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 16,
  "custom_id": null,
  "user_id": null,
  "type": "customer",
  "name": "Apple Czech s.r.o.",
  … // Other fields truncated for brevity
}
```

## [Create Subject](#create-subject)

*   The only required attribute is the `name` of the subject. If country is not specified, it is copied from the account settings.
*   If subject is successfully created the server will respond with `201 Created` and a JSON body with its data. A `Location` header will also be returned which contains a link to the newly created subject.
*   If subject limit should be exceeded the server will respond with `403 Forbidden`. If you are on a free plan Zdarma, you will need to upgrade to a paid plan. If you are already on a paid plan, please contact our support.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`POST` `/accounts/{slug}/subjects.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/subjects.json` Copy

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
  "name": "MICROSOFT s.r.o.",
  "street": "Vyskočilova 1461/2a",
  "city": "Praha",
  "zip": "14000",
  "country": "CZ",
  "registration_no": "47123737",
  "vat_no": "CZ47123737",
  "variable_symbol": "1234567890"
}
```

### Response

`Status` `201 Created`

#### Headers

Name

Value

`Location`

`https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/41.json`

#### Body

```
{
  "id": 41,
  "custom_id": null,
  "user_id": 5,
  "type": "customer",
  "name": "MICROSOFT s.r.o.",
  … // Other fields truncated for brevity
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
      "je příliš krátký/á/é (min. 2 znaků)"
    ]
  }
}
```

### Response if cannot add more subjects (limit would be exceeded)

`Status` `403 Forbidden`

## [Update Subject](#update-subject)

*   If subject is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`PATCH` `/accounts/{slug}/subjects/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/subjects/{id}.json` Copy

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

Subject ID

`Integer`

`1`

#### Body

```
{
  "city": "Praha"
}
```

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 41,
  "custom_id": null,
  "user_id": 5,
  "type": "customer",
  "name": "MICROSOFT s.r.o.",
  … // Other fields truncated for brevity
}
```

### Request with invalid data

#### Body

```
{
  "email": "bad@email"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "email": [
      "Prosím zkontrolujte email."
    ]
  }
}
```

## [Delete Subject](#delete-subject)

If a subject contains any documents it cannot be deleted and the server will respond with `422 Unprocessable Content`.

`DELETE` `/accounts/{slug}/subjects/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/subjects/{id}.json` Copy

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

Subject ID

`Integer`

`1`

### Response

`Status` `204 No Content`

### Response if subject cannot be deleted

`Status` `422 Unprocessable Content`

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
2.  [Subjects](/api/v3/subjects)