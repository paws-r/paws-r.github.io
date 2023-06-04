<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_delete_backup_vault_access_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the policy document that manages permissions on a backup vault

### Description

Deletes the policy document that manages permissions on a backup vault.

### Usage

    backup_delete_backup_vault_access_policy(BackupVaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_delete_backup_vault_access_policy_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_backup_vault_access_policy(
      BackupVaultName = "string"
    )
