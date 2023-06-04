<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_list_git_hub_account_token_names</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the names of stored connections to GitHub accounts

### Description

Lists the names of stored connections to GitHub accounts.

### Usage

    codedeploy_list_git_hub_account_token_names(nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_list_git_hub_account_token_names_:_nextToken">nextToken</code></td>
<td><p>An identifier returned from the previous
<code>list_git_hub_account_token_names</code> call. It can be used to
return the next set of names in the list.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tokenNameList = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_git_hub_account_token_names(
      nextToken = "string"
    )
