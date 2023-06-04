<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_rds_db_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes Amazon RDS instances

### Description

Describes Amazon RDS instances.

**Required Permissions**: To use this action, an IAM user must have a
Show, Deploy, or Manage permissions level for the stack, or an attached
policy that explicitly grants permissions. For more information about
user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

This call accepts only one resource-identifying parameter.

### Usage

    opsworks_describe_rds_db_instances(StackId, RdsDbInstanceArns)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_rds_db_instances_:_StackId">StackId</code></td>
<td><p>[required] The ID of the stack with which the instances are
registered. The operation returns descriptions of all registered Amazon
RDS instances.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_rds_db_instances_:_RdsDbInstanceArns">RdsDbInstanceArns</code></td>
<td><p>An array containing the ARNs of the instances to be
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RdsDbInstances = list(
        list(
          RdsDbInstanceArn = "string",
          DbInstanceIdentifier = "string",
          DbUser = "string",
          DbPassword = "string",
          Region = "string",
          Address = "string",
          Engine = "string",
          StackId = "string",
          MissingOnRds = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$describe_rds_db_instances(
      StackId = "string",
      RdsDbInstanceArns = list(
        "string"
      )
    )
