<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_delete_backup_vault_lock_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes Backup Vault Lock from a backup vault specified by a backup vault name

### Description

Deletes Backup Vault Lock from a backup vault specified by a backup
vault name.

If the Vault Lock configuration is immutable, then you cannot delete
Vault Lock using API operations, and you will receive an
`InvalidRequestException` if you attempt to do so. For more information,
see [Vault
Lock](https://docs.aws.amazon.com/aws-backup/latest/devguide/vault-lock.html)
in the *Backup Developer Guide*.

### Usage

    backup_delete_backup_vault_lock_configuration(BackupVaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_delete_backup_vault_lock_configuration_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of the backup vault from which to delete
Backup Vault Lock.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_backup_vault_lock_configuration(
      BackupVaultName = "string"
    )
