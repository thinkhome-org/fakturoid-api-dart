# Bank Accounts

------------------------------------------------------------------------

## Attributes

  -----------------------------------------------------------------------
  Attribute               Type                    Description
  ----------------------- ----------------------- -----------------------
  `id`                    `Integer`               Unique identifier in
                                                  Fakturoid

  `name`                  `String`                Account name

  `currency`              `String`                Currency

  `number`                `String`                Account number

  `iban`                  `String`                IBAN code

  `swift_bic`             `String`                BIC (for SWIFT
                                                  payments)

  `pairing`               `Boolean`               Pairing of incoming
                                                  payments

  `expense_pairing`       `Boolean`               Pairing of outgoing
                                                  payments

  `payment_adjustment`    `Boolean`               Small amount settlement
                                                  when matching payments

  `default`               `Boolean`               Default bank account

  `created_at`            `DateTime`              Date and time of bank
                                                  account creation

  `updated_at`            `DateTime`              Date and time of last
                                                  bank account update
  -----------------------------------------------------------------------

-   Read-only attribute (cannot be changed).
-   Unmarked attributes are optional and can be omitted during request.
-   Required attribute (must always be present).
-   Write-only attribute (will not be returned).

## Banks Accounts Index

Bank accounts are read-only, please use the web interface to make
changes.

`GET` `/accounts/{slug}/bank_accounts.json`

### Request

`GET`
`https://app.fakturoid.cz/api/v3/accounts/{slug}/bank_accounts.json`

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
