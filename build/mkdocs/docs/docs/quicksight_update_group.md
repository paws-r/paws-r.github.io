<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Changes a group description

### Description

Changes a group description.

### Usage

    quicksight_update_group(GroupName, Description, AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="quicksight_update_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_group_:_Description">Description</code></td>
<td><p>The description for the group that you want to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_group_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
group is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_update_group_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace of the group that you want to
update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
        Arn = "string",
        GroupName = "string",
        Description = "string",
        PrincipalId = "string"
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_group(
      GroupName = "string",
      Description = "string",
      AwsAccountId = "string",
      Namespace = "string"
    )
