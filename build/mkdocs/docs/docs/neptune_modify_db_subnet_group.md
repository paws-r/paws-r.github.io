<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_modify_db_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an existing DB subnet group

### Description

Modifies an existing DB subnet group. DB subnet groups must contain at
least one subnet in at least two AZs in the Amazon Region.

### Usage

    neptune_modify_db_subnet_group(DBSubnetGroupName,
      DBSubnetGroupDescription, SubnetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_modify_db_subnet_group_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>[required] The name for the DB subnet group. This value is stored
as a lowercase string. You can't modify the default subnet group.</p>
<p>Constraints: Must match the name of an existing DBSubnetGroup. Must
not be default.</p>
<p>Example: <code>mySubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_modify_db_subnet_group_:_DBSubnetGroupDescription">DBSubnetGroupDescription</code></td>
<td><p>The description for the DB subnet group.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_modify_db_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] The EC2 subnet IDs for the DB subnet group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBSubnetGroup = list(
        DBSubnetGroupName = "string",
        DBSubnetGroupDescription = "string",
        VpcId = "string",
        SubnetGroupStatus = "string",
        Subnets = list(
          list(
            SubnetIdentifier = "string",
            SubnetAvailabilityZone = list(
              Name = "string"
            ),
            SubnetStatus = "string"
          )
        ),
        DBSubnetGroupArn = "string"
      )
    )

### Request syntax

    svc$modify_db_subnet_group(
      DBSubnetGroupName = "string",
      DBSubnetGroupDescription = "string",
      SubnetIds = list(
        "string"
      )
    )
