<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_delete_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a subnet group

### Description

Deletes a subnet group. You cannot delete a default subnet group or one
that is associated with any clusters.

### Usage

    memorydb_delete_subnet_group(SubnetGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_delete_subnet_group_:_SubnetGroupName">SubnetGroupName</code></td>
<td><p>[required] The name of the subnet group to delete</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubnetGroup = list(
        Name = "string",
        Description = "string",
        VpcId = "string",
        Subnets = list(
          list(
            Identifier = "string",
            AvailabilityZone = list(
              Name = "string"
            )
          )
        ),
        ARN = "string"
      )
    )

### Request syntax

    svc$delete_subnet_group(
      SubnetGroupName = "string"
    )
