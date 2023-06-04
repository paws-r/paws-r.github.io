<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_group_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the DescribeGroupMembership operation to determine if a user is a member of the specified group

### Description

Use the `describe_group_membership` operation to determine if a user is
a member of the specified group. If the user exists and is a member of
the specified group, an associated `GroupMember` object is returned.

### Usage

    quicksight_describe_group_membership(MemberName, GroupName,
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
id="quicksight_describe_group_membership_:_MemberName">MemberName</code></td>
<td><p>[required] The user name of the user that you want to search
for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_group_membership_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group that you want to
search.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_group_membership_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
group is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_group_membership_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that includes the group you are
searching within.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupMember = list(
        Arn = "string",
        MemberName = "string"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_group_membership(
      MemberName = "string",
      GroupName = "string",
      AwsAccountId = "string",
      Namespace = "string"
    )
