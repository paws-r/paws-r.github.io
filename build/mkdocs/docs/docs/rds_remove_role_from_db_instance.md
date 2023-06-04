<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_remove_role_from_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Amazon Web Services Identity and Access Management (IAM) role from a DB instance

### Description

Disassociates an Amazon Web Services Identity and Access Management
(IAM) role from a DB instance.

### Usage

    rds_remove_role_from_db_instance(DBInstanceIdentifier, RoleArn,
      FeatureName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_remove_role_from_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The name of the DB instance to disassociate the IAM
role from.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_remove_role_from_db_instance_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role to
disassociate from the DB instance, for example, <code
style="white-space: pre;">⁠arn:aws:iam::123456789012:role/AccessRole⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_remove_role_from_db_instance_:_FeatureName">FeatureName</code></td>
<td><p>[required] The name of the feature for the DB instance that the
IAM role is to be disassociated from. For information about supported
feature names, see <code>DBEngineVersion</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_role_from_db_instance(
      DBInstanceIdentifier = "string",
      RoleArn = "string",
      FeatureName = "string"
    )
