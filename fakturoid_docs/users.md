# Users

---

## Attributes

| Attribute | Type | Description |
|---|---|---|
| `id` | `Integer` | Unique identifier in Fakturoid *(read-only)* |
| `full_name` | `String` | User full name *(read-only)* |
| `email` | `String` | User email *(read-only)* |
| `avatar_url` | `String` | User avatar URL *(read-only)* |
| `default_account` | `String` | Default account slug *(Only on the `/user.json` endpoint)* *(read-only)* |
| `permission` | `String` | User permission for the current account *(read-only)* |
| `allowed_scope` | `Array[String]` | List of allowed scopes. Values: `reports`, `expenses`, `invoices` *(read-only)* |
| `accounts` | `Array[Object]` | List of accounts the user has access to *(Only on the `/user.json` endpoint)* *(read-only)* |

- **(required)** = must always be present.
- *(read-only)* = cannot be changed.
- *(write-only)* = will not be returned.
- *(editable)* = can be changed on the web.
- Unmarked attributes are optional and can be omitted during request.

### Accounts

| Attribute | Type | Description |
|---|---|---|
| `slug` | `String` | Account URL slug. Goes to `account.md` *(read-only)* |
| `logo` | `String` | Account logo URL *(read-only)* |
| `name` | `String` | Account name *(read-only)* |
| `registration_no` | `String` | Account registration number *(read-only)* |
| `permission` | `String` | Current user account permission *(read-only)* |
| `allowed_scope` | `Array[String]` | List of allowed scopes for current user. Values: `reports`, `expenses`, `invoices` *(read-only)* |

## Current User

`GET` `/user.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/user.json`

#### Headers

| Name | Value |
|---|---|
| `User-Agent` | `YourApp (yourname@example.com)` |

### Response

`Status` `200 OK`

#### Body

```json
{
  "id": 5,
  "full_name": "Alexandr Hejsek",
  "email": "applecorp@applecorp.cz",
  "avatar_url": null,
  "default_account": null,
  "accounts": [
    {
      "slug": "applecorp",
      "logo": "https://app.fakturoid.cz/rails/active_storage/representations/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBFUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--79b81d601305fccdbe4224b8ae76123d59ff1dd2/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDRG9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RTNKbGMybDZaVjloYm1SZmNHRmtXd2hwQXFRQmFRR01ld2M2REdkeVlYWnBkSGxKSWdsM1pYTjBCanNHVkRvTFpYaDBaVzVrU1NJS2QyaHBkR1VHT3daVU9neGpiMjUyWlhKMFNTSUljRzVuQmpzR1ZBPT0iLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--76dc372ccfb5e19eecf036250d169c5e5b87479e/logo.png",
      "name": "Alexandr Hejsek",
      "registration_no": "87654321",
      "permission": "owner",
      "allowed_scope": [
        "invoices",
        "expenses",
        "reports"
      ]
    }
  ]
}
```

## Users Index

`GET` `/accounts/{slug}/users.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/users.json`

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
    "id": 5,
    "full_name": "Alexandr Hejsek",
    "email": "applecorp@applecorp.cz",
    "avatar_url": null,
    "permission": "owner",
    "allowed_scope": [
      "invoices",
      "expenses",
      "reports"
    ]
  },
  {
    "id": 7,
    "full_name": "Ondřej Hejsek",
    "email": "testdph3@test.cz",
    "avatar_url": null,
    "permission": "read",
    "allowed_scope": [
      "invoices"
    ]
  },
  …
]
```
