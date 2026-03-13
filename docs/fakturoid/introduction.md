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
*   [Inventory Items](/api/v3/inventory-items)
*   [Inventory Moves](/api/v3/inventory-moves)
*   [Generators](/api/v3/generators)
*   [Recurring Generators](/api/v3/recurring-generators)
*   [Events](/api/v3/events)
*   [Todos](/api/v3/todos)
*   [Webhooks](/api/v3/webhooks)

# API v3

* * *

## [Request formalities](#request-formalities)

*   All requests must be made via **HTTPS**.
*   All endpoint URLs begin with `https://app.fakturoid.cz/api/v3`.

Most endpoints require Fakturoid account name as part of the request URL as a `slug` parameter.

`https://app.fakturoid.cz/api/v3/accounts/{slug}/invoices.json`

For example if the account name is `applecorp`, the URL will look like this:

`https://app.fakturoid.cz/api/v3/accounts/applecorp/invoices.json`

List of all accounts for the current user can be obtained via [current user endpoint](/api/v3/users#current-user).

### [Identification](#identification)

All requests must have the `User-Agent` header with the information about the name of your application and a technical contact email so we can contact you in case something goes rogue with your API integration.

`User-Agent: YourAppName (administrative@contact.com)`

Requests without this header will receive `400 Bad Request` error.

### [JSON](#json)

Unless stated otherwise, data (payload) is sent inside the request/response body as an UTF-8 encoded JSON string. Requests that send JSON payload need to have a header `Content-Type: application/json`.

Requests requesting a different type of response will receive `415 Unsupported Media Type` error.

## [Authorization](#authorization)

Fakturoid supports [OAuth 2 protocol](/api/v3/authorization) for authorization.

## [Pagination](#pagination)

*   Pagination is used on all endpoints that return a collection of records.
*   There are 40 records per page.
*   Next page can be requested by using the `page` query parameter.

## [Error handling](#error-handling)

Aside from `2xx` success HTTP status codes, the API may also return `4xx` client and `5xx` server error responses. In case of an error response body always contains a JSON with the description of the error.

Error response body can have two formats. The first one is always used for `422 Unprocessable Content` responses for invalid data and occasionally for other errors as well:

```
{
  "errors": {
    "name": ["can't be blank"]
  }
}
```

It contains `errors` key with a map of fields an their errors. The second format is used for all other errors and always contains `error` key with a string code of the error and `error_description` with a human readable description of the error:

```
{
  "error": "invalid_request",
  "error_description": "Required header \"User-Agent\" is missing"
}
```

### [Read-only mode](#read-only-mode)

In case of maintenance, Fakturoid API will respond with status code `503 Temporarily Unavailable`. Certain search endpoints may return the same status code when they are busy.

### [Defensive implementation of the API](#defensive-implementation-of-the-api)

Your application should always handle errors returned by the API. In cases of a maintenance or a `5xx` server error, your application should retry the request later as Fakturoid does not store the requests for the later processing.

In case of `4xx` client error, your application should display the error message to the user or your integration should be updated in a way to fix the error.

## [Rate-limiting](#rate-limiting)

Fakturoid implements rate limit headers based on [RFC Draft](https://www.ietf.org/archive/id/draft-ietf-httpapi-ratelimit-headers-08.html):

```
X-RateLimit-Policy: default;q=400;w=60
X-RateLimit: default;r=398;t=55
```

*   `X-RateLimit-Policy` header contains the policy name, maximum number of requests (`q` parameter) and the time window in seconds (`w` parameter).
*   `X-RateLimit` header contains the policy name, remaining number of requests (`r` parameter) and the remaining time in seconds until the reset (`t` parameter).

The current rate limit quota is always defined in the rate limit headers. If the rate limit is exceeded, the server will respond with status code `429 Too Many Requests`. Wait until the rate limit resets and then retry the request.

## [Blocked account](#blocked-account)

If the Fakturoid account is blocked due to an overdue invoice from Fakturoid, the server will respond with status code `402 Payment Required` and the response body will contain the list of unpaid invoices.

* * *

1.  [API v3](/api/v3)→
2.  [API v3](/api/v3)