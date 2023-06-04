<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_delete_git_hub_account_token</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a GitHub account connection

### Description

Deletes a GitHub account connection.

### Usage

    codedeploy_delete_git_hub_account_token(tokenName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_delete_git_hub_account_token_:_tokenName">tokenName</code></td>
<td><p>The name of the GitHub account connection to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tokenName = "string"
    )

### Request syntax

    svc$delete_git_hub_account_token(
      tokenName = "string"
    )
