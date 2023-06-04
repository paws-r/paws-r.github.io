<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_list_delegated_admin_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about the Amazon Inspector delegated administrator of your organization

### Description

Lists information about the Amazon Inspector delegated administrator of
your organization.

### Usage

    inspector2_list_delegated_admin_accounts(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_list_delegated_admin_accounts_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector2_list_delegated_admin_accounts_:_nextToken">nextToken</code></td>
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
      delegatedAdminAccounts = list(
        list(
          accountId = "string",
          status = "ENABLED"|"DISABLE_IN_PROGRESS"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_delegated_admin_accounts(
      maxResults = 123,
      nextToken = "string"
    )
