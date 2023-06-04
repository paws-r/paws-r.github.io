<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentityprovider_delete_user_pool_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a domain for a user pool

### Description

Deletes a domain for a user pool.

### Usage

    cognitoidentityprovider_delete_user_pool_domain(Domain, UserPoolId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentityprovider_delete_user_pool_domain_:_Domain">Domain</code></td>
<td><p>[required] The domain string. For custom domains, this is the
fully-qualified domain name, such as <code>auth.example.com</code>. For
Amazon Cognito prefix domains, this is the prefix alone, such as
<code>auth</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentityprovider_delete_user_pool_domain_:_UserPoolId">UserPoolId</code></td>
<td><p>[required] The user pool ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_pool_domain(
      Domain = "string",
      UserPoolId = "string"
    )
