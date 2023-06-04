<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB subnet group

### Description

Creates a new DB subnet group. DB subnet groups must contain at least
one subnet in at least two AZs in the Amazon Web Services Region.

### Usage

    rds_create_db_subnet_group(DBSubnetGroupName, DBSubnetGroupDescription,
      SubnetIds, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_db_subnet_group_:_DBSubnetGroupName">DBSubnetGroupName</code></td>
<td><p>[required] The name for the DB subnet group. This value is stored
as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain no more than 255 letters, numbers, periods,
underscores, spaces, or hyphens.</p></li>
<li><p>Must not be default.</p></li>
<li><p>First character must be a letter.</p></li>
</ul>
<p>Example: <code>mydbsubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_subnet_group_:_DBSubnetGroupDescription">DBSubnetGroupDescription</code></td>
<td><p>[required] The description for the DB subnet group.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_db_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] The EC2 Subnet IDs for the DB subnet group.</p></td>
</tr>
<tr class="even">
<td><code id="rds_create_db_subnet_group_:_Tags">Tags</code></td>
<td><p>Tags to assign to the DB subnet group.</p></td>
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
            SubnetOutpost = list(
              Arn = "string"
            ),
            SubnetStatus = "string"
          )
        ),
        DBSubnetGroupArn = "string",
        SupportedNetworkTypes = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_db_subnet_group(
      DBSubnetGroupName = "string",
      DBSubnetGroupDescription = "string",
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
