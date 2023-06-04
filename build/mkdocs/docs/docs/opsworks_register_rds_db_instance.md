<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_register_rds_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Registers an Amazon RDS instance with a stack

### Description

Registers an Amazon RDS instance with a stack.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_register_rds_db_instance(StackId, RdsDbInstanceArn, DbUser,
      DbPassword)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_register_rds_db_instance_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_register_rds_db_instance_:_RdsDbInstanceArn">RdsDbInstanceArn</code></td>
<td><p>[required] The Amazon RDS instance's ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_register_rds_db_instance_:_DbUser">DbUser</code></td>
<td><p>[required] The database's master user name.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_register_rds_db_instance_:_DbPassword">DbPassword</code></td>
<td><p>[required] The database password.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$register_rds_db_instance(
      StackId = "string",
      RdsDbInstanceArn = "string",
      DbUser = "string",
      DbPassword = "string"
    )
