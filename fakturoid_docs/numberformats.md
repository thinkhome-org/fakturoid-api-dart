# Number Formats

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` | `Integer` | Unique identifier in Fakturoid |
| `format` | `String` | Format |
| `preview` | `String` | Preview of number format |
| `default` | `Boolean` | Default number format |
| `created_at` | `DateTime` | Date and time of number format creation |
| `updated_at` | `DateTime` | Date and time of last number format update |

- Read-only attribute  
- Unmarked attributes are optional and can be omitted during request.

## Number Formats Index

Number formats are read-only, please use the web interface to change or create a new one. Only unarchived number formats are returned.

A number format can only be assigned when creating an invoice. An attempt to change the number format while editing an invoice will return `422 Unprocessable Content`.

`GET` `/accounts/{slug}/number_formats/invoices.json`

### Request

```http
GET https://app.fakturoid.cz/api/v3/accounts/{slug}/number_formats/invoices.json
```

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

#### URL Parameters

| Name | Description | Type | Example |
|---|---|---|---|
| `slug` | Account name | `String` | `applecorp` |

### Response

`Status` `200 OK`

#### Body

```json
[
  {
    "id": 31,
    "format": "#yyyy#-#dddd#",
    "preview": "2023-0001, 2023-0002, ..., 2023-9999",
    "default": true,
    "created_at": "2023-11-06T13:01:40.816+01:00",
    "updated_at": "2023-11-06T13:01:40.816+01:00"
  }
]
```
