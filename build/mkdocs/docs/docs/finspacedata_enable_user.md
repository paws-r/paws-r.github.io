<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_enable_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows the specified user to access the FinSpace web application and API

### Description

Allows the specified user to access the FinSpace web application and
API.

### Usage

    finspacedata_enable_user(userId, clientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="finspacedata_enable_user_:_userId">userId</code></td>
<td><p>[required] The unique identifier for the user account that you
want to enable.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_enable_user_:_clientToken">clientToken</code></td>
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

    svc$enable_user(
      userId = "string",
      clientToken = "string"
    )
