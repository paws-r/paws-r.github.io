<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_list_organization_admin_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the Detective administrator account for an organization

### Description

Returns information about the Detective administrator account for an
organization. Can only be called by the organization management account.

### Usage

    detective_list_organization_admin_accounts(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_list_organization_admin_accounts_:_NextToken">NextToken</code></td>
<td><p>For requests to get the next page of results, the pagination
token that was returned with the previous set of results. The initial
request does not include a pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_list_organization_admin_accounts_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Administrators = list(
        list(
          AccountId = "string",
          GraphArn = "string",
          DelegationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_organization_admin_accounts(
      NextToken = "string",
      MaxResults = 123
    )
