<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>guardduty_list_organization_admin_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the accounts configured as GuardDuty delegated administrators

### Description

Lists the accounts configured as GuardDuty delegated administrators.

### Usage

    guardduty_list_organization_admin_accounts(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="guardduty_list_organization_admin_accounts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="guardduty_list_organization_admin_accounts_:_NextToken">NextToken</code></td>
<td><p>A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the <code>NextToken</code>
value returned from the previous request to continue listing results
after the first page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AdminAccounts = list(
        list(
          AdminAccountId = "string",
          AdminStatus = "ENABLED"|"DISABLE_IN_PROGRESS"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_organization_admin_accounts(
      MaxResults = 123,
      NextToken = "string"
    )
