<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_get_backup_vault_access_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the access policy document that is associated with the named backup vault

### Description

Returns the access policy document that is associated with the named
backup vault.

### Usage

    backup_get_backup_vault_access_policy(BackupVaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_get_backup_vault_access_policy_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupVaultName = "string",
      BackupVaultArn = "string",
      Policy = "string"
    )

### Request syntax

    svc$get_backup_vault_access_policy(
      BackupVaultName = "string"
    )
