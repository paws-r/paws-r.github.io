<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_disassociate_recovery_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified continuous backup recovery point from Backup and releases control of that continuous backup to the source service, such as Amazon RDS

### Description

Deletes the specified continuous backup recovery point from Backup and
releases control of that continuous backup to the source service, such
as Amazon RDS. The source service will continue to create and retain
continuous backups using the lifecycle that you specified in your
original backup plan.

Does not support snapshot backup recovery points.

### Usage

    backup_disassociate_recovery_point(BackupVaultName, RecoveryPointArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_disassociate_recovery_point_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The unique name of an Backup vault.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_disassociate_recovery_point_:_RecoveryPointArn">RecoveryPointArn</code></td>
<td><p>[required] An Amazon Resource Name (ARN) that uniquely identifies
an Backup recovery point.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_recovery_point(
      BackupVaultName = "string",
      RecoveryPointArn = "string"
    )
