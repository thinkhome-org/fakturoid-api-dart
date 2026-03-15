# Fakturoid API v3 --- Account

------------------------------------------------------------------------

## Overview

The **Account** endpoint returns metadata and configuration of the
current Fakturoid account. The endpoint is **read‑only**. Account
configuration must be changed through the Fakturoid web interface.

Endpoint:

    GET /accounts/{slug}/account.json

Base API URL:

    https://app.fakturoid.cz/api/v3

------------------------------------------------------------------------

# Attributes

  ----------------------------------------------------------------------------------------
  Attribute                                Type                    Description
  ---------------------------------------- ----------------------- -----------------------
  subdomain *(read-only)*                  String                  Account identifier
                                                                   (slug)

  plan *(read-only)*                       String                  Subscription plan name

  plan_price *(read-only)*                 Integer                 Price of subscription

  plan_paid_users *(read-only)*            Integer                 Number of paid users

  invoice_email *(read-only)*              String                  Email used for invoice
                                                                   communication

  phone *(read-only)*                      String                  Contact phone

  web *(read-only)*                        String                  Website

  name *(read-only)*                       String                  Company name

  full_name *(read-only)*                  String                  Account holder name

  registration_no *(read-only)*            String                  Company registration
                                                                   number

  vat_no *(read-only)*                     String                  VAT number

  local_vat_no *(read-only)*               String                  Local VAT number

  vat_mode *(read-only)*                   String                  VAT mode

  vat_price_mode *(read-only)*             String                  VAT calculation mode

  street *(read-only)*                     String                  Street

  city *(read-only)*                       String                  City

  zip *(read-only)*                        String                  Postal code

  country *(read-only)*                    String                  ISO 3166‑1 country code

  currency *(read-only)*                   String                  ISO 4217 currency code

  unit_name *(read-only)*                  String                  Default measurement
                                                                   unit

  vat_rate *(read-only)*                   Integer                 Default VAT rate

  displayed_note *(read-only)*             String                  Invoice footer text

  invoice_note *(read-only)*               String                  Text shown before
                                                                   invoice lines

  due *(read-only)*                        Integer                 Default invoice due
                                                                   days

  invoice_language *(read-only)*           String                  Default invoice
                                                                   language

  invoice_payment_method *(read-only)*     String                  Default payment method

  invoice_proforma *(read-only)*           Boolean                 Create proforma invoice

  invoice_hide_bank_account_for_payments   Array\[String\]         Hide bank account for
  *(read-only)*                                                    selected payments

  fixed_exchange_rate *(read-only)*        Boolean                 Fixed exchange rate

  invoice_selfbilling *(read-only)*        Boolean                 Self‑billing enabled

  default_estimate_type *(read-only)*      String                  Default estimate type

  send_overdue_email *(read-only)*         Boolean                 Automatic overdue
                                                                   reminders

  overdue_email_days *(read-only)*         Integer                 Days after due date to
                                                                   send reminder

  send_repeated_reminders *(read-only)*    Boolean                 Repeat overdue
                                                                   reminders

  send_invoice_from_proforma_email         Boolean                 Send invoice when
  *(read-only)*                                                    proforma is paid

  send_thank_you_email *(read-only)*       Boolean                 Send thank‑you email
  *(read-only)*                                                    when invoice is paid

  invoice_paypal *(read-only)*             Boolean                 PayPal payments enabled

  invoice_gopay *(read-only)*              Boolean                 GoPay payments enabled

  digitoo_enabled *(read-only)*            Boolean                 Digitoo service enabled

  digitoo_auto_processing_enabled          Boolean                 Digitoo automatic
  *(read-only)*                                                    processing

  digitoo_remaining_extractions            Integer                 Remaining Digitoo
  *(read-only)*                                                    document extractions

  created_at *(read-only)*                 DateTime                Account creation time

  updated_at *(read-only)*                 DateTime                Last modification time
  ----------------------------------------------------------------------------------------

------------------------------------------------------------------------

# Enum Values

## vat_mode

Possible values:

    vat_payer
    non_vat_payer
    identified_person

## vat_price_mode

    with_vat
    without_vat
    numerical_with_vat
    from_total_with_vat

Default:

    without_vat

## invoice_language

    cz
    sk
    en
    de
    fr
    it
    es
    ru
    pl
    hu
    ro

Default:

    cz

## invoice_payment_method

    bank
    card
    cash
    cod
    paypal

If value is `null`, `bank` is used.

## invoice_hide_bank_account_for_payments

    card
    cash
    cod
    paypal

## default_estimate_type

    estimate
    quote

If value is `null`, default is:

    estimate

------------------------------------------------------------------------

# Account Detail

Account detail endpoint returns the complete configuration of a
Fakturoid account.

    GET /accounts/{slug}/account.json

------------------------------------------------------------------------

# Request

## Example

    GET https://app.fakturoid.cz/api/v3/accounts/{slug}/account.json

### Headers

  Header       Description
  ------------ ---------------------------------
  User-Agent   Required application identifier

Example:

    User-Agent: YourAppName (admin@example.com)

### URL Parameters

  Parameter   Type     Description          Example
  ----------- -------- -------------------- -----------
  slug        String   Account identifier   applecorp

------------------------------------------------------------------------

# Response

Status:

    200 OK

Body:

``` json
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
