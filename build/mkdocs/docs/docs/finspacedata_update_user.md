<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_update_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the details of the specified user account

### Description

Modifies the details of the specified user account. You cannot update
the `userId` for a user.

### Usage

    finspacedata_update_user(userId, type, firstName, lastName, apiAccess,
      apiAccessPrincipalArn, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="finspacedata_update_user_:_userId">userId</code></td>
<td><p>[required] The unique identifier for the user account to
update.</p></td>
</tr>
<tr class="even">
<td><code id="finspacedata_update_user_:_type">type</code></td>
<td><p>The option to indicate the type of user.</p>
<ul>
<li><p><code>SUPER_USER</code>– A user with permission to all the
functionality and data in FinSpace.</p></li>
<li><p><code>APP_USER</code> – A user with specific permissions in
FinSpace. The users are assigned permissions by adding them to a
permission group.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_user_:_firstName">firstName</code></td>
<td><p>The first name of the user.</p></td>
</tr>
<tr class="even">
<td><code id="finspacedata_update_user_:_lastName">lastName</code></td>
<td><p>The last name of the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_user_:_apiAccess">apiAccess</code></td>
<td><p>The option to indicate whether the user can use the
<code>get_programmatic_access_credentials</code> API to obtain
credentials that can then be used to access other FinSpace Data API
operations.</p>
<ul>
<li><p><code>ENABLED</code> – The user has permissions to use the
APIs.</p></li>
<li><p><code>DISABLED</code> – The user does not have permissions to use
any APIs.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_update_user_:_apiAccessPrincipalArn">apiAccessPrincipalArn</code></td>
<td><p>The ARN identifier of an AWS user or role that is allowed to call
the <code>get_programmatic_access_credentials</code> API to obtain a
credentials token for a specific FinSpace user. This must be an IAM role
within your FinSpace account.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_user_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userId = "string"
    )

### Request syntax

    svc$update_user(
      userId = "string",
      type = "SUPER_USER"|"APP_USER",
      firstName = "string",
      lastName = "string",
      apiAccess = "ENABLED"|"DISABLED",
      apiAccessPrincipalArn = "string",
      clientToken = "string"
    )
