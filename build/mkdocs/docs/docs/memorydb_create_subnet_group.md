<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_create_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a subnet group

### Description

Creates a subnet group. A subnet group is a collection of subnets
(typically private) that you can designate for your clusters running in
an Amazon Virtual Private Cloud (VPC) environment. When you create a
cluster in an Amazon VPC, you must specify a subnet group. MemoryDB uses
that subnet group to choose a subnet and IP addresses within that subnet
to associate with your nodes. For more information, see [Subnets and
subnet
groups](https://docs.aws.amazon.com/memorydb/latest/devguide/subnetgroups.html).

### Usage

    memorydb_create_subnet_group(SubnetGroupName, Description, SubnetIds,
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
id="memorydb_create_subnet_group_:_SubnetGroupName">SubnetGroupName</code></td>
<td><p>[required] The name of the subnet group.</p></td>
</tr>
<tr class="even">
<td><code
id="memorydb_create_subnet_group_:_Description">Description</code></td>
<td><p>A description for the subnet group.</p></td>
</tr>
<tr class="odd">
<td><code
id="memorydb_create_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] A list of VPC subnet IDs for the subnet
group.</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_create_subnet_group_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
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

    svc$create_subnet_group(
      SubnetGroupName = "string",
      Description = "string",
      SubnetIds = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
