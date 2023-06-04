<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_user_hierarchy_structure</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the hierarchy structure of the specified Amazon Connect instance

### Description

Describes the hierarchy structure of the specified Amazon Connect
instance.

### Usage

    connect_describe_user_hierarchy_structure(InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_user_hierarchy_structure_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HierarchyStructure = list(
        LevelOne = list(
          Id = "string",
          Arn = "string",
          Name = "string"
        ),
        LevelTwo = list(
          Id = "string",
          Arn = "string",
          Name = "string"
        ),
        LevelThree = list(
          Id = "string",
          Arn = "string",
          Name = "string"
        ),
        LevelFour = list(
          Id = "string",
          Arn = "string",
          Name = "string"
        ),
        LevelFive = list(
          Id = "string",
          Arn = "string",
          Name = "string"
        )
      )
    )

### Request syntax

    svc$describe_user_hierarchy_structure(
      InstanceId = "string"
    )
