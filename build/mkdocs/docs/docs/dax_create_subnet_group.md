<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_create_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new subnet group

### Description

Creates a new subnet group.

### Usage

    dax_create_subnet_group(SubnetGroupName, Description, SubnetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_create_subnet_group_:_SubnetGroupName">SubnetGroupName</code></td>
<td><p>[required] A name for the subnet group. This value is stored as a
lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="dax_create_subnet_group_:_Description">Description</code></td>
<td><p>A description for the subnet group</p></td>
</tr>
<tr class="odd">
<td><code id="dax_create_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] A list of VPC subnet IDs for the subnet
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SubnetGroup = list(
        SubnetGroupName = "string",
        Description = "string",
        VpcId = "string",
        Subnets = list(
          list(
            SubnetIdentifier = "string",
            SubnetAvailabilityZone = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_subnet_group(
      SubnetGroupName = "string",
      Description = "string",
      SubnetIds = list(
        "string"
      )
    )
