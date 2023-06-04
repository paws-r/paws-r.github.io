<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cognitoidentity_list_identity_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the Cognito identity pools registered for your account

### Description

Lists all of the Cognito identity pools registered for your account.

You must use AWS Developer credentials to call this API.

### Usage

    cognitoidentity_list_identity_pools(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cognitoidentity_list_identity_pools_:_MaxResults">MaxResults</code></td>
<td><p>[required] The maximum number of identities to return.</p></td>
</tr>
<tr class="even">
<td><code
id="cognitoidentity_list_identity_pools_:_NextToken">NextToken</code></td>
<td><p>A pagination token.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityPools = list(
        list(
          IdentityPoolId = "string",
          IdentityPoolName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_identity_pools(
      MaxResults = 123,
      NextToken = "string"
    )
