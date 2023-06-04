<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_user_hierarchy_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new user hierarchy group

### Description

Creates a new user hierarchy group.

### Usage

    connect_create_user_hierarchy_group(Name, ParentGroupId, InstanceId,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_user_hierarchy_group_:_Name">Name</code></td>
<td><p>[required] The name of the user hierarchy group. Must not be more
than 100 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_user_hierarchy_group_:_ParentGroupId">ParentGroupId</code></td>
<td><p>The identifier for the parent hierarchy group. The user hierarchy
is created at level one if the parent group ID is null.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_user_hierarchy_group_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_user_hierarchy_group_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HierarchyGroupId = "string",
      HierarchyGroupArn = "string"
    )

### Request syntax

    svc$create_user_hierarchy_group(
      Name = "string",
      ParentGroupId = "string",
      InstanceId = "string",
      Tags = list(
        "string"
      )
    )
