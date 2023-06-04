<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about an account that's associated with an Amazon Macie administrator account

### Description

Retrieves information about an account that's associated with an Amazon
Macie administrator account.

### Usage

    macie2_get_member(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_get_member_:_id">id</code></td>
<td><p>[required] The unique identifier for the Amazon Macie resource
that the request applies to.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accountId = "string",
      administratorAccountId = "string",
      arn = "string",
      email = "string",
      invitedAt = as.POSIXct(
        "2015-01-01"
      ),
      masterAccountId = "string",
      relationshipStatus = "Enabled"|"Paused"|"Invited"|"Created"|"Removed"|"Resigned"|"EmailVerificationInProgress"|"EmailVerificationFailed"|"RegionDisabled"|"AccountSuspended",
      tags = list(
        "string"
      ),
      updatedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_member(
      id = "string"
    )
