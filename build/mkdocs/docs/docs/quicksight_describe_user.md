<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a user, given the user name

### Description

Returns information about a user, given the user name.

### Usage

    quicksight_describe_user(UserName, AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="quicksight_describe_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user that you want to
describe.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_user_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
user is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_user_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace. Currently, you should set this to
<code>default</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      User = list(
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
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_user(
      UserName = "string",
      AwsAccountId = "string",
      Namespace = "string"
    )
