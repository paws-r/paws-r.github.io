<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_get_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details for the Security Hub member accounts for the specified account IDs

### Description

Returns the details for the Security Hub member accounts for the
specified account IDs.

An administrator account can be either the delegated Security Hub
administrator account for an organization or an administrator account
that enabled Security Hub manually.

The results include both member accounts that are managed using
Organizations and accounts that were invited manually.

### Usage

    securityhub_get_members(AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_get_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of account IDs for the Security Hub member
accounts to return the details for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Members = list(
        list(
          AccountId = "string",
          Email = "string",
          MasterId = "string",
          AdministratorId = "string",
          MemberStatus = "string",
          InvitedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          ProcessingResult = "string"
        )
      )
    )

### Request syntax

    svc$get_members(
      AccountIds = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example returns details for the Security Hub member
    # accounts with the specified AWS account IDs. An administrator account
    # may be the delegated Security Hub administrator account for an
    # organization or an administrator account that enabled Security Hub
    # manually. The Security Hub administrator must call this operation.
    svc$get_members(
      AccountIds = list(
        "444455556666",
        "777788889999"
      )
    )

    ## End(Not run)
