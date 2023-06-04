<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_disassociate_from_master_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This method is deprecated

### Description

This method is deprecated. Instead, use
`disassociate_from_administrator_account`.

The Security Hub console continues to use
`disassociate_from_master_account`. It will eventually change to use
`disassociate_from_administrator_account`. Any IAM policies that
specifically control access to this function must continue to use
`disassociate_from_master_account`. You should also add
`disassociate_from_administrator_account` to your policies to ensure
that the correct permissions are in place after the console begins to
use `disassociate_from_administrator_account`.

Disassociates the current Security Hub member account from the
associated administrator account.

This operation is only used by accounts that are not part of an
organization. For organization accounts, only the administrator account
can disassociate a member account.

### Usage

    securityhub_disassociate_from_master_account()

### Value

An empty list.

### Request syntax

    svc$disassociate_from_master_account()
