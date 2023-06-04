<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_authorize_db_security_group_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables ingress to a DBSecurityGroup using one of two forms of authorization

### Description

Enables ingress to a DBSecurityGroup using one of two forms of
authorization. First, EC2 or VPC security groups can be added to the
DBSecurityGroup if the application using the database is running on EC2
or VPC instances. Second, IP ranges are available if the application
accessing your database is running on the internet. Required parameters
for this API are one of CIDR range, EC2SecurityGroupId for VPC, or
(EC2SecurityGroupOwnerId and either EC2SecurityGroupName or
EC2SecurityGroupId for non-VPC).

You can't authorize ingress from an EC2 security group in one Amazon Web
Services Region to an Amazon RDS DB instance in another. You can't
authorize ingress from a VPC security group in one VPC to an Amazon RDS
DB instance in another.

For an overview of CIDR ranges, go to the [Wikipedia
Tutorial](https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

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

    rds_authorize_db_security_group_ingress(DBSecurityGroupName, CIDRIP,
      EC2SecurityGroupName, EC2SecurityGroupId, EC2SecurityGroupOwnerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_authorize_db_security_group_ingress_:_DBSecurityGroupName">DBSecurityGroupName</code></td>
<td><p>[required] The name of the DB security group to add authorization
to.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_authorize_db_security_group_ingress_:_CIDRIP">CIDRIP</code></td>
<td><p>The IP range to authorize.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_authorize_db_security_group_ingress_:_EC2SecurityGroupName">EC2SecurityGroupName</code></td>
<td><p>Name of the EC2 security group to authorize. For VPC DB security
groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise,
<code>EC2SecurityGroupOwnerId</code> and either
<code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code>
must be provided.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_authorize_db_security_group_ingress_:_EC2SecurityGroupId">EC2SecurityGroupId</code></td>
<td><p>Id of the EC2 security group to authorize. For VPC DB security
groups, <code>EC2SecurityGroupId</code> must be provided. Otherwise,
<code>EC2SecurityGroupOwnerId</code> and either
<code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code>
must be provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_authorize_db_security_group_ingress_:_EC2SecurityGroupOwnerId">EC2SecurityGroupOwnerId</code></td>
<td><p>Amazon Web Services account number of the owner of the EC2
security group specified in the <code>EC2SecurityGroupName</code>
parameter. The Amazon Web Services access key ID isn't an acceptable
value. For VPC DB security groups, <code>EC2SecurityGroupId</code> must
be provided. Otherwise, <code>EC2SecurityGroupOwnerId</code> and either
<code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code>
must be provided.</p></td>
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

    svc$authorize_db_security_group_ingress(
      DBSecurityGroupName = "string",
      CIDRIP = "string",
      EC2SecurityGroupName = "string",
      EC2SecurityGroupId = "string",
      EC2SecurityGroupOwnerId = "string"
    )
