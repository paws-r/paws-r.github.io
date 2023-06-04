<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_user_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of

### Description

Lists the Amazon QuickSight groups that an Amazon QuickSight user is a
member of.

### Usage

    quicksight_list_user_groups(UserName, AwsAccountId, Namespace,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_user_groups_:_UserName">UserName</code></td>
<td><p>[required] The Amazon QuickSight user name that you want to list
group memberships for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_user_groups_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID that the user is
in. Currently, you use the ID for the Amazon Web Services account that
contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_user_groups_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace. Currently, you should set this to
<code>default</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_user_groups_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_user_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return from this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupList = list(
        list(
          Arn = "string",
          GroupName = "string",
          Description = "string",
          PrincipalId = "string"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_user_groups(
      UserName = "string",
      AwsAccountId = "string",
      Namespace = "string",
      NextToken = "string",
      MaxResults = 123
    )
