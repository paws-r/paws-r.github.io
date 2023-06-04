<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new DB security group

### Description

Creates a new DB security group. DB security groups control access to a
DB instance.

A DB security group controls access to EC2-Classic DB instances that are
not in a VPC.

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

    rds_create_db_security_group(DBSecurityGroupName,
      DBSecurityGroupDescription, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_db_security_group_:_DBSecurityGroupName">DBSecurityGroupName</code></td>
<td><p>[required] The name for the DB security group. This value is
stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
<li><p>Must not be "Default"</p></li>
</ul>
<p>Example: <code>mysecuritygroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_security_group_:_DBSecurityGroupDescription">DBSecurityGroupDescription</code></td>
<td><p>[required] The description for the DB security group.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_security_group_:_Tags">Tags</code></td>
<td><p>Tags to assign to the DB security group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBSecurityGroup = list(
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

### Request syntax

    svc$create_db_security_group(
      DBSecurityGroupName = "string",
      DBSecurityGroupDescription = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
