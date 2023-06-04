<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists details about all member accounts for the current Security Hub administrator account

### Description

Lists details about all member accounts for the current Security Hub
administrator account.

The results include both member accounts that belong to an organization
and member accounts that were invited manually.

### Usage

    securityhub_list_members(OnlyAssociated, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_list_members_:_OnlyAssociated">OnlyAssociated</code></td>
<td><p>Specifies which member accounts to include in the response based
on their relationship status with the administrator account. The default
value is <code>TRUE</code>.</p>
<p>If <code>OnlyAssociated</code> is set to <code>TRUE</code>, the
response includes member accounts whose relationship status with the
administrator account is set to <code>ENABLED</code>.</p>
<p>If <code>OnlyAssociated</code> is set to <code>FALSE</code>, the
response includes all existing member accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_list_members_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_list_members_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>list_members</code> operation, set the value of this parameter
to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
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
      NextToken = "string"
    )

### Request syntax

    svc$list_members(
      OnlyAssociated = TRUE|FALSE,
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following example returns details about member accounts for the
    # calling Security Hub administrator account. The response includes member
    # accounts that are managed through AWS Organizations and those that were
    # invited manually.
    svc$list_members()

    ## End(Not run)
