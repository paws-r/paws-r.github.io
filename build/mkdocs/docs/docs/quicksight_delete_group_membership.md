<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_group_membership</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a user from a group so that the user is no longer a member of the group

### Description

Removes a user from a group so that the user is no longer a member of
the group.

### Usage

    quicksight_delete_group_membership(MemberName, GroupName, AwsAccountId,
      Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_group_membership_:_MemberName">MemberName</code></td>
<td><p>[required] The name of the user that you want to delete from the
group membership.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_group_membership_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group that you want to delete the user
from.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_group_membership_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
group is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_group_membership_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace of the group that you want to remove a
user from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_group_membership(
      MemberName = "string",
      GroupName = "string",
      AwsAccountId = "string",
      Namespace = "string"
    )
