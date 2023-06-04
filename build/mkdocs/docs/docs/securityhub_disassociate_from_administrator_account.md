<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_disassociate_from_administrator_account</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the current Security Hub member account from the associated administrator account

### Description

Disassociates the current Security Hub member account from the
associated administrator account.

This operation is only used by accounts that are not part of an
organization. For organization accounts, only the administrator account
can disassociate a member account.

### Usage

    securityhub_disassociate_from_administrator_account()

### Value

An empty list.

### Request syntax

    svc$disassociate_from_administrator_account()

### Examples

    ## Not run: 
    # The following example dissociates the requesting account from its
    # associated administrator account.
    svc$disassociate_from_administrator_account()

    ## End(Not run)
