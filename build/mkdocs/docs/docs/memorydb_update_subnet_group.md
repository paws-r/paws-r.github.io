<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_update_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a subnet group

### Description

Updates a subnet group. For more information, see [Updating a subnet
group](https://docs.aws.amazon.com/memorydb/latest/devguide/)

### Usage

    memorydb_update_subnet_group(SubnetGroupName, Description, SubnetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_update_subnet_group_:_SubnetGroupName">SubnetGroupName</code></td>
<td><p>[required] The name of the subnet group</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_update_subnet_group_:_Description">Description</code></td>
<td><p>A description of the subnet group</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_update_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>The EC2 subnet IDs for the subnet group.</p></td>
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

    svc$update_subnet_group(
      SubnetGroupName = "string",
      Description = "string",
      SubnetIds = list(
        "string"
      )
    )
