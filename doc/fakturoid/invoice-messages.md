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
    *   [Attributes](#attributes)
    *   [Create Message](#create-message)
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

# Invoice Messages

* * *

## [Attributes](#attributes)

Attribute

Type

Description

Required attribute

`subject`

`String`

Email subject  
Default: Inherit from account settings

Required attribute

`email`

`String`

Email address  
Default: Inherit from invoice subject

`email_copy`

`String`

Email copy address  
Default: Inherit from invoice subject

`message`

`String`

Email message  
Default: Inherit from account settings

`deliver_now`

`Boolean`

Deliver e-mail immediately if you are outside of the delivery times set in settings  
Default: `false`  
This option has effect only if you have set e-mail delivery window in Fakturoid settings and you are outside of the given times. If the delivery times are not set or you are in the given window e-mail are always sent immediately.

*   Required attribute
    
    Required attribute (must always be present).
    
*   Read-only attribute
    
    Read-only attribute (cannot be changed).
    
*   Write-only attribute
    
    Write-only attribute (will not be returned).
    
*   Unmarked attributes are optional and can be omitted during request.
    

## [Create Message](#create-message)

Messages are available only for paid plans.

### [Default values](#default-values)

If you don't specify any of the attributes default values will be used from account email settings.

Invoice status

Description

Overdue

Default values for overdue invoice will be used

Other

Default values for invoice will be used

Variables you can use in the email message:

Variable

Description

`#no#`

Invoice number

`#link#`

Link to the webinvoice preview and print

`#vs#`

Invoice variable symbol

`#price#`

Total amount to pay

`#due#`

Due date

`#overdue#`

Number of days overdue

`#bank#`

Bank account number

`#note#`

Note

`POST` `/accounts/{slug}/invoices/{invoice_id}/message.json`

### Request

`POST` `https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices/{invoice_id}/message.json` Copy

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

`invoice_id`

Invoice ID

`Integer`

`1`

#### Body

```
{
  "email": "applecorp@applecorp.cz",
  "email_copy": "",
  "subject": "E-mail subject",
  "message": "Hello,\n\nI have invoice for you.\n#link#\n\n   John Doe"
}
```

### Response

`Status` `204 No Content`

### Request with invalid data

#### Body

```
{
  "email": "bad@email",
  "email_copy": "",
  "subject": "E-mail subject",
  "message": "Hello,\n\nI have invoice for you.\n#link#\n\n   John Doe"
}
```

### Response

`Status` `422 Unprocessable Content`

#### Body

```
{
  "errors": {
    "email": [
      "Please check the email."
    ]
  }
}
```

### Response if account is on free plan

`Status` `403 Forbidden`

#### Body

```
{
  "error": "upgrade_required",
  "error_description": "Email delivery is only available for paid plans"
}
```

### Response if sending is disabled due to spam complaints

`Status` `403 Forbidden`

#### Body

```
{
  "error": "email_delivery_disabled",
  "error_description": "Email delivery disabled (too many spam complaints)"
}
```

### Response if daily delivery quota is reached

`Status` `403 Forbidden`

#### Body

```
{
  "error": "quota_exhausted",
  "error_description": "You have reached maximum daily quota of sent emails"
}
```

* * *

1.  [API v3](https://fakturoid.cz/api/v3)→
2.  [Invoice Messages](https://fakturoid.cz/api/v3/invoice-messages)