# Bank Accounts

------------------------------------------------------------------------

## Attributes

  -----------------------------------------------------------------------
  Attribute               Type                    Description
  ----------------------- ----------------------- -----------------------
  `id` *(read-only)*      `Integer`               Unique identifier in
                                                  Fakturoid

  `name` *(read-only)*    `String`                Account name

  `currency` *(read-only)* `String`               Currency

  `number` *(read-only)*  `String`                Account number

  `iban` *(read-only)*    `String`                IBAN code

  `swift_bic` *(read-only)* `String`              BIC (for SWIFT
                                                  payments)

  `pairing` *(read-only)* `Boolean`               Pairing of incoming
                                                  payments

  `expense_pairing` *(read-only)* `Boolean`       Pairing of outgoing
                                                  payments

  `payment_adjustment` *(read-only)* `Boolean`    Small amount settlement
                                                  when matching payments

  `default` *(read-only)* `Boolean`               Default bank account

  `created_at` *(read-only)* `DateTime`           Date and time of bank
                                                  account creation

  `updated_at` *(read-only)* `DateTime`           Date and time of last
                                                  bank account update
  -----------------------------------------------------------------------

-   *(read-only)* Read-only attribute (cannot be changed).
-   Unmarked attributes are optional and can be omitted during request.
-   **(required)** Required attribute (must always be present).
-   *(write-only)* Write-only attribute (will not be returned).

## Banks Accounts Index

Bank accounts are read-only, please use the web interface to make
changes.

`GET` `/accounts/{slug}/bank_accounts.json`

### Request

`GET`
`/accounts/{slug}/bank_accounts.json`

#### Headers

  Name           Value
  -------------- ----------------------------------
  `User-Agent`   `YourApp (yourname@example.com)`

#### URL Parameters

  Name     Description    Type       Example
  -------- -------------- ---------- -------------
  `slug`   Account name   `String`   `applecorp`

### Response

`Status` `200 OK`

#### Body

``` json
[
  {
    "id": 11,
    "name": "Účet",
    "currency": "CZK",
    "number": "1234/2010",
    "iban": null,
    "swift_bic": null,
    "pairing": false,
    "expense_pairing": false,
    "payment_adjustment": false,
    "default": false,
    "created_at": "2023-11-06T13:01:41.474+01:00",
    "updated_at": "2023-11-06T13:01:41.474+01:00"
  }
]
```
