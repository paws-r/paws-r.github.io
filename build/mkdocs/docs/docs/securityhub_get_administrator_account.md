<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_administrator_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the details for the Security Hub administrator account for the current member account

### Description

Provides the details for the Security Hub administrator account for the
current member account.

Can be used by both member accounts that are managed using Organizations
and accounts that were invited manually.

### Usage

    securityhub_get_administrator_account()

### Value

A list with the following syntax:

    list(
      Administrator = list(
        AccountId = "string",
        InvitationId = "string",
        InvitedAt = as.POSIXct(
          "2015-01-01"
        ),
        MemberStatus = "string"
      )
    )

### Request syntax

    svc$get_administrator_account()

### Examples

    ## Not run: 
    # The following example provides details about the Security Hub
    # administrator account for the requesting member account.
    svc$get_administrator_account()

    ## End(Not run)
