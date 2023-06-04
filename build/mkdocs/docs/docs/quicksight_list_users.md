<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_users</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all of the Amazon QuickSight users belonging to this account

### Description

Returns a list of all of the Amazon QuickSight users belonging to this
account.

### Usage

    quicksight_list_users(AwsAccountId, NextToken, MaxResults, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_users_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
user is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_users_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_list_users_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return from this
request.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_list_users_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace. Currently, you should set this to
<code>default</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserList = list(
        list(
          Arn = "string",
          UserName = "string",
          Email = "string",
          Role = "ADMIN"|"AUTHOR"|"READER"|"RESTRICTED_AUTHOR"|"RESTRICTED_READER",
          IdentityType = "IAM"|"QUICKSIGHT",
          Active = TRUE|FALSE,
          PrincipalId = "string",
          CustomPermissionsName = "string",
          ExternalLoginFederationProviderType = "string",
          ExternalLoginFederationProviderUrl = "string",
          ExternalLoginId = "string"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_users(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123,
      Namespace = "string"
    )
