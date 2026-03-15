# Changelog

---

## February 17, 2026

- Added `Idempotency-Key` header to Webhook deliveries.
- Added `idempotency_key` attribute to Failed Webhook Deliveries.

## February 9, 2026

- Added Failed Webhook Deliveries endpoint.

## October 21, 2025

- Added attribute to Invoices:
  - `rounding_adjustment`
- Added attributes to Expenses:
  - `round_total`
  - `rounding_adjustment`
- Added attribute to Generators:
  - `rounding_adjustment`
- Added attribute to Recurring Generators:
  - `rounding_adjustment`

## July 28, 2025

- Added attribute to Invoices
  - `last_reminder_sent_at`

## April 9, 2025

- Added ability to manage Webhooks via Client Credentials Flow.

## March 6, 2025

- Added support for multiple tokens for Client Credentials Flow authorization.

## February 6, 2025

- Added rate limit headers to all API responses. See the Rate-limiting documentation for more details.

## January 6, 2025

- Added ability to Invoices and Expenses attachments to be defined as an array of objects.

## December 13, 2024

- Added attribute to Expenses:
  - `remind_due_date`

## September 13, 2024

- Added attributes to Subjects:
  - `setting_update_from_ares`
  - `setting_invoice_pdf_attachments`
  - `setting_estimate_pdf_attachments`
  - `setting_invoice_send_reminders`

## August 22, 2024

- Added ability to pause and activate recurring generators.

## August 3, 2024

- Added support for multiple attachments for Invoice and Expense resources.

## July 1, 2024

- New version of webhooks released.

## June 11, 2024

- Fixed `user.id` attribute in returned response body in Events. Server originaly returned `user_id` instead of `id`.

## April 4, 2024 API v3 release - Changes from API v2

### General changes

- Switched authentication from API keys to OAuth.
- Added JSON body to certain errors to provide more context.
- Removed `Link` header for pagination. Instead use `page` parameter to collect all items until response becomes an empty array.
- Removed support for HTTP Cache (`ETag`, `Last-Modified` headers).

### Users

#### Additions

- Endpoint `/user.json`:
  - `default_account`
  - `accounts`:
  - `registration_no`
  - `allowed_scope`
- Endpoint `/accounts/{slug}/users.json`:
  - `allowed_scope`

#### Removals

- Endpoint `/accounts/{slug}/users/{id}.json`

### Accounts

#### Additions

- `plan_paid_users`
- `local_vat_no`
- `invoice_hide_bank_account_for_payments`
- `fixed_exchange_rate`
- `invoice_selfbilling`
- `default_estimate_type`
- `overdue_email_days`
- `send_repeated_reminders`
- `digitoo_enabled`
- `digitoo_auto_processing_enabled`
- `digitoo_remaining_extractions`

#### Removals

- `email`
- `street2`
- `bank_account`
- `iban`
- `swift_bic`
- `invoice_number_format`
- `proforma_number_format`
- `custom_email_text`
- `overdue_email_text`
- `eet`
- `eet_invoice_default`
- `html_url`
- `url`

### Bank Accounts

#### Additions

- `expense_pairing`
- `created_at`
- `updated_at`

### Subjects

#### Additions

- `has_delivery_address`
- `delivery_name`
- `delivery_street`
- `delivery_city`
- `delivery_zip`
- `delivery_country`
- `swift_bic`
- `currency`
- `language`
- `ares_update`
- `suggestion_enabled`
- `unreliable`
- `unreliable_checked_at`
- `legal_form`
- `custom_email_text`
- `overdue_email_text`
- `invoice_from_proforma_email_text`
- `thank_you_email_text`
- `custom_estimate_email_text`
- `webinvoice_history`

#### Removals

- `street2`
- `avatar_url`
- `enabled_reminders`

### Invoices

#### Changes

- Endpoint `/accounts/{slug}/invoices/index.json`
  Added query parameter `document_type` to filter by specific document types.
- Endpoint `/accounts/{slug}/invoices/search.json`
  Fulltext search does not search by tags anymore, but a new query parameter `tags` can be used instead.
- Endpoint for attachment download has changed from `/accounts/{slug}/invoices/{id}/download`
  to `/accounts/{slug}/invoices/{invoice_id}/attachments/{id}/download`

#### Additions

- `document_type`
- `proforma_followup_document`
- `client_has_delivery_address`
- `client_delivery_name`
- `client_delivery_street`
- `client_delivery_city`
- `client_delivery_zip`
- `client_delivery_country`
- `paid_on`
- `uncollectible_at`
- `locked_at`
- `webinvoice_seen_on`
- `iban_visibility`
- `custom_payment_method`
- `lines`:
  - `total_price_without_vat`
  - `total_vat`
  - `native_total_price_without_vat`
  - `native_total_vat`
  - `inventory`
