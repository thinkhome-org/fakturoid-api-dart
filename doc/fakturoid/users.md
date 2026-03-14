Zavřít menu

[Fakturoid web →](/)

*   [Introduction](https://fakturoid.cz/api/v3)
*   [Changelog](https://fakturoid.cz/api/v3/changelog)
*   [Authorization](https://fakturoid.cz/api/v3/authorization)
*   [Users](https://fakturoid.cz/api/v3/users)
    *   [Attributes](#attributes)
    *   [Current User](#current-user)
    *   [Users Index](#users-index)
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

# Users

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

`full_name`

`String`

User full name

Read-only attribute

`email`

`String`

User email

Read-only attribute

`avatar_url`

`String`

User avatar URL

Read-only attribute

`default_account`

`String`

Default account slug  
(Only on the `/user.json` endpoint)

Read-only attribute

`permission`

`String`

User permission for the current account

Read-only attribute

`allowed_scope`

`Array[String]`

List of allowed scopes  
Values: `reports`, `expenses`, `invoices`

Read-only attribute

`accounts`

`Array[[Object](#accounts)]`

List of accounts the user has access to  
(Only on the `/user.json` endpoint)

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

### [Accounts](#accounts)

Attribute

Type

Description

Read-only attribute

`slug`

`String`

Account URL slug  
Goes to `https://app.fakturoid.cz/api/v3/accounts/**{slug}**/…`

Read-only attribute

`logo`

`String`

Account logo URL

Read-only attribute

`name`

`String`

Account name

Read-only attribute

`registration_no`

`String`

Account registration number

Read-only attribute

`permission`

`String`

Current user account permission

Read-only attribute

`allowed_scope`

`Array[String]`

List of allowed scopes for current user  
Values: `reports`, `expenses`, `invoices`

## [Current User](#current-user)

`GET` `/user.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/user.json` Copy

#### Headers

Name

Value

`User-Agent`

`YourApp (yourname@example.com)`

### Response

`Status` `200 OK`

#### Body

```
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

## [Users Index](#users-index)

`GET` `/accounts/{slug}/users.json`

### Request

`GET` `https://app.fakturoid.cz/api/v3/accounts/{slug}/users.json` Copy

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

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Users](https://fakturoid.cz/api/v3/users)