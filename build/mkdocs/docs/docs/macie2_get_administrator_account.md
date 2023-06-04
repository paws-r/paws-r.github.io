<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_get_administrator_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the Amazon Macie administrator account for an account

### Description

Retrieves information about the Amazon Macie administrator account for
an account.

### Usage

    macie2_get_administrator_account()

### Value

A list with the following syntax:

    list(
      administrator = list(
        accountId = "string",
        invitationId = "string",
        invitedAt = as.POSIXct(
          "2015-01-01"
        ),
        relationshipStatus = "Enabled"|"Paused"|"Invited"|"Created"|"Removed"|"Resigned"|"EmailVerificationInProgress"|"EmailVerificationFailed"|"RegionDisabled"|"AccountSuspended"
      )
    )

### Request syntax

    svc$get_administrator_account()
