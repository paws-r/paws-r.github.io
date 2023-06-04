<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_user_hierarchy_group_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name of the user hierarchy group

### Description

Updates the name of the user hierarchy group.

### Usage

    connect_update_user_hierarchy_group_name(Name, HierarchyGroupId,
      InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_user_hierarchy_group_name_:_Name">Name</code></td>
<td><p>[required] The name of the hierarchy group. Must not be more than
100 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_user_hierarchy_group_name_:_HierarchyGroupId">HierarchyGroupId</code></td>
<td><p>[required] The identifier of the hierarchy group.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_user_hierarchy_group_name_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_user_hierarchy_group_name(
      Name = "string",
      HierarchyGroupId = "string",
      InstanceId = "string"
    )
