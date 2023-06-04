<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of DBSecurityGroup descriptions

### Description

Returns a list of `DBSecurityGroup` descriptions. If a
`DBSecurityGroupName` is specified, the list will contain only the
descriptions of the specified DB security group.

EC2-Classic was retired on August 15, 2022. If you haven't migrated from
EC2-Classic to a VPC, we recommend that you migrate as soon as possible.
For more information, see [Migrate from EC2-Classic to a
VPC](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the *Amazon EC2 User Guide*, the blog [EC2-Classic Networking is
Retiring – Here’s How to
Prepare](https://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/),
and [Moving a DB instance not in a VPC into a
VPC](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Non-VPC2VPC.html)
in the *Amazon RDS User Guide*.

### Usage

    rds_describe_db_security_groups(DBSecurityGroupName, Filters,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_security_groups_:_DBSecurityGroupName">DBSecurityGroupName</code></td>
<td><p>The name of the DB security group to return details for.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_security_groups_:_Filters">Filters</code></td>
<td><p>This parameter isn't currently supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_security_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_security_groups_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_security_groups</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBSecurityGroups = list(
        list(
          OwnerId = "string",
          DBSecurityGroupName = "string",
          DBSecurityGroupDescription = "string",
          VpcId = "string",
          EC2SecurityGroups = list(
            list(
              Status = "string",
              EC2SecurityGroupName = "string",
              EC2SecurityGroupId = "string",
              EC2SecurityGroupOwnerId = "string"
            )
          ),
          IPRanges = list(
            list(
              Status = "string",
              CIDRIP = "string"
            )
          ),
          DBSecurityGroupArn = "string"
        )
      )
    )

### Request syntax

    svc$describe_db_security_groups(
      DBSecurityGroupName = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string"
    )
