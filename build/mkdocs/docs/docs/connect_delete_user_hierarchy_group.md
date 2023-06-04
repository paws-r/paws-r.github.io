<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_user_hierarchy_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing user hierarchy group

### Description

Deletes an existing user hierarchy group. It must not be associated with
any agents or have any active child groups.

### Usage

    connect_delete_user_hierarchy_group(HierarchyGroupId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_user_hierarchy_group_:_HierarchyGroupId">HierarchyGroupId</code></td>
<td><p>[required] The identifier of the hierarchy group.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_delete_user_hierarchy_group_:_InstanceId">InstanceId</code></td>
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

    svc$delete_user_hierarchy_group(
      HierarchyGroupId = "string",
      InstanceId = "string"
    )
