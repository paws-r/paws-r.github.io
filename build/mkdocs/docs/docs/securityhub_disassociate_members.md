<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_disassociate_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates the specified member accounts from the associated administrator account

### Description

Disassociates the specified member accounts from the associated
administrator account.

Can be used to disassociate both accounts that are managed using
Organizations and accounts that were invited manually.

### Usage

    securityhub_disassociate_members(AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_disassociate_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] The account IDs of the member accounts to disassociate
from the administrator account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_members(
      AccountIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example dissociates the specified member accounts from the
    # associated administrator account.
    svc$disassociate_members(
      AccountIds = list(
        "123456789012",
        "111122223333"
      )
    )

    ## End(Not run)
