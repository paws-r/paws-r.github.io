<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a DB security group

### Description

Deletes a DB security group.

The specified DB security group must not be associated with any DB
instances.

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

    rds_delete_db_security_group(DBSecurityGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_security_group_:_DBSecurityGroupName">DBSecurityGroupName</code></td>
<td><p>[required] The name of the DB security group to delete.</p>
<p>You can't delete the default DB security group.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters, numbers, or hyphens.</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
<li><p>Must not be "Default"</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_db_security_group(
      DBSecurityGroupName = "string"
    )
