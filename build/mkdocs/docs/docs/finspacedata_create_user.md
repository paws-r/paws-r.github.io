<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new user in FinSpace

### Description

Creates a new user in FinSpace.

### Usage

    finspacedata_create_user(emailAddress, type, firstName, lastName,
      ApiAccess, apiAccessPrincipalArn, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_create_user_:_emailAddress">emailAddress</code></td>
<td><p>[required] The email address of the user that you want to
register. The email address serves as a uniquer identifier for each user
and cannot be changed after it's created.</p></td>
</tr>
<tr class="even">
<td><code id="finspacedata_create_user_:_type">type</code></td>
<td><p>[required] The option to indicate the type of user. Use one of
the following options to specify this parameter:</p>
<ul>
<li><p><code>SUPER_USER</code> – A user with permission to all the
functionality and data in FinSpace.</p></li>
<li><p><code>APP_USER</code> – A user with specific permissions in
FinSpace. The users are assigned permissions by adding them to a
permission group.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_user_:_firstName">firstName</code></td>
<td><p>The first name of the user that you want to register.</p></td>
</tr>
<tr class="even">
<td><code id="finspacedata_create_user_:_lastName">lastName</code></td>
<td><p>The last name of the user that you want to register.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_user_:_ApiAccess">ApiAccess</code></td>
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
id="finspacedata_create_user_:_apiAccessPrincipalArn">apiAccessPrincipalArn</code></td>
<td><p>The ARN identifier of an AWS user or role that is allowed to call
the <code>get_programmatic_access_credentials</code> API to obtain a
credentials token for a specific FinSpace user. This must be an IAM role
within your FinSpace account.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_user_:_clientToken">clientToken</code></td>
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

    svc$create_user(
      emailAddress = "string",
      type = "SUPER_USER"|"APP_USER",
      firstName = "string",
      lastName = "string",
      ApiAccess = "ENABLED"|"DISABLED",
      apiAccessPrincipalArn = "string",
      clientToken = "string"
    )
