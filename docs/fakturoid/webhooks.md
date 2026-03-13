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
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)
    *   [Attributes](#attributes)
    *   [Webhook index](#webhook-index)
    *   [Webhook Detail](#webhook-detail)
    *   [Create Webhook](#create-webhook)
    *   [Update Webhook](#update-webhook)
    *   [Delete Webhook](#delete-webhook)
    *   [Failed Webhook Deliveries](#failed-webhook-deliveries)
    *   [Webhook delivery](#webhook-delivery)

# Webhooks

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Unique identifier in Fakturoid

Read-only attribute

`failed_deliveries_uuid`

`UUID`

Unique identifier used in the [Failed Webhook Deliveries](#failed-webhook-deliveries) endpoint

`webhook_url`

`String`

URL of webhook endpoint

`auth_header`

`String`

Value send in `Authorization` header

`active`

`Boolean`

Send webhook?

`events`

`Array[String]`

List of events when webhook is fired

Read-only attribute

`url`

`String`

Webhook API address

Read-only attribute

`created_at`

`DateTime`

Date and time of webhook creation

Read-only attribute

`updated_at`

`DateTime`

Date and time of last webhook update

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

### [Restrictions](#restrictions)

*   Webhooks are only available in paid plans.
*   Every account can create webhooks in their account in Fakturoid UI. How to create webhooks in your account see the [support page (cz)](/podpora/automatizace/webhooky).
*   In addition to the UI, new webhooks can also be created and managed via API using both the [authorization code flow](/api/v3/authorization#authorization-code-flow) and the [client credentials flow](/api/v3/authorization#client-credentials-flow):
*   **Authorization code flow**
    *   To manage webhooks via API, please [contact our support team](mailto:podpora@fakturoid.cz) first. Without prior authorization, a `Status 403` response will be returned
*   **Client credentials flow**
    *   Webhook management must be enabled in the UI in your user screen _Settings → User account_.
*   Both OAuth integrations and client credentials can manage only their own webhooks; access to other webhooks within the account is restricted.
*   When an OAuth integration or client credentials are revoked, all associated webhooks are automatically deleted.

### [Events](#events)

Webhooks are triggered when one of resources listed below is modified. Action may be triggered by user interaction, API call, or automatically (e.g. invoice is marked as overdue). Some events may include additional payload, which contains related resources to the event. For more information about the payload, please refer to the section on [Payload Content](#payload-content).

Invoice

Event name

Additional payload

Description

`invoice_created`

Invoice was created. Event is triggered automatically, including when invoice is created by recurring generator or as a result of paying proforma.

`invoice_updated`

Invoice was updated. Event is also triggered when tags are modified or attachment is removed.

`invoice_removed`

Invoice was deleted and moved to the trash.

`invoice_restored`

Invoice was restored from the trash.

`invoice_overdue`

Invoice was marked as overdue.

`invoice_paid`

`payment: Payment`

Payment was added to document and marked it as paid. Payload contains `payment` data.

`invoice_payment_added`

`payment: Payment`

Payment was added to the invoice, but didn't mark it as paid. Payload contains `payment` data.

`invoice_payment_removed`

`payments: Array[Payment]`

Invoice was marked as unpaid, and the payments in the additional payload were removed.

`invoice_sent`

Email with the invoice was sent to the subject.

`invoice_locked`

Invoice was locked.

`invoice_unlocked`

Invoice was unlocked

`invoice_cancelled`

Invoice was marked as cancelled.

`invoice_cancellation_removed`

Cancellation was removed.

`invoice_uncollectible`

Invoice was marked as uncollectible.

`invoice_uncollectible_removed`

Uncollectibility was removed.

Generator

Event name

Additional payload

Description

`generator_created`

Generator was created.

`generator_updated`

Generator was updated. Event is also triggered when tags are modified or attachment is removed.

`generator_removed`

Generator was deleted and moved to the trash.

`generator_restored`

Generator was restored from the trash.

Recurring Generators

Event name

Additional payload

Description

`recurring_generator_created`

Recurring generator was created. Event is also triggered when tags are modified, attachment is removed or recurring generator is activated again.

`recurring_generator_updated`

Recurring generator was updated.

`recurring_generator_removed`

Recurring generator was deleted and moved to the trash.

`recurring_generator_restored`

Recurring generator was restored from the trash.

`recurring_generator_invoice_created`

`invoice: Invoice`

Recurring generator created an invoice.

`recurring_generator_paused`

Recurring generator was paused.

Expense

Event name

Additional payload

Description

`expense_created`

Expense was created.

`expense_updated`

Expense was updated. Event is also triggered when tags are modified or attachment is removed.

`expense_removed`

Expense was deleted and moved to the trash.

`expense_restored`

Expense was restored from the trash.

`expense_overdue`

Expense was marked as overdue.

`expense_paid`

`payment: Payment`

Expense was marked as paid. Payment object is included in payload.

`expense_payment_added`

`payment: Payment`

Payment was added to the expense, but the document is still not marked as paid.

`expense_payment_removed`

`payments: Array[Payment]`

Expense was marked as unpaid, and payments in additional payload were removed.

`expense_locked`

Expense was locked.

`expense_unlocked`

Expense was unlocked

Inbox file

Event name

Additional payload

Description

`inbox_file_created`

Inbox file was created.

`inbox_file_updated`

Inbox file was updated.

`inbox_file_removed`

`expense: Expense`

Inbox file was deleted. If expense was created from inbox file, `expense` attribute is contained in payload.

`inbox_file_removed_all`

`count: Integer`

All inbox files were deleted. Payload contains only number of deleted records.

`inbox_file_ocr_processing_failed`

Uploading file for OCR processing failed.

`inbox_file_ocr_processing_rejected`

OCR processing was rejected by external service.

`inbox_file_ocr_processed`

OCR data were extracted.

Inventory item

Event name

Additional payload

Description

`inventory_item_created`

Inventory item was created.

`inventory_item_updated`

Inventory item was updated.

`inventory_item_removed`

Inventory item was deleted.

`inventory_item_archived`

Inventory item was archived.

`inventory_item_unarchived`

Inventory item was unarchived.

Inventory move

Event name

Additional payload

Description

`inventory_move_created`

`inventory_item: InventoryItem`

Inventory move was created. Modified `InventoryItem` is included in payload.

`inventory_move_updated`

`inventory_item: InventoryItem`

Inventory move was updated. Modified `InventoryItem` is included in payload.

`inventory_move_removed`

`inventory_item: InventoryItem`

Inventory move was deleted. Modified `InventoryItem` is included in payload.

Subject

Event name

Additional payload

Description

`subject_created`

Subject was created.

`subject_updated`

Subject was updated.

`subject_removed`

Subject was deleted.

## [Webhook index](#webhook-index)

`GET` `/accounts/{slug}/webhooks.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/webhooks.json` Copy

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
    "id": 5,
    "failed_deliveries_uuid": "b3518e74-5c9f-4b26-a5e2-6a8021c94a77",
    "webhook_url": "https://example.com/webhook",
    "auth_header": "Bearer TOKEN",
    "active": true,
    "events": [
      "invoice_created",
      "invoice_updated",
      "invoice_paid"
    ],
    "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/webhooks/5.json",
    "created_at": "2024-06-12T13:29:23.568+02:00",
    "updated_at": "2024-06-12T13:29:23.568+02:00"
  },
  …
]
```

## [Webhook Detail](#webhook-detail)

`GET` `/accounts/{slug}/webhooks/{id}.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/webhooks/{id}.json` Copy

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

Webhook ID

`Integer`

`5`

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 5,
  "failed_deliveries_uuid": "b3518e74-5c9f-4b26-a5e2-6a8021c94a77",
  "webhook_url": "https://example.com/webhook",
  "auth_header": "Bearer TOKEN",
  "active": true,
  "events": [
    "invoice_created",
    "invoice_updated",
    "invoice_paid"
  ],
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/webhooks/5.json",
  "created_at": "2024-06-12T13:29:23.568+02:00",
  "updated_at": "2024-06-12T13:29:23.568+02:00"
}
```

## [Create Webhook](#create-webhook)

*   After successful webhook creation, you will receive a `201 Created` response from the server, the `location` header will be set to the address of the newly created webhook.
*   If non-valid data is sent, you will receive a `422 Unprocessable Content` response from the server and a JSON with a list of errors in the sent data.

`POST` `/accounts/{slug}/webhooks.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/webhooks.json` Copy

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
  "webhook_url": "https://example.com/webhook",
  "auth_header": "Bearer TOKEN",
  "events": [
    "invoice_created",
    "invoice_updated",
    "invoice_paid"
  ]
}
```

### Response

`Status` `201 Created`

#### Headers

Name

Value

`Location`

`https://app.fakturoid.cz/api/v3/accounts/applecorp/webhooks/5.json`

#### Body

```
{
  "id": 5,
  "failed_deliveries_uuid": "b3518e74-5c9f-4b26-a5e2-6a8021c94a77",
  "webhook_url": "https://example.com/webhook",
  "auth_header": "Bearer TOKEN",
  "active": true,
  "events": [
    "invoice_created",
    "invoice_updated",
    "invoice_paid"
  ],
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/webhooks/5.json",
  "created_at": "2024-06-12T13:29:23.568+02:00",
  "updated_at": "2024-06-12T13:29:23.568+02:00"
}
```

### Request with invalid data

#### Body

```
{
  "webhook_url": "https://example.com/webhook",
  "events": []
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "events": [
      "can't be empty"
    ]
  }
}
```

## [Update Webhook](#update-webhook)

*   If webhook is successfully updated the server will respond with `200 OK` and a JSON body with its data.
*   Request with invalid data will result in response `422 Unprocessable Content` with a JSON body describing errors found in the request.

`PATCH` `/accounts/{slug}/webhooks/{id}.json`

### Request

`PATCH` `https://app.fakturoid.cz/api/v3/accounts/{slug}/webhooks/{id}.json` Copy

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

Webhook ID

`Integer`

`17`

#### Body

```
{
  "active": false
}
```

### Response

`Status` `200 OK`

#### Body

```
{
  "id": 5,
  "failed_deliveries_uuid": "b3518e74-5c9f-4b26-a5e2-6a8021c94a77",
  "webhook_url": "https://example.com/webhook",
  "auth_header": "Bearer TOKEN",
  "active": false,
  "events": [
    "invoice_created",
    "invoice_updated",
    "invoice_paid"
  ],
  "url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/webhooks/5.json",
  "created_at": "2024-06-12T13:29:23.568+02:00",
  "updated_at": "2024-06-12T13:32:14.863+02:00"
}
```

### Request with invalid data

#### Body

```
{
  "events": []
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "events": [
      "can't be empty"
    ]
  }
}
```

## [Delete Webhook](#delete-webhook)

After deleting the webhook the server will respond with `204 No Content`.

`DELETE` `/accounts/{slug}/webhooks/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/webhooks/{id}.json` Copy

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

Webhook ID

`Integer`

`1`

### Response

`Status` `204 No Content`

## [Failed Webhook Deliveries](#failed-webhook-deliveries)

Returns a list of webhook events that completely failed to be delivered after all retry attempts, along with details of each delivery attempt.

`GET` `/accounts/{slug}/webhooks/{failed_deliveries_uuid}/failed_deliveries.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/webhooks/{failed_deliveries_uuid}/failed_deliveries.json` Copy

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

`failed_deliveries_uuid`

Webhook UUID

`UUID`

`7a5d586d-76a2-4da7-9d34-0214cd098faf`

### Response

`Status` `200 OK`

#### Body

Each item in the response array represents a webhook event that failed to be delivered. The `deliveries` array contains individual delivery attempts sorted from the most recent to the oldest.

Attribute

Type

Description

`id`

`Integer`

Unique identifier of the webhook event

`event_name`

`String`

Name of the event that triggered the webhook

`idempotency_key`

`UUID`

UUID v7 sent in `Idempotency-Key` header during delivery

`url`

`String`

URL the webhook was delivered to

`body`

`Object`

Webhook payload (see [Payload Content](#payload-content))

`created_at`

`DateTime`

Date and time when the webhook event was created

`updated_at`

`DateTime`

Date and time of last update

`deliveries`

`Array`

List of delivery attempts

`deliveries[].id`

`Integer`

Unique identifier of the delivery attempt

`deliveries[].request_id`

`UUID`

Unique request identifier

`deliveries[].response_status`

`String`

HTTP status code (e.g. `404`) or one of `ssl_error`, `connection_failed`, `timeout`, `unknown_error`. The list of error types may be extended in the future.

`deliveries[].response_content_type`

`String`

Content type of the response (`null` if no response was received)

`deliveries[].response_body`

`String`

Body of the response (`null` if no response was received)

`deliveries[].started_at`

`DateTime`

Date and time when the delivery attempt started

`deliveries[].finished_at`

`DateTime`

Date and time when the delivery attempt finished

`deliveries[].created_at`

`DateTime`

Date and time when the delivery record was created

```
[
  {
    "id": 1,
    "event_name": "invoice_created",
    "idempotency_key": "019505e0-85b3-7a4b-a163-740753e8e21a",
    "url": "https://www.example.com/webhook-endpoint",
    "body": {
      "body": { … },
      "created_at": "2026-02-06T14:42:14.674+01:00",
      "event_name": "invoice_created",
      "webhook_id": 6
    },
    "created_at": "2026-02-06T14:42:14.678+01:00",
    "updated_at": "2026-02-06T14:55:10.794+01:00",
    "deliveries": [
      {
        "id": 3,
        "request_id": "7a5d586d-76a2-4da7-9d34-0214cd098faf",
        "response_status": "ssl_error",
        "response_content_type": null,
        "response_body": null,
        "started_at": "2026-02-06T14:46:04.019+01:00",
        "finished_at": "2026-02-06T14:46:04.189+01:00",
        "created_at": "2026-02-06T14:46:04.190+01:00"
      },
      {
        "id": 2,
        "request_id": "a14b20c8-e011-426d-aaf4-f0fe6bc5c63d",
        "response_status": "ssl_error",
        "response_content_type": null,
        "response_body": null,
        "started_at": "2026-02-06T14:43:34.081+01:00",
        "finished_at": "2026-02-06T14:43:34.193+01:00",
        "created_at": "2026-02-06T14:43:34.194+01:00"
      },
      {
        "id": 1,
        "request_id": "b005af3d-81c9-4562-b9e8-d4b6ac31a55d",
        "response_status": "ssl_error",
        "response_content_type": null,
        "response_body": null,
        "started_at": "2026-02-06T14:43:11.727+01:00",
        "finished_at": "2026-02-06T14:43:11.916+01:00",
        "created_at": "2026-02-06T14:43:11.924+01:00"
      }
    ]
  },
  …
]
```

## [Webhook delivery](#webhook-delivery)

Webhooks are delivered as HTTP POST requests containing JSON payload to the URL specified in the webhook configuration. Optionally, `Authorization` header is set to the value specified in the `auth_header` attribute of the webhook.

Each delivery includes an `Idempotency-Key` header containing a UUID v7. This key uniquely identifies the webhook delivery and can be used to ensure idempotent processing on the receiver side. The key remains the same across retries of the same webhook delivery.

Receiver must acknowledge the delivery by responding with a status code 2xx within 30 seconds. Otherwise the webhook delivery will be retried up to 5 times with an exponential backoff.

### [Delivery Headers](#delivery-headers)

Header

Description

`Content-Type`

`application/json`

`Authorization`

Value of `auth_header` attribute (if set)

`Idempotency-Key`

UUID v7 uniquely identifying the webhook delivery (e.g. `019505e0-85b3-7a4b-a163-740753e8e21a`)

### [Payload Content](#payload-content)

Attribute

Type

Description

`webhook_id`

`Integer`

Unique identifier of the webhook

`event_name`

`String`

Name of the event

`created_at`

`DateTime`

Date and time of the event

`body`

`Object`

Event payload

The body contains a resources related to event. For instance, when an invoice is created, the body contains an `invoice` key with the serialized [Invoice](/api/v3/invoices#attributes) object. When additional attributes are listed in the table, they are also included in the body object. More information may be found in the attributes section of API documentation related to the resource.

For example, when an invoice is paid, a payment object is included in the body object. Thus JSON contains an `invoice` object and a `payment` object under the `body` key.

Payload example

```
{
  "webhook_id":5,
  "event_name":"invoice_paid",
  "created_at":"2024-06-13T14:06:20.924+02:00",
  "body":{
    "invoice":{
      "id":93,
      "custom_id":null,
      "document_type":"invoice",
      ...,
      "lines":[
        {
          "id":209,
          "name":"Magic mouse",
          "quantity":"5.0",
          "unit_name":"myš",
          "unit_price":"2000.0",
          "vat_rate":21,
          "unit_price_without_vat":"2000.0",
          "unit_price_with_vat":"2420.0",
          "total_price_without_vat":"10000.0",
          "total_vat":"2100.0",
          "native_total_price_without_vat":"10000.0",
          "native_total_vat":"2100.0",
          "inventory":null
        }
      ],
      "vat_rates_summary":[
        {
          "vat_rate":21,
          "base":"10000.0",
          "vat":"2100.0",
          "currency":"CZK",
          "native_base":"10000.0",
          "native_vat":"2100.0",
          "native_currency":"CZK"
        }
      ],
      "paid_advances":[

      ],
      "payments":[
        {
          "id":785,
          "paid_on":"2024-06-13",
          "currency":"CZK",
          "amount":"12100.0",
          "native_amount":"12100.0",
          "variable_symbol":"20240056",
          "bank_account_id":21,
          "tax_document_id":null,
          "created_at":"2024-06-13T14:06:20.743+02:00",
          "updated_at":"2024-06-13T14:06:20.769+02:00"
        }
      ],
      "attachments":[

      ],
      "html_url":"https://app.fakturoid.cz/applecorp/invoices/93",
      "public_html_url":"https://app.fakturoid.cz/applecorp/p/nENr3UCI6g/2024-0056",
      "url":"https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices/93.json",
      "pdf_url":"https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices/93/download.pdf",
      "subject_url":"https://app.fakturoid.cz/api/v3/accounts/applecorp/subjects/37.json",
      "created_at":"2024-06-13T10:33:33.031+02:00",
      "updated_at":"2024-06-13T14:06:20.800+02:00"
    },
    "payment":{
      "id":785,
      "paid_on":"2024-06-13",
      "currency":"CZK",
      "amount":"12100.0",
      "native_amount":"12100.0",
      "variable_symbol":"20240056",
      "bank_account_id":21,
      "tax_document_id":null,
      "created_at":"2024-06-13T14:06:20.743+02:00",
      "updated_at":"2024-06-13T14:06:20.743+02:00"
    }
  }
}
```

When payload relates to bulk action, additional attributes are included under pluralized resource name. For example, when all inbox files are removed, the payload contains an `inbox_files` key with number of removed records.

Payload example for bulk action

```
{
  "webhook_id": 13,
  "event_name": "inbox_file_removed_all",
  "created_at": "2024-06-13T14:16:33.114+02:00",
  "body": {
  "inbox_files": {
    "count": 2
  }
}
```

### [You can use one of the following services to test webhooks:](#you-can-use-one-of-the-following-services-to-test-webhooks)

*   [https://beeceptor.com/](https://beeceptor.com/)
*   [https://www.postb.in/](https://www.postb.in/)
*   [https://www.svix.com/play/](https://www.svix.com/play/)

* * *

1.  [API v3](/api/v3)→
2.  [Webhooks](/api/v3/webhooks)