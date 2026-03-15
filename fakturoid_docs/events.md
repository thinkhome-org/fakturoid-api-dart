# Events

------------------------------------------------------------------------

## Attributes

  -----------------------------------------------------------------------
  Attribute               Type                    Description
  ----------------------- ----------------------- -----------------------
  `name` *(read-only)*    `String`                Event name

  `created_at` *(read-only)* `DateTime`           Date and time of event
                                                  creation

  `text` *(read-only)*    `String`                Text of the event

  `related_objects` *(read-only)* `Object`        Attributes of objects
                                                  related to the event

  `user` *(read-only)*    `Object`                User details

  `params` *(read-only)*  `Object`                Parameters with details
                                                  about event, specific
                                                  for each type of event
  -----------------------------------------------------------------------

### Related objects

  Attribute   Type        Description
  ----------- ----------- -----------------------------------------
  `type` *(read-only)* `String` Type of the object related to the event
  `id` *(read-only)* `Integer` ID of the object related to event

Values for `type`: - Invoice - Subject - Expense - Generator -
RecurringGenerator - ExpenseGenerator - Estimate

### User

  Attribute     Type        Description
  ------------- ----------- ----------------
  `id` *(read-only)* `Integer` User ID
  `full_name` *(read-only)* `String` Full user name
  `avatar` *(read-only)* `String` Avatar URL

------------------------------------------------------------------------

## Events Index

`GET /accounts/{slug}/events.json`

### Request

    GET /accounts/{slug}/events.json

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
