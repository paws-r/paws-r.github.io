<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use the CreateGroup operation to create a group in Amazon QuickSight

### Description

Use the `create_group` operation to create a group in Amazon QuickSight.
You can create up to 10,000 groups in a namespace. If you want to create
more than 10,000 groups in a namespace, contact AWS Support.

The permissions resource is
`⁠arn:aws:quicksight:<your-region>:<relevant-aws-account-id>:group/default/<group-name> ⁠`.

The response is a group object.

### Usage

    quicksight_create_group(GroupName, Description, AwsAccountId, Namespace)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="quicksight_create_group_:_GroupName">GroupName</code></td>
<td><p>[required] A name for the group that you want to create.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_group_:_Description">Description</code></td>
<td><p>A description for the group that you want to create.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_group_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID for the Amazon Web Services account that the
group is in. Currently, you use the ID for the Amazon Web Services
account that contains your Amazon QuickSight account.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_create_group_:_Namespace">Namespace</code></td>
<td><p>[required] The namespace that you want the group to be a part
of.</p></td>
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

    svc$create_group(
      GroupName = "string",
      Description = "string",
      AwsAccountId = "string",
      Namespace = "string"
    )
