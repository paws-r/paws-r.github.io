<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_delete_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified member accounts from Security Hub

### Description

Deletes the specified member accounts from Security Hub.

Can be used to delete member accounts that belong to an organization as
well as member accounts that were invited manually.

### Usage

    securityhub_delete_members(AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_delete_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of account IDs for the member accounts to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          ProcessingResult = "string"
        )
      )
    )

### Request syntax

    svc$delete_members(
      AccountIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example deletes the specified member account from Security
    # Hub. This operation can be used to delete member accounts that are part
    # of an organization or that were invited manually.
    svc$delete_members(
      AccountIds = list(
        "123456789111",
        "123456789222"
      )
    )

    ## End(Not run)
