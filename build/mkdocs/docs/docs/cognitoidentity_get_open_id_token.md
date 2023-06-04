<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_get_open_id_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets an OpenID token, using a known Cognito ID

### Description

Gets an OpenID token, using a known Cognito ID. This known Cognito ID is
returned by `get_id`. You can optionally add additional logins for the
identity. Supplying multiple logins creates an implicit link.

The OpenID token is valid for 10 minutes.

This is a public API. You do not need any credentials to call this API.

### Usage

    cognitoidentity_get_open_id_token(IdentityId, Logins)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_get_open_id_token_:_IdentityId">IdentityId</code></td>
<td><p>[required] A unique identifier in the format
REGION:GUID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_get_open_id_token_:_Logins">Logins</code></td>
<td><p>A set of optional name-value pairs that map provider names to
provider tokens. When using graph.facebook.com and www.amazon.com,
supply the access_token returned from the provider's authflow. For
accounts.google.com, an Amazon Cognito user pool provider, or any other
OpenID Connect provider, always include the
<code>id_token</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityId = "string",
      Token = "string"
    )

### Request syntax

    svc$get_open_id_token(
      IdentityId = "string",
      Logins = list(
        "string"
      )
    )
