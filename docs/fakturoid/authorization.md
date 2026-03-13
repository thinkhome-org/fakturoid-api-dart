Zavřít menu

[Fakturoid web →](/)

*   [Introduction](/api/v3)
*   [Changelog](/api/v3/changelog)
*   [Authorization](/api/v3/authorization)
    *   [Authorization Code Flow](#authorization-code-flow)
    *   [Client Credentials Flow](#client-credentials-flow)
    *   [How to use access token](#how-to-use-access-token)
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

# Authorization

* * *

Authorization is provided via OAuth 2.0. Fakturoid supports [Authorization Code Flow](#authorization-code-flow) and [Client Credentials Flow](#client-credentials-flow).

Authorization Code Flow should be used for multi-tenant applications (e.g. Shopify) where you need to provide access for multiple users to their accounts.

Client Credentials Flow can be used for the cases of creating either scripts without server component or if you want your own service to access just your Fakturoid account. Using Client Credential Flow for multi-tenant applications is not recommended and can lead to removal of access to your integration.

For development purposes, we recommend configuring your `hosts` file to point any **custom domain** to your `localhost`. You can then use this **custom domain** at your "URL for redirect". This method serves as one of the possible workarounds of usual development needs, as we do not permit the direct use of `localhost` as the "URL for redirect" for security reasons.

## [Authorization Code Flow](#authorization-code-flow)

Before you can use Authorization Code Flow you need to create an integration in Fakturoid. If you don't already have an account, [create a new one](https://app.fakturoid.cz/pub/accounts/new). In your account, go to _Settings → Connect other apps → OAuth 2 for app developers_ and create a new integration.

After creating the integration you will receive **Client ID** and **Client Secret** which you will need to use in the communication with API.

We recommend you to create at least two integrations once for testing and second for production. This way you can test your integration without affecting your production data.

You can find complete description of Authorization Code Flow in [RFC 6749](https://datatracker.ietf.org/doc/html/rfc6749#section-4.1).

### [Obtaining an authorization code](#obtaining-an-authorization-code)

Redirect the user from your application to the following URL with query parameters:

#### [URL](#url)

`https://app.fakturoid.cz/api/v3/oauth` Copy

#### [Query Parameters](#query-parameters)

Name

Type

Description

Example

Required attribute

`client_id`

`String(40)`

Integration Client ID  
_Copy from integration settings_

`9ae1…f3d8` (truncated)

Required attribute

`redirect_uri`

`String`

Integration "URL for redirect" (must match the one from Fakturoid integration settings)

`https://www.example.org/redirect`

Required attribute

`response_type`

`String`

Tell server we want an authorization code  
Value must be set to `"code"`

`code`

`state`

`String`

Custom value to maintain between request and callback (for user identification and CSRF prevention)

`abcd1234`

If user is already logged into Fakturoid a confirmation page will be shown where he can allow the integration access the his account. Logged-out user will be presented with a log-in form with an option to create an account if he doesn't have one.

After the user allows the access Fakturoid will redirect the user to the Redirect URL specified in the integration settings with authorization code passed via query parameters (see below).

#### [Query Parameters](#query-parameters)

Name

Type

Description

Example

Required attribute

`code`

`String(80)`

Authorization code, expires after 5 minutes

`1d4e…981d` (truncated)

`state`

`String`

Custom value to maintain between request and callback (for user identification and CSRF prevention)

`abcd1234`

### [Obtain Access and Refresh Token](#obtain-access-and-refresh-token)

Make sure to call this endpoint within 5 minutes after obtaining the authorization code. Failure to do so will require the user to allow integration access again.

`POST` `/oauth/token`

### Request

`POST` `https://app.fakturoid.cz/api/v3/oauth/token` Copy

#### Headers

Name

Value

`User-Agent`

_Please set your user agent in the format of `YourApplicationName (your.email@example.org)`_

`Content-Type`

`application/json` or `application/x-www-form-urlencoded`

`Accept`

`application/json`

`Authorization`

HTTP Basic authentication  
Example: `Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=` where `Y2xp…ZXQ=` is urlsafe Base64-encoded string of `client_id:client_secret` (replace both client\_id and client\_secret with tokens obtained from your **integration** settings in Fakturoid).

#### Body Attributes

Name

Type

Description

Required attribute

`grant_type`

`String`

We are authorizing with the authorization code  
Value must be set to `"authorization_code"`

Required attribute

`code`

`String(80)`

Pass the value from request query parameter `code`

Required attribute

`redirect_uri`

`String`

Integration "URL for redirect" (must match the one from Fakturoid integration settings)

#### Body

```
{
  "grant_type": "authorization_code",
  "code": "1d4e…981d",
  "redirect_uri": "https://www.example.org/redirect"
}
```

### Response

#### Headers

Name

Value

`Content-Type`

`application/json`

`Status` `200 OK`

#### Body

```
{
  "access_token": "<access_token>",
  "token_type": "Bearer",
  "expires_in": 7200,
  "refresh_token": "<refresh_token>"
}
```

Refresh token doesn't have an expiry date but can be deleted via revoke endpoint.

### [Refresh Access Token](#refresh-access-token)

Access token expires after 2 hours and will need to be refreshed. Refreshing doesn't require the user to allow integration access again.

`POST` `/oauth/token`

### Request

`POST` `https://app.fakturoid.cz/api/v3/oauth/token` Copy

#### Headers

Name

Value

`User-Agent`

_Please set your user agent in the format of `YourApplicationName (your.email@example.org)`_

`Content-Type`

`application/json` or `application/x-www-form-urlencoded`

`Accept`

`application/json`

`Authorization`

HTTP Basic authentication  
Example: `Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=` where `Y2xp…ZXQ=` is urlsafe Base64-encoded string of `client_id:client_secret` (replace both client\_id and client\_secret with tokens obtained from your **integration** settings in Fakturoid).

#### Body Attributes

Name

Type

Description

Required attribute

`grant_type`

`String`

We are authorizing with the refresh token  
Value must be set to `"refresh_token"`

Required attribute

`refresh_token`

`String(80)`

Refresh token

```
{
  "grant_type": "refresh_token",
  "refresh_token": "55cf…7861"
}
```

### Response

#### Headers

Name

Value

`Content-Type`

`application/json`

`Status` `200 OK`

#### Body

```
{
  "access_token": "<access_token>",
  "token_type": "Bearer",
  "expires_in": 7200
}
```

### [Revoke access](#revoke-access)

Revoking deletes both access and refresh tokens (the user will need to allow integration access again if needed).

`POST` `/oauth/revoke`

### Request

`POST` `https://app.fakturoid.cz/api/v3/oauth/revoke` Copy

#### Headers

Name

Value

`User-Agent`

_Please set your user agent in the format of `YourApplicationName (your.email@example.org)`_

`Content-Type`

`application/json` or `application/x-www-form-urlencoded`

`Accept`

`application/json`

`Authorization`

HTTP Basic authentication  
Example: `Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=` where `Y2xp…ZXQ=` is urlsafe Base64-encoded string of `client_id:client_secret` (replace both client\_id and client\_secret with tokens obtained from your **integration** settings in Fakturoid).

#### Body Attributes

Name

Type

Description

Required attribute

`token`

`String(80)`

Refresh token

```
{
  "token": "55cf…7861"
}
```

### Response

`Status` `200 OK`

## [Client Credentials Flow](#client-credentials-flow)

Before you start, go to your Fakturoid account and download your **Client ID** and **Client Secret** from your user screen _Settings → User account_. You can generate multiple credentials in your account and use them for authorization.

You can find a complete description of Client Credentials Flow in [RFC 6749](https://datatracker.ietf.org/doc/html/rfc6749#section-4.4).

### [Obtain Access Token](#obtain-access-token)

Access token expires after 2 hours after which needs to be obtained again (there is no refresh endpoint).

`POST` `/oauth/token`

### Request

`POST` `https://app.fakturoid.cz/api/v3/oauth/token` Copy

#### Headers

Name

Value

`User-Agent`

_Please set your user agent in the format of `YourApplicationName (your.email@example.org)`_

`Content-Type`

`application/json` or `application/x-www-form-urlencoded`

`Accept`

`application/json`

`Authorization`

HTTP Basic authentication  
Example: `Basic Y2xpZW50X2lkOmNsaWVudF9zZWNyZXQ=` where `Y2xp…ZXQ=` is urlsafe Base64-encoded string of `client_id:client_secret` (replace both client\_id and client\_secret with tokens obtained from your **user** settings in Fakturoid).

#### Body Attributes

Name

Type

Description

Required attribute

`grant_type`

`String`

Value must be set to `"client_credentials"`

#### Body

```
{
  "grant_type": "client_credentials"
}
```

### Response

#### Headers

Name

Value

`Content-Type`

`application/json`

`Status` `200 OK`

#### Body

```
{
  "access_token": "<access_token>",
  "token_type": "Bearer",
  "expires_in": 7200
}
```

## [How to use access token](#how-to-use-access-token)

All requests to Fakturoid API must include the access token in the Authorization header in the following format:

```

Authorization: token_type access_token
```

For example when you receive the access token from the token endpoint:

```
{
  "access_token": "<access_token>",
  "token_type": "Bearer",
  "expires_in": 7200
}
```

You will use it in the Authorization header like this:

```

Authorization: Bearer <access_token>
```

* * *

1.  [API v3](/api/v3)→
2.  [Authorization](/api/v3/authorization)