<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_put_backup_vault_lock_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies Backup Vault Lock to a backup vault, preventing attempts to delete any recovery point stored in or created in a backup vault

### Description

Applies Backup Vault Lock to a backup vault, preventing attempts to
delete any recovery point stored in or created in a backup vault. Vault
Lock also prevents attempts to update the lifecycle policy that controls
the retention period of any recovery point currently stored in a backup
vault. If specified, Vault Lock enforces a minimum and maximum retention
period for future backup and copy jobs that target a backup vault.

Backup Vault Lock has been assessed by Cohasset Associates for use in
environments that are subject to SEC 17a-4, CFTC, and FINRA regulations.
For more information about how Backup Vault Lock relates to these
regulations, see the Cohasset Associates Compliance Assessment.

### Usage

    backup_put_backup_vault_lock_configuration(BackupVaultName,
      MinRetentionDays, MaxRetentionDays, ChangeableForDays)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_put_backup_vault_lock_configuration_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The Backup Vault Lock configuration that specifies the
name of the backup vault it protects.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_put_backup_vault_lock_configuration_:_MinRetentionDays">MinRetentionDays</code></td>
<td><p>The Backup Vault Lock configuration that specifies the minimum
retention period that the vault retains its recovery points. This
setting can be useful if, for example, your organization's policies
require you to retain certain data for at least seven years (2555
days).</p>
<p>If this parameter is not specified, Vault Lock will not enforce a
minimum retention period.</p>
<p>If this parameter is specified, any backup or copy job to the vault
must have a lifecycle policy with a retention period equal to or longer
than the minimum retention period. If the job's retention period is
shorter than that minimum retention period, then the vault fails that
backup or copy job, and you should either modify your lifecycle settings
or use a different vault. The shortest minimum retention period you can
specify is 1 day. Recovery points already saved in the vault prior to
Vault Lock are not affected.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_put_backup_vault_lock_configuration_:_MaxRetentionDays">MaxRetentionDays</code></td>
<td><p>The Backup Vault Lock configuration that specifies the maximum
retention period that the vault retains its recovery points. This
setting can be useful if, for example, your organization's policies
require you to destroy certain data after retaining it for four years
(1460 days).</p>
<p>If this parameter is not included, Vault Lock does not enforce a
maximum retention period on the recovery points in the vault. If this
parameter is included without a value, Vault Lock will not enforce a
maximum retention period.</p>
<p>If this parameter is specified, any backup or copy job to the vault
must have a lifecycle policy with a retention period equal to or shorter
than the maximum retention period. If the job's retention period is
longer than that maximum retention period, then the vault fails the
backup or copy job, and you should either modify your lifecycle settings
or use a different vault. The longest maximum retention period you can
specify is 36500 days (approximately 100 years). Recovery points already
saved in the vault prior to Vault Lock are not affected.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_put_backup_vault_lock_configuration_:_ChangeableForDays">ChangeableForDays</code></td>
<td><p>The Backup Vault Lock configuration that specifies the number of
days before the lock date. For example, setting
<code>ChangeableForDays</code> to 30 on Jan. 1, 2022 at 8pm UTC will set
the lock date to Jan. 31, 2022 at 8pm UTC.</p>
<p>Backup enforces a 72-hour cooling-off period before Vault Lock takes
effect and becomes immutable. Therefore, you must set
<code>ChangeableForDays</code> to 3 or greater.</p>
<p>Before the lock date, you can delete Vault Lock from the vault using
<code>delete_backup_vault_lock_configuration</code> or change the Vault
Lock configuration using
<code>put_backup_vault_lock_configuration</code>. On and after the lock
date, the Vault Lock becomes immutable and cannot be changed or
deleted.</p>
<p>If this parameter is not specified, you can delete Vault Lock from
the vault using <code>delete_backup_vault_lock_configuration</code> or
change the Vault Lock configuration using
<code>put_backup_vault_lock_configuration</code> at any time.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_backup_vault_lock_configuration(
      BackupVaultName = "string",
      MinRetentionDays = 123,
      MaxRetentionDays = 123,
      ChangeableForDays = 123
    )
