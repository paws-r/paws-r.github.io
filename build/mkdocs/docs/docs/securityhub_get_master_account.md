<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_master_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This method is deprecated

### Description

This method is deprecated. Instead, use `get_administrator_account`.

The Security Hub console continues to use `get_master_account`. It will
eventually change to use `get_administrator_account`. Any IAM policies
that specifically control access to this function must continue to use
`get_master_account`. You should also add `get_administrator_account` to
your policies to ensure that the correct permissions are in place after
the console begins to use `get_administrator_account`.

Provides the details for the Security Hub administrator account for the
current member account.

Can be used by both member accounts that are managed using Organizations
and accounts that were invited manually.

### Usage

    securityhub_get_master_account()

### Value

A list with the following syntax:

    list(
      Master = list(
        AccountId = "string",
        InvitationId = "string",
        InvitedAt = as.POSIXct(
          "2015-01-01"
        ),
        MemberStatus = "string"
      )
    )

### Request syntax

    svc$get_master_account()
