<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_get_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates (or retrieves) a Cognito ID

### Description

Generates (or retrieves) a Cognito ID. Supplying multiple logins will
create an implicit linked account.

This is a public API. You do not need any credentials to call this API.

### Usage

    cognitoidentity_get_id(AccountId, IdentityPoolId, Logins)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cognitoidentity_get_id_:_AccountId">AccountId</code></td>
<td><p>A standard AWS account ID (9+ digits).</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_get_id_:_IdentityPoolId">IdentityPoolId</code></td>
<td><p>[required] An identity pool ID in the format
REGION:GUID.</p></td>
</tr>
<tr class="odd">
<td><code id="cognitoidentity_get_id_:_Logins">Logins</code></td>
<td><p>A set of optional name-value pairs that map provider names to
provider tokens. The available provider names for <code>Logins</code>
are as follows:</p>
<ul>
<li><p>Facebook: <code>graph.facebook.com</code></p></li>
<li><p>Amazon Cognito user pool: <code
style="white-space: pre;">⁠cognito-idp.&lt;region&gt;.amazonaws.com/&lt;YOUR_USER_POOL_ID&gt;⁠</code>,
for example, <code
style="white-space: pre;">⁠cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789⁠</code>.</p></li>
<li><p>Google: <code>accounts.google.com</code></p></li>
<li><p>Amazon: <code>www.amazon.com</code></p></li>
<li><p>Twitter: <code>api.twitter.com</code></p></li>
<li><p>Digits: <code>www.digits.com</code></p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityId = "string"
    )

### Request syntax

    svc$get_id(
      AccountId = "string",
      IdentityPoolId = "string",
      Logins = list(
        "string"
      )
    )
