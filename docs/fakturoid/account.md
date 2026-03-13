Zavřít menu

[Fakturoid web →](/)

*   [Introduction](https://fakturoid.cz/api/v3)
*   [Changelog](https://fakturoid.cz/api/v3/changelog)
*   [Authorization](https://fakturoid.cz/api/v3/authorization)
*   [Users](https://fakturoid.cz/api/v3/users)
*   [Account](https://fakturoid.cz/api/v3/account)
    *   [Attributes](#attributes)
    *   [Account Detail](#account-detail)
*   [Bank Accounts](https://fakturoid.cz/api/v3/bank-accounts)
*   [Number Formats](https://fakturoid.cz/api/v3/number-formats)
*   [Subjects](https://fakturoid.cz/api/v3/subjects)
*   [Invoices](https://fakturoid.cz/api/v3/invoices)
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

# Account

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`subdomain`

`String`

Name of the account

Read-only attribute

`plan`

`String`

Subscription plan

Read-only attribute

`plan_price`

`Integer`

Price of subscription plan

Read-only attribute

`plan_paid_users`

`Integer`

Number of paid users

Read-only attribute

`invoice_email`

`String`

Email for sending invoices

Read-only attribute

`phone`

`String`

Phone number

Read-only attribute

`web`

`String`

Account owner's website

Read-only attribute

`name`

`String`

The name of the company

Read-only attribute

`full_name`

`String`

Name of the account holder

Read-only attribute

`registration_no`

`String`

Registration number

Read-only attribute

`vat_no`

`String`

Tax identification number

Read-only attribute

`local_vat_no`

`String`

Tax identification number for SK subject

Read-only attribute

`vat_mode`

`String`

VAT mode  
Values: `vat_payer`, `non_vat_payer`, `identified_person`

Read-only attribute

`vat_price_mode`

`String`

VAT calculation mode  
Values: `with_vat`, `without_vat`, `numerical_with_vat`, `from_total_with_vat`  
Default: `without_vat`

Read-only attribute

`street`

`String`

Street

Read-only attribute

`city`

`String`

City

Read-only attribute

`zip`

`String`

Postal code

Read-only attribute

`country`

`String`

Country ([ISO Code](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes))

Read-only attribute

`currency`

`String`

Default currency ([ISO Code](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes))

Read-only attribute

`unit_name`

`String`

Default measurement unit

Read-only attribute

`vat_rate`

`Integer`

Default VAT rate

Read-only attribute

`displayed_note`

`String`

Invoice footer

Read-only attribute

`invoice_note`

`String`

Text before lines

Read-only attribute

`due`

`Integer`

Default number of days until an invoice becomes overdue

Read-only attribute

`invoice_language`

`String`

Default invoice language  
Values: `cz`, `sk`, `en`, `de`, `fr`, `it`, `es`, `ru`, `pl`, `hu`, `ro`  
Default: `cz`

Read-only attribute

`invoice_payment_method`

`String`

Default payment method  
Values: `bank`, `card`, `cash`, `cod` (cash on delivery), `paypal`  
When value is `null`, then `bank` method is used.

Read-only attribute

`invoice_proforma`

`Boolean`

Issue proforma by default

Read-only attribute

`invoice_hide_bank_account_for_payments`

`Array[String]`

Hide bank account for payments  
Values: `card`, `cash`, `cod` (cash on delivery), `paypal`  
Default: `null`

Read-only attribute

`fixed_exchange_rate`

`Boolean`

Fixed exchange rate

Read-only attribute

`invoice_selfbilling`

`Boolean`

Selfbilling enabled?

Read-only attribute

`default_estimate_type`

`String`

Default estimate in English  
Values: `estimate`, `quote`  
When value is `null`, then `estimate` is used.

Read-only attribute

`send_overdue_email`

`Boolean`

Send overdue reminders automatically?

Read-only attribute

`overdue_email_days`

`Integer`

Days after the due date to send a automatic overdue reminder?

Read-only attribute

`send_repeated_reminders`

`Boolean`

Send automatic overdue reminders repeatedly?

Read-only attribute

`send_invoice_from_proforma_email`

`Boolean`

Send email automatically when proforma is paid?

Read-only attribute

`send_thank_you_email`

`Boolean`

Send a thank you email when invoices is paid automatically?

Read-only attribute

`invoice_paypal`

`Boolean`

PayPal enabled for all invoices?

Read-only attribute

`invoice_gopay`

`Boolean`

GoPay enabled for all invoices?

Read-only attribute

`digitoo_enabled`

`Boolean`

Digitoo service enabled?

Read-only attribute

`digitoo_auto_processing_enabled`

`Boolean`

Digitoo service auto processing enabled

Read-only attribute

`digitoo_remaining_extractions`

`Integer`

Number of remaining extractions by Digitoo service

Read-only attribute

`created_at`

`DateTime`

Account creation date

Read-only attribute

`updated_at`

`DateTime`

The date the account was last modified

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Account Detail](#account-detail)

Account detail is read-only, please use the web interface to make changes.

`GET` `/accounts/{slug}/account.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/account.json` Copy

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

### Response

`Status` `200 OK`

#### Body

```
{
  "subdomain": "applecorp",
  "plan": "Na maximum",
  "plan_price": 460,
  "plan_paid_users": 0,
  "invoice_email": "testdph@test.cz",
  "phone": null,
  "web": null,
  "name": "Alexandr Hejsek",
  "full_name": null,
  "registration_no": "87654321",
  "vat_no": "CZ12121212",
  "local_vat_no": null,
  "vat_mode": "vat_payer",
  "vat_price_mode": "without_vat",
  "street": "Hopsinková 14",
  "city": "Praha",
  "zip": "10000",
  "country": "CZ",
  "currency": "CZK",
  "unit_name": "",
  "vat_rate": 21,
  "displayed_note": "",
  "invoice_note": "Fakturujeme Vám následující položky",
  "due": 14,
  "invoice_language": "cz",
  "invoice_payment_method": null,
  "invoice_proforma": false,
  "invoice_hide_bank_account_for_payments": null,
  "fixed_exchange_rate": false,
  "invoice_selfbilling": false,
  "default_estimate_type": null,
  "send_overdue_email": false,
  "overdue_email_days": 3,
  "send_repeated_reminders": false,
  "send_invoice_from_proforma_email": false,
  "send_thank_you_email": false,
  "invoice_paypal": false,
  "invoice_gopay": false,
  "digitoo_enabled": true,
  "digitoo_auto_processing_enabled": false,
  "digitoo_remaining_extractions": 44,
  "created_at": "2023-11-22T11:31:08.734+01:00",
  "updated_at": "2023-12-13T14:19:42.675+01:00"
}
```

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Account](https://fakturoid.cz/api/v3/account)