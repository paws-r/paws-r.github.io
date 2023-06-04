<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_list_staging_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of staging accounts for existing extended source servers

### Description

Returns an array of staging accounts for existing extended source
servers.

### Usage

    drs_list_staging_accounts(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="drs_list_staging_accounts_:_maxResults">maxResults</code></td>
<td><p>The maximum number of staging Accounts to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="drs_list_staging_accounts_:_nextToken">nextToken</code></td>
<td><p>The token of the next staging Account to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      accounts = list(
        list(
          accountID = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_staging_accounts(
      maxResults = 123,
      nextToken = "string"
    )
