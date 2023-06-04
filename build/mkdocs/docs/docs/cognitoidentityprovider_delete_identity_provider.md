<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_identity_provider</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an IdP for a user pool

### Description

Deletes an IdP for a user pool.

### Usage

    cognitoidentityprovider_delete_identity_provider(UserPoolId,
      ProviderName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_identity_provider_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_delete_identity_provider_:_ProviderName">ProviderName</code></td>
<td><p>[required] The IdP name.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_identity_provider(
      UserPoolId = "string",
      ProviderName = "string"
    )
