<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sso_list_account_roles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all roles that are assigned to the user for a given AWS account

### Description

Lists all roles that are assigned to the user for a given AWS account.

### Usage

    sso_list_account_roles(nextToken, maxResults, accessToken, accountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sso_list_account_roles_:_nextToken">nextToken</code></td>
<td><p>The page token from the previous response output when you request
subsequent pages.</p></td>
</tr>
<tr class="even">
<td><code
id="sso_list_account_roles_:_maxResults">maxResults</code></td>
<td><p>The number of items that clients can request per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="sso_list_account_roles_:_accessToken">accessToken</code></td>
<td><p>[required] The token issued by the <code>CreateToken</code> API
call. For more information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a>
in the <em>IAM Identity Center OIDC API Reference Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="sso_list_account_roles_:_accountId">accountId</code></td>
<td><p>[required] The identifier for the AWS account that is assigned to
the user.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      roleList = list(
        list(
          roleName = "string",
          accountId = "string"
        )
      )
    )

### Request syntax

    svc$list_account_roles(
      nextToken = "string",
      maxResults = 123,
      accessToken = "string",
      accountId = "string"
    )
