<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_deregister_rds_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deregisters an Amazon RDS instance

### Description

Deregisters an Amazon RDS instance.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_deregister_rds_db_instance(RdsDbInstanceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_deregister_rds_db_instance_:_RdsDbInstanceArn">RdsDbInstanceArn</code></td>
<td><p>[required] The Amazon RDS instance's ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$deregister_rds_db_instance(
      RdsDbInstanceArn = "string"
    )
