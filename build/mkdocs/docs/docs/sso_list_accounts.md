<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sso_list_accounts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all AWS accounts assigned to the user

### Description

Lists all AWS accounts assigned to the user. These AWS accounts are
assigned by the administrator of the account. For more information, see
[Assign User
Access](https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers)
in the *IAM Identity Center User Guide*. This operation returns a
paginated response.

### Usage

    sso_list_accounts(nextToken, maxResults, accessToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sso_list_accounts_:_nextToken">nextToken</code></td>
<td><p>(Optional) When requesting subsequent pages, this is the page
token from the previous response output.</p></td>
</tr>
<tr class="even">
<td><code id="sso_list_accounts_:_maxResults">maxResults</code></td>
<td><p>This is the number of items clients can request per
page.</p></td>
</tr>
<tr class="odd">
<td><code id="sso_list_accounts_:_accessToken">accessToken</code></td>
<td><p>[required] The token issued by the <code>CreateToken</code> API
call. For more information, see <a
href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a>
in the <em>IAM Identity Center OIDC API Reference Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      accountList = list(
        list(
          accountId = "string",
          accountName = "string",
          emailAddress = "string"
        )
      )
    )

### Request syntax

    svc$list_accounts(
      nextToken = "string",
      maxResults = 123,
      accessToken = "string"
    )
