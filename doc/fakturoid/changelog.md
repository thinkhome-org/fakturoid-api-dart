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

# Changelog

* * *

## [February 17, 2026](#february-17-2026)

*   Added `Idempotency-Key` header to [Webhook deliveries](https://fakturoid.cz/api/v3/webhooks#webhook-delivery).
*   Added `idempotency_key` attribute to [Failed Webhook Deliveries](https://fakturoid.cz/api/v3/webhooks#failed-webhook-deliveries).

## [February 9, 2026](#february-9-2026)

*   Added [Failed Webhook Deliveries](https://fakturoid.cz/api/v3/webhooks#failed-webhook-deliveries) endpoint.

## [October 21, 2025](#october-21-2025)

*   Added attribute to [Invoices](https://fakturoid.cz/api/v3/invoices):
    *   `rounding_adjustment`
*   Added attributes to [Expenses](https://fakturoid.cz/api/v3/expenses):
    *   `round_total`
    *   `rounding_adjustment`
*   Added attribute to [Generators](https://fakturoid.cz/api/v3/generators):
    *   `rounding_adjustment`
*   Added attribute to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators):
    *   `rounding_adjustment`

## [July 28, 2025](#july-28-2025)

*   Added attribute to [Invoices](https://fakturoid.cz/api/v3/invoices)
    *   `last_reminder_sent_at`

## [April 9, 2025](#april-9-2025)

*   Added ability to manage [Webhooks](https://fakturoid.cz/api/v3/webhooks) via [Client Credentials Flow](https://fakturoid.cz/api/v3/authorization#client-credentials-flow).

## [March 6, 2025](#march-6-2025)

*   Added support for multiple tokens for [Client Credentials Flow](https://fakturoid.cz/api/v3/authorization#client-credentials-flow) authorization.

## [February 6, 2025](#february-6-2025)

*   Added rate limit headers to all API responses. See the [Rate-limiting documentation](https://fakturoid.cz/api/v3#rate-limiting) for more details.

## [January 6, 2025](#january-6-2025)

*   Added ability to [Invoices](https://fakturoid.cz/api/v3/invoices#attachments) and [Expenses](https://fakturoid.cz/api/v3/expenses#attachments) attachments to be defined as an array of objects.

## [December 13, 2024](#december-13-2024)

*   Added attribute to [Expenses](https://fakturoid.cz/api/v3/expenses):
    *   `remind_due_date`

## [September 13, 2024](#september-13-2024)

*   Added attributes to [Subjects](https://fakturoid.cz/api/v3/subjects):
    *   `setting_update_from_ares`
    *   `setting_invoice_pdf_attachments`
    *   `setting_estimate_pdf_attachments`
    *   `setting_invoice_send_reminders`

## [August 22, 2024](#august-22-2024)

*   Added ability to pause and activate recurring generators.

## [August 3, 2024](#august-3-2024)

*   Added support for multiple attachments for Invoice and Expense resources.

## [July 1, 2024](#july-1-2024)

*   New version of [webhooks](https://fakturoid.cz/api/v3/webhooks) released.

## [June 11, 2024](#june-11-2024)

*   Fixed `user.id` attribute in returned response body in Events. Server originaly returned `user_id` instead of `id`.

## [April 4, 2024 API v3 release - Changes from API v2](#april-4-2024-api-v3-release-changes-from-api-v2)

### [General changes](#general-changes)

*   Switched authentication from API keys to [OAuth](https://fakturoid.cz/api/v3/authorization).
*   Added JSON body to certain errors to provide more context.
*   Removed `Link` header for pagination. Instead use `page` parameter to collect all items until response becomes an empty array.
*   Removed support for HTTP Cache (`ETag`, `Last-Modified` headers).

### [](#users)[Users](https://fakturoid.cz/api/v3/users)

#### [Additions](#additions)

*   Endpoint `/user.json`:
    *   `default_account`
    *   `accounts`:
    *   `registration_no`
    *   `allowed_scope`
*   Endpoint `/accounts/{slug}/users.json`:
    *   `allowed_scope`

#### [Removals](#removals)

*   Endpoint `/accounts/{slug}/users/{id}.json`

### [](#accounts)[Accounts](https://fakturoid.cz/api/v3/account)

#### [Additions](#additions)

*   `plan_paid_users`
*   `local_vat_no`
*   `invoice_hide_bank_account_for_payments`
*   `fixed_exchange_rate`
*   `invoice_selfbilling`
*   `default_estimate_type`
*   `overdue_email_days`
*   `send_repeated_reminders`
*   `digitoo_enabled`
*   `digitoo_auto_processing_enabled`
*   `digitoo_remaining_extractions`

#### [Removals](#removals)

*   `email`
*   `street2`
*   `bank_account`
*   `iban`
*   `swift_bic`
*   `invoice_number_format`
*   `proforma_number_format`
*   `custom_email_text`
*   `overdue_email_text`
*   `eet`
*   `eet_invoice_default`
*   `html_url`
*   `url`

### [](#bank-accounts)[Bank Accounts](https://fakturoid.cz/api/v3/bank-accounts)

#### [Additions](#additions)

*   `expense_pairing`
*   `created_at`
*   `updated_at`

### [](#subjects)[Subjects](https://fakturoid.cz/api/v3/subjects)

#### [Additions](#additions)

*   `has_delivery_address`
*   `delivery_name`
*   `delivery_street`
*   `delivery_city`
*   `delivery_zip`
*   `delivery_country`
*   `swift_bic`
*   `currency`
*   `language`
*   `ares_update`
*   `suggestion_enabled`
*   `unreliable`
*   `unreliable_checked_at`
*   `legal_form`
*   `custom_email_text`
*   `overdue_email_text`
*   `invoice_from_proforma_email_text`
*   `thank_you_email_text`
*   `custom_estimate_email_text`
*   `webinvoice_history`

#### [Removals](#removals)

*   `street2`
*   `avatar_url`
*   `enabled_reminders`

### [](#invoices)[Invoices](https://fakturoid.cz/api/v3/invoices)

#### [Changes](#changes)

*   Endpoint `/accounts/{slug}/invoices/index.json`  
    Added query parameter `document_type` to filter by specific document types.
*   Endpoint `/accounts/{slug}/invoices/search.json`  
    Fulltext search does not search by tags anymore, but a new query parameter `tags` can be used instead.
*   Endpoint for attachment download has changed from `/accounts/{slug}/invoices/{id}/download`  
    to `/accounts/{slug}/invoices/{invoice_id}/attachments/{id}/download`

#### [Additions](#additions)

*   `document_type`
*   `proforma_followup_document`
*   `client_has_delivery_address`
*   `client_delivery_name`
*   `client_delivery_street`
*   `client_delivery_city`
*   `client_delivery_zip`
*   `client_delivery_country`
*   `paid_on`
*   `uncollectible_at`
*   `locked_at`
*   `webinvoice_seen_on`
*   `iban_visibility`
*   `custom_payment_method`
*   `lines`:
    *   `total_price_without_vat`
    *   `total_vat`
    *   `native_total_price_without_vat`
    *   `native_total_vat`
    *   `inventory`
*   `vat_rates_summary`
*   `tax_documents`
*   `payments`
*   `attachments`

#### [Removals](#removals)

*   Endpoints removed in favor of a query parameter `document_type` in the `invoices.json` endpoint:
    *   `/{slug}/invoices/regular.json`
    *   `/{slug}/invoices/proforma.json`
    *   `/{slug}/invoices/correction.json`
*   From endpoint `/accounts/{slug}/invoices/{id}/fire.json` were removed following events:
    *   `deliver` (in favor of Invoice Messages)
    *   `deliver_reminder` (in favor of Invoice Messages)
    *   `pay` (in favor of Invoice Payments)
    *   `pay_proforma` (in favor of Invoice Payments)
    *   `pay_partial_proforma` (in favor of Invoice Payments)
    *   `remove_payment` (in favor of Invoice Payments)
*   `proforma` (in favor of `document_type` attribute)
*   `partial_proforma` (in favor of `document_type` attribute)
*   `correction` (in favor of `document_type` attribute)
*   `your_street2`
*   `client_street2`
*   `paid_at` (changed to `paid_on` and type changed from `DateTime` to `Date`)
*   `accepted_at`
*   `webinvoice_seen_at`
*   `eu_electronic_service` (use `oss` instead)
*   `paid_amount`
*   `eet`
*   `eet_cash_register`
*   `eet_store`
*   `attachment` (in favor of `attachments`)

### [](#invoice-payments)[Invoice Payments](https://fakturoid.cz/api/v3/invoice-payments)

Paying invoices (and deletion of payments) was extracted into a separate set of endpoints.

### [](#invoice-messages)[Invoice Messages](https://fakturoid.cz/api/v3/invoice-messages)

#### [Changes](#changes)

*   Endpoint `/accounts/{slug}/invoices/{invoice_id}/message.json` returns `204 No Content` on successful creation.

### [](#expenses)[Expenses](https://fakturoid.cz/api/v3/expenses)

#### [Changes](#changes)

*   Endpoint `/accounts/{slug}/expenses/search.json`  
    Fulltext search does not search by tags anymore, but a new query parameter `tags` can be used instead.
*   Endpoint for attachment download has changed from `/accounts/{slug}/expenses/{id}/download` to `/accounts/{slug}/expenses/{expense_id}/attachments/{id}/download`.

#### [Additions](#additions)

*   `supplier_local_vat_no`
*   `locked_at`
*   `custom_payment_method`
*   `lines`:
    *   `total_price_without_vat`
    *   `total_vat`
    *   `native_total_price_without_vat`
    *   `native_total_vat`
    *   `inventory`
*   `vat_rates_summary`
*   `payments`
*   `attachments`

#### [Removals](#removals)

*   From endpoint `/accounts/{slug}/expenses/{id}/fire.json` were removed following events:
    *   `pay` (in favor of Expense Payments)
    *   `remove_payment` (in favor of Expense Payments)
*   `supplier_street2`
*   `paid_amount`
*   `price`
*   `native_price`
*   `attachment` (in favor of `attachments`)

### [](#expense-payments)[Expense Payments](https://fakturoid.cz/api/v3/expense-payments)

Paying expenses (and deletion of payments) was extracted into a separate set of endpoints.

### [](#inventory-items)[Inventory Items](https://fakturoid.cz/api/v3/inventory-items)

#### [Changes](#changes)

*   Fixed response JSON for endpoint `/accounts/{slug}/inventory_items/archived.json` (is now the same as index).
*   Fixed response JSON for endpoint `/accounts/{slug}/inventory_items/search.json` (is now the same as index).

#### [Additions](#additions)

*   Endpoint `/accounts/{slug}/inventory_items/low_quantity.json`
*   `low_quantity_date`

### [](#inventory-moves)[Inventory Moves](https://fakturoid.cz/api/v3/inventory-moves)

#### [Changes](#changes)

*   Fixed `Location` header after inventory move creation.

#### [Additions](#additions)

*   `document`

### [](#generators)[Generators](https://fakturoid.cz/api/v3/generators)

Generators and Recurring generators are now split, each with their own separate endpoints.

#### [Additions](#additions)

*   `iban_visibility`
*   `custom_payment_method`
*   `lines`:
    *   `inventory_item_id`
*   `legacy_bank_details`

#### [Removals](#removals)

*   Endpoint `/accounts/{slug}/generators/recurring.json` (use new [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators) instead)
*   Endpoint `/accounts/{slug}/generators/template.json` (not needed anymore)
*   `active` (moved to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators))
*   `recurring`
*   `start_date` (moved to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators))
*   `end_date` (moved to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators))
*   `months_period` (moved to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators))
*   `next_occurrence_on` (moved to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators))
*   `last_day_in_month` (moved to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators))
*   `send_email` (moved to [Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators))
*   `eet`
*   `eu_electronic_service`

### [](#recurring-generators)[Recurring Generators](https://fakturoid.cz/api/v3/recurring-generators)

API for recurring generators was separated from regular generators (templates).

### [](#events)[Events](https://fakturoid.cz/api/v3/events)

#### [Additions](#additions)

*   `related_objects` (includes all relations, replaces separate id attributes)
*   `params` (contains extra details for a given event)

#### [Removals](#removals)

*   `invoice_id`
*   `subject_id`
*   `invoice_url`
*   `subject_url`

### [](#todos)[Todos](https://fakturoid.cz/api/v3/todos)

#### [Additions](#additions)

*   `related_objects` (includes all relations, replaces separate id attributes)
*   `params` (contains extra details for a given todo)

#### [Removals](#removals)

*   `invoice_id`
*   `subject_id`
*   `invoice_url`
*   `subject_url`

### [Reports](#reports)

Reports endpoint was removed.

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Changelog](https://fakturoid.cz/api/v3/changelog)