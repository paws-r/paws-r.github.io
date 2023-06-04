<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_group_memberships</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists member users in a group

### Description

Lists member users in a group.

### Usage

    quicksight_list_group_memberships(GroupName, NextToken, MaxResults,
      AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_group_memberships_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group that you want to see a
membership list of.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_group_memberships_:_NextToken">NextToken</code></td>
<td><p>A pagination token that can be used in a subsequent
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_group_memberships_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return from this
request.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_group_memberships_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
group is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_group_memberships_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace of the group that you want a list of
users from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupMemberList = list(
        list(
          Arn = "string",
          MemberName = "string"
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_group_memberships(
      GroupName = "string",
      NextToken = "string",
      MaxResults = 123,
      AwsAccountId = "string",
      Namespace = "string"
    )
