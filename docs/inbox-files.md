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
    *   [Attributes](#attributes)
    *   [Inbox Files Index](#inbox-files-index)
    *   [Create Inbox File](#create-inbox-file)
    *   [Send Inbox File to OCR](#send-inbox-file-to-ocr)
    *   [Download Inbox File](#download-inbox-file)
    *   [Delete Inbox File](#delete-inbox-file)
*   [Inventory Items](/api/v3/inventory-items)
*   [Inventory Moves](/api/v3/inventory-moves)
*   [Generators](/api/v3/generators)
*   [Recurring Generators](/api/v3/recurring-generators)
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)

# Inbox Files

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Read-only attribute

`id`

`Integer`

Unique identifier in Fakturoid

`filename`

`String`

File name (with extension)

Read-only attribute

`bytesize`

`Integer`

File size in bytes

`send_to_ocr`

`Boolean`

The file will be sent to OCR

Read-only attribute

`sent_to_ocr_at`

`DateTime`

The date and time the file was sent to OCR

Read-only attribute

`ocr_status`

`String`

OCR file processing status  
Values: `created`, `processing`, `processing_failed`, `processing_rejected`,`processed`  
Note: `null` value is returned when the file is not sent to OCR

Read-only attribute

`ocr_completed_at`

`DateTime`

The date and time the OCR file was completed

Read-only attribute

`download_url`

`String`

URL to download the file

Read-only attribute

`created_at`

`DateTime`

The date and time of file creation

Read-only attribute

`updated_at`

`DateTime`

The date and time of last file update

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

### [OCR Status Table](#ocr-status-table)

Name

Description

`created`

OCR for this file was requested

`processing`

OCR is processing the file

`processing_failed`

OCR processing failed

`processing_rejected`

OCR processing rejected

`processed`

File was successfully processed by OCR

## [Inbox Files Index](#inbox-files-index)

`GET` `/accounts/{slug}/inbox_files.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inbox_files.json` Copy

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
    "id": 51,
    "filename": "INV123654.png",
    "bytesize": 1304,
    "send_to_ocr": false,
    "sent_to_ocr_at": null,
    "ocr_status": null,
    "ocr_completed_at": null,
    "download_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/inbox_files/51/download",
    "created_at": "2023-12-04T09:49:58.188+01:00",
    "updated_at": "2023-12-04T09:49:58.237+01:00"
  },
  …
]
```

## [Create Inbox File](#create-inbox-file)

*   The file is sent in the `attachment` attribute as a Base64 encoded string.
*   The file name can be passed in the `filename` attribute. If not passed, a file name of the form `attachment.*` is used with an extension according to the MIME type specified in the `attachment` attribute.
*   After the file is successfully created, you will receive a `201 Created` and JSON response from the server with basic information about the file.
*   If invalid data is sent, you will receive a `422 Unprocessable Content` and JSON response from the server listing the errors in the data sent.

`POST` `/accounts/{slug}/inbox_files.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inbox_files.json` Copy

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
  "attachment": "data:application/pdf;base64,JVBERi0xLjQKJY8KMiAwIG9…E1CiUlRU9GCg==",
  "send_to_ocr": true
}
```

#### Body with defined filename

```
{
  "attachment": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABg…Cg==",
  "filename": "INV123654.png",
  "send_to_ocr": true
}
```

### Response

`Status` `201 Created`

#### Body

```
{
  "id": 53,
  "filename": "attachment.pdf",
  "bytesize": 511279,
  "send_to_ocr": true,
  "sent_to_ocr_at": null,
  "ocr_status": "created",
  "ocr_completed_at": null,
  "download_url": "https://app.fakturoid.cz/api/v3/accounts/applecorp/inbox_files/53/download",
  "created_at": "2023-12-20T16:34:19.704+01:00",
  "updated_at": "2023-12-20T16:34:19.736+01:00"
}
```

### Response if file cannot be created

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "document": [
      "je povinná položka"
    ]
}
```

## [Send Inbox File to OCR](#send-inbox-file-to-ocr)

`POST` `/accounts/{slug}/inbox_files/{id}/send_to_ocr.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inbox_files/{id}/send_to_ocr.json` Copy

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

Inbox File ID

`Integer`

`51`

### Response

`Status` `204 No Content`

### Response if file cannot be sent to OCR

`Status` `403 Forbidden`

#### Body

```
{
  "error": "quota_exhausted",
  "error_description": "Number of available extractions exhausted"
}
```

## [Download Inbox File](#download-inbox-file)

`GET` `/accounts/{slug}/inbox_files/{id}/download`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inbox_files/{id}/download` Copy

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

Inbox File ID

`Integer`

`1`

### Response

`Status` `200 OK`

#### Headers

Name

Value

`Content-Disposition`

`attachment; filename="attachment.pdf"; filename*=UTF-8''attachment.pdf`

`Content-Length`

`511279`

`Content-Transfer-Encoding`

`binary`

`Content-Type`

`application/pdf`

#### Body

```

...binary data...
```

## [Delete Inbox File](#delete-inbox-file)

`DELETE` `/accounts/{slug}/inbox_files/{id}.json`

### Request

`DELETE` `https://app.fakturoid.cz/api/v3/accounts/{slug}/inbox_files/{id}.json` Copy

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

Inbox File ID

`Integer`

`1`

### Response

`Status` `204 No Content`

### Response if inbox file cannot be deleted

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "inbox_file": [
      "Inbox file cannot be deleted"
    ]
  }
}
```

* * *

1.  [API v3](/api/v3)→
2.  [Inbox Files](/api/v3/inbox-files)