# Events

------------------------------------------------------------------------

## Attributes

  -----------------------------------------------------------------------
  Attribute               Type                    Description
  ----------------------- ----------------------- -----------------------
  `name`                  `String`                Event name

  `created_at`            `DateTime`              Date and time of event
                                                  creation

  `text`                  `String`                Text of the event

  `related_objects`       `Object`                Attributes of objects
                                                  related to the event

  `user`                  `Object`                User details

  `params`                `Object`                Parameters with details
                                                  about event, specific
                                                  for each type of event
  -----------------------------------------------------------------------

All attributes above are read-only.

### Related objects

  Attribute   Type        Description
  ----------- ----------- -----------------------------------------
  `type`      `String`    Type of the object related to the event
  `id`        `Integer`   ID of the object related to event

Values for `type`: - Invoice - Subject - Expense - Generator -
RecurringGenerator - ExpenseGenerator - Estimate

### User

  Attribute     Type        Description
  ------------- ----------- ----------------
  `id`          `Integer`   User ID
  `full_name`   `String`    Full user name
  `avatar`      `String`    Avatar URL

------------------------------------------------------------------------

## Events Index

`GET /accounts/{slug}/events.json`

### Request

    GET https://app.fakturoid.cz/api/v3/accounts/{slug}/events.json

### Headers

  Name         Value
  ------------ --------------------------------
  User-Agent   YourApp (yourname@example.com)

### Query Parameters

  ---------------------------------------------------------------------------------
  Name              Description       Type              Example
  ----------------- ----------------- ----------------- ---------------------------
  page              Page number (40   Integer           2
                    records per page)                   

  since             Event created     DateTime          2023-08-25T10:55:14+02:00
                    after this date                     

  subject_id        Filter events     Integer           5
                    only for specific                   
                    subject                             
  ---------------------------------------------------------------------------------

### Response

Status: `200 OK`

``` json
[
  {
    "name": "invoice_sent",
    "created_at": "2023-12-01T09:05:47.183+01:00",
    "text": "Sent",
    "related_objects": [
      { "id": 27, "type": "Invoice" },
      { "id": 16, "type": "Subject" }
    ],
    "user": {
      "id": 5,
      "full_name": "Alexandr Hejsek",
      "avatar": "https://app.fakturoid.cz/rails/active_storage/..."
    },
    "params": {
      "email": "pokus@test.cz",
      "marked": "false",
      "email_body": "Hezký den, vystavil jsem pro Vás fakturu",
      "email_copy": "",
      "email_subject": "Faktura č. 2023-0021"
    }
  }
]
```

------------------------------------------------------------------------

## Events Paid Index

Returns paid events for invoices and expenses.

`GET /accounts/{slug}/events/paid.json`

### Request

    GET https://app.fakturoid.cz/api/v3/accounts/{slug}/events/paid.json

### Query Parameters

  ---------------------------------------------------------------------------------
  Name              Description       Type              Example
  ----------------- ----------------- ----------------- ---------------------------
  page              Page number (40   Integer           2
                    records per page)                   

  since             Event created     DateTime          2023-08-25T10:55:14+02:00
                    after this date                     

  subject_id        Filter events     Integer           5
                    only for specific                   
                    subject                             
  ---------------------------------------------------------------------------------

### Response

Status: `200 OK`

``` json
[
  {
    "name": "invoice_paid_with_thank_you_note",
    "created_at": "2023-12-01T09:21:45.218+01:00",
    "text": "Paid and thank you note sent",
    "related_objects": [
      { "id": 26, "type": "Invoice" },
      { "id": 16, "type": "Subject" }
    ],
    "user": {
      "id": 5,
      "full_name": "Alexandr Hejsek",
      "avatar": null
    },
    "params": {
      "date": null,
      "email": "pokus@test.cz",
      "email_body": "Děkuji za zaplacení faktury.",
      "email_copy": null,
      "email_subject": "[Zaplacena] Faktura č. 2023-0020"
    }
  }
]
```
