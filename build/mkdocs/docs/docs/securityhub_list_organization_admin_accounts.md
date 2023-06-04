<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_organization_admin_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Security Hub administrator accounts

### Description

Lists the Security Hub administrator accounts. Can only be called by the
organization management account.

### Usage

    securityhub_list_organization_admin_accounts(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_list_organization_admin_accounts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_list_organization_admin_accounts_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>list_organization_admin_accounts</code> operation, set the
value of this parameter to <code>NULL</code>. For subsequent calls to
the operation, to continue listing data, set the value of this parameter
to the value returned from the previous response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AdminAccounts = list(
        list(
          AccountId = "string",
          Status = "ENABLED"|"DISABLE_IN_PROGRESS"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_organization_admin_accounts(
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following example lists the Security  Hub administrator accounts for
    # an organization. Only the organization management account can call this
    # operation.
    svc$list_organization_admin_accounts()

    ## End(Not run)
