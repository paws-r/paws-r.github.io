<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_disassociate_recovery_point_from_parent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action to a specific child (nested) recovery point removes the relationship between the specified recovery point and its parent (composite) recovery point

### Description

This action to a specific child (nested) recovery point removes the
relationship between the specified recovery point and its parent
(composite) recovery point.

### Usage

    backup_disassociate_recovery_point_from_parent(BackupVaultName,
      RecoveryPointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_disassociate_recovery_point_from_parent_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] This is the name of a logical container where the
child (nested) recovery point is stored. Backup vaults are identified by
names that are unique to the account used to create them and the Amazon
Web Services Region where they are created. They consist of lowercase
letters, numbers, and hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_disassociate_recovery_point_from_parent_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] This is the Amazon Resource Name (ARN) that uniquely
identifies the child (nested) recovery point; for example, <code
style="white-space: pre;">⁠arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_recovery_point_from_parent(
      BackupVaultName = "string",
      RecoveryPointArn = "string"
    )
