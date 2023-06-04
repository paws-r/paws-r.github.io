<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_disable_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Denies access to the FinSpace web application and API for the specified user

### Description

Denies access to the FinSpace web application and API for the specified
user.

### Usage

    finspacedata_disable_user(userId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="finspacedata_disable_user_:_userId">userId</code></td>
<td><p>[required] The unique identifier for the user account that you
want to disable.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_disable_user_:_clientToken">clientToken</code></td>
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

    svc$disable_user(
      userId = "string",
      clientToken = "string"
    )
