# Inbox Files

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` *(read-only)* | `Integer` | Unique identifier in Fakturoid |
| `filename` | `String` | File name (with extension) |
| `attachment` *(write-only)* **(required)** | `String` | Base64 encoded file content |
| `bytesize` *(read-only)* | `Integer` | File size in bytes |
| `send_to_ocr` | `Boolean` | The file will be sent to OCR |
| `sent_to_ocr_at` *(read-only)* | `DateTime` | The date and time the file was sent to OCR |
| `ocr_status` *(read-only)* | `String` | OCR file processing status |
| `ocr_completed_at` *(read-only)* | `DateTime` | The date and time the OCR file was completed |
| `download_url` *(read-only)* | `String` | URL to download the file |
| `created_at` *(read-only)* | `DateTime` | The date and time of file creation |
| `updated_at` *(read-only)* | `DateTime` | The date and time of last file update |

- *(read-only)*: Read-only attribute (cannot be changed).
- **(required)**: Required attribute (must always be present).
- *(write-only)*: Write-only attribute (will not be returned).
- Unmarked attributes are optional and can be omitted during request.

### OCR Status Table

| Name | Description |
|---|---|
| `created` | OCR for this file was requested |
| `processing` | OCR is processing the file |
| `processing_failed` | OCR processing failed |
| `processing_rejected` | OCR processing rejected |
| `processed` | File was successfully processed by OCR |

## Inbox Files Index

`GET` `/accounts/{slug}/inbox_files.json`

### Request

`GET` `/accounts/{slug}/inbox_files.json`

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
| `page` | Page number (40 records per page) | `Integer` | `2` |

### Response

`Status` `200 OK`

#### Body

```json
[
  {
    "id": 51,
    "filename": "INV123654.png",
    "bytesize": 1304,
    "send_to_ocr": false,
    "sent_to_ocr_at": null,
    "ocr_status": null,
    "ocr_completed_at": null,
    "download_url": "/accounts/applecorp/inbox_files/51/download",
    "created_at": "2023-12-04T09:49:58.188+01:00",
    "updated_at": "2023-12-04T09:49:58.237+01:00"
  },
  …
]
```

## Create Inbox File

- The file is sent in the `attachment` attribute as a Base64 encoded string.
- The file name can be passed in the `filename` attribute. If not passed, a file name of the form `attachment.*` is used with an extension according to the MIME type specified in the `attachment` attribute.
- After the file is successfully created, you will receive a `201 Created` and JSON response from the server with basic information about the file.
- If invalid data is sent, you will receive a `422 Unprocessable Content` and JSON response from the server listing the errors in the data sent.

`POST` `/accounts/{slug}/inbox_files.json`

### Request

`POST` `/accounts/{slug}/inbox_files.json`

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
  "attachment": "data:application/pdf;base64,JVBERi0xLjQKJY8KMiAwIG9…E1CiUlRU9GCg==",
  "send_to_ocr": true
}
```

#### Body with defined filename

```json
{
  "attachment": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABg…Cg==",
  "filename": "INV123654.png",
  "send_to_ocr": true
}
```

### Response

`Status` `201 Created`

#### Body

```json
{
  "id": 53,
  "filename": "attachment.pdf",
  "bytesize": 511279,
  "send_to_ocr": true,
  "sent_to_ocr_at": null,
  "ocr_status": "created",
  "ocr_completed_at": null,
  "download_url": "/accounts/applecorp/inbox_files/53/download",
  "created_at": "2023-12-20T16:34:19.704+01:00",
  "updated_at": "2023-12-20T16:34:19.736+01:00"
}
```

### Response if file cannot be created

`Status` `422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "document": [
      "je povinná položka"
    ]
  }
}
```

## Send Inbox File to OCR

`POST` `/accounts/{slug}/inbox_files/{id}/send_to_ocr.json`

### Request

`POST` `/accounts/{slug}/inbox_files/{id}/send_to_ocr.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Inbox File ID | `Integer` | `51` |

### Response

`Status` `204 No Content`

### Response if file cannot be sent to OCR

`Status` `403 Forbidden`

#### Body

```json
{
  "error": "quota_exhausted",
  "error_description": "Number of available extractions exhausted"
}
```

## Download Inbox File

`GET` `/accounts/{slug}/inbox_files/{id}/download`

### Request

`GET` `/accounts/{slug}/inbox_files/{id}/download`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Inbox File ID | `Integer` | `1` |

### Response

`Status` `200 OK`

#### Headers

| Name | Value |
|---|---|
| `Content-Disposition` | `attachment; filename="attachment.pdf"; filename*=UTF-8''attachment.pdf` |
| `Content-Length` | `511279` |
| `Content-Transfer-Encoding` | `binary` |
| `Content-Type` | `application/pdf` |

#### Body

```text
...binary data...
```

## Delete Inbox File

`DELETE` `/accounts/{slug}/inbox_files/{id}.json`

### Request

`DELETE` `/accounts/{slug}/inbox_files/{id}.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |
| `id` | Inbox File ID | `Integer` | `1` |

### Response

`Status` `204 No Content`

### Response if inbox file cannot be deleted

`Status` `422 Unprocessable Content`

#### Body

```json
{
  "errors": {
    "inbox_file": [
      "Inbox file cannot be deleted"
    ]
  }
}
```
