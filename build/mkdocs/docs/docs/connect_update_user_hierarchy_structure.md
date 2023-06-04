<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_user_hierarchy_structure</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the user hierarchy structure: add, remove, and rename user hierarchy levels

### Description

Updates the user hierarchy structure: add, remove, and rename user
hierarchy levels.

### Usage

    connect_update_user_hierarchy_structure(HierarchyStructure, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_user_hierarchy_structure_:_HierarchyStructure">HierarchyStructure</code></td>
<td><p>[required] The hierarchy levels to update.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_user_hierarchy_structure_:_InstanceId">InstanceId</code></td>
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

    svc$update_user_hierarchy_structure(
      HierarchyStructure = list(
        LevelOne = list(
          Name = "string"
        ),
        LevelTwo = list(
          Name = "string"
        ),
        LevelThree = list(
          Name = "string"
        ),
        LevelFour = list(
          Name = "string"
        ),
        LevelFive = list(
          Name = "string"
        )
      ),
      InstanceId = "string"
    )
