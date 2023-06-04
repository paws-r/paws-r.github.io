<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie_list_member_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## (Discontinued) Lists all Amazon Macie Classic member accounts for the current Macie Classic administrator account

### Description

(Discontinued) Lists all Amazon Macie Classic member accounts for the
current Macie Classic administrator account.

### Usage

    macie_list_member_accounts(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie_list_member_accounts_:_nextToken">nextToken</code></td>
<td><p>(Discontinued) Use this parameter when paginating results. Set
the value of this parameter to null on your first call to the
<code>list_member_accounts</code> action. Subsequent calls to the action
fill <code>nextToken</code> in the request with the value of
<code>nextToken</code> from the previous response to continue listing
data.</p></td>
</tr>
<tr class="even">
<td><code
id="macie_list_member_accounts_:_maxResults">maxResults</code></td>
<td><p>(Discontinued) Use this parameter to indicate the maximum number
of items that you want in the response. The default value is
250.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      memberAccounts = list(
        list(
          accountId = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_member_accounts(
      nextToken = "string",
      maxResults = 123
    )
