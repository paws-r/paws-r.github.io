<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_organization_admin_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the delegated Amazon Macie administrator account for an organization in Organizations

### Description

Retrieves information about the delegated Amazon Macie administrator
account for an organization in Organizations.

### Usage

    macie2_list_organization_admin_accounts(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_organization_admin_accounts_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_list_organization_admin_accounts_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      adminAccounts = list(
        list(
          accountId = "string",
          status = "ENABLED"|"DISABLING_IN_PROGRESS"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_organization_admin_accounts(
      maxResults = 123,
      nextToken = "string"
    )