- `vat_rates_summary`
- `tax_documents`
- `payments`
- `attachments`

#### Removals

- Endpoints removed in favor of a query parameter `document_type` in the `invoices.json` endpoint:
  - `/{slug}/invoices/regular.json`
  - `/{slug}/invoices/proforma.json`
  - `/{slug}/invoices/correction.json`
- From endpoint `/accounts/{slug}/invoices/{id}/fire.json` were removed following events:
  - `deliver` (in favor of Invoice Messages)
  - `deliver_reminder` (in favor of Invoice Messages)
  - `pay` (in favor of Invoice Payments)
  - `pay_proforma` (in favor of Invoice Payments)
  - `pay_partial_proforma` (in favor of Invoice Payments)
  - `remove_payment` (in favor of Invoice Payments)
- `proforma` (in favor of `document_type` attribute)
- `partial_proforma` (in favor of `document_type` attribute)
- `correction` (in favor of `document_type` attribute)
- `your_street2`
- `client_street2`
- `paid_at` (changed to `paid_on` and type changed from `DateTime` to `Date`)
- `accepted_at`
- `webinvoice_seen_at`
- `eu_electronic_service` (use `oss` instead)
- `paid_amount`
- `eet`
- `eet_cash_register`
- `eet_store`
- `attachment` (in favor of `attachments`)

### Invoice Payments

Paying invoices (and deletion of payments) was extracted into a separate set of endpoints.

### Invoice Messages

#### Changes

- Endpoint `/accounts/{slug}/invoices/{invoice_id}/message.json` returns `204 No Content` on successful creation.

### Expenses

#### Changes

- Endpoint `/accounts/{slug}/expenses/search.json`
  Fulltext search does not search by tags anymore, but a new query parameter `tags` can be used instead.
- Endpoint for attachment download has changed from `/accounts/{slug}/expenses/{id}/download` to `/accounts/{slug}/expenses/{expense_id}/attachments/{id}/download`.

#### Additions

- `supplier_local_vat_no`
- `locked_at`
- `custom_payment_method`
- `lines`:
  - `total_price_without_vat`
  - `total_vat`
  - `native_total_price_without_vat`
  - `native_total_vat`
  - `inventory`
- `vat_rates_summary`
- `payments`
- `attachments`

#### Removals

- From endpoint `/accounts/{slug}/expenses/{id}/fire.json` were removed following events:
  - `pay` (in favor of Expense Payments)
  - `remove_payment` (in favor of Expense Payments)
- `supplier_street2`
- `paid_amount`
- `price`
- `native_price`
- `attachment` (in favor of `attachments`)

### Expense Payments

Paying expenses (and deletion of payments) was extracted into a separate set of endpoints.

### Inventory Items

#### Changes

- Fixed response JSON for endpoint `/accounts/{slug}/inventory_items/archived.json` (is now the same as index).
- Fixed response JSON for endpoint `/accounts/{slug}/inventory_items/search.json` (is now the same as index).

#### Additions

- Endpoint `/accounts/{slug}/inventory_items/low_quantity.json`
- `low_quantity_date`

### Inventory Moves

#### Changes

- Fixed `Location` header after inventory move creation.

#### Additions

- `document`

### Generators

Generators and Recurring generators are now split, each with their own separate endpoints.

#### Additions

- `iban_visibility`
- `custom_payment_method`
- `lines`:
  - `inventory_item_id`
- `legacy_bank_details`

#### Removals

- Endpoint `/accounts/{slug}/generators/recurring.json` (use new Recurring Generators instead)
- Endpoint `/accounts/{slug}/generators/template.json` (not needed anymore)
- `active` (moved to Recurring Generators)
- `recurring`
- `start_date` (moved to Recurring Generators)
- `end_date` (moved to Recurring Generators)
- `months_period` (moved to Recurring Generators)
- `next_occurrence_on` (moved to Recurring Generators)
- `last_day_in_month` (moved to Recurring Generators)
- `send_email` (moved to Recurring Generators)
- `eet`
- `eu_electronic_service`

### Recurring Generators

API for recurring generators was separated from regular generators (templates).

### Events

#### Additions

- `related_objects` (includes all relations, replaces separate id attributes)
- `params` (contains extra details for a given event)

#### Removals

- `invoice_id`
- `subject_id`
- `invoice_url`
- `subject_url`

### Todos

#### Additions

- `related_objects` (includes all relations, replaces separate id attributes)
- `params` (contains extra details for a given todo)

#### Removals

- `invoice_id`
- `subject_id`
- `invoice_url`
- `subject_url`

### Reports

Reports endpoint was removed.
