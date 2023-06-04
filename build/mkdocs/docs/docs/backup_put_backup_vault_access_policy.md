<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_put_backup_vault_access_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets a resource-based policy that is used to manage access permissions on the target backup vault

### Description

Sets a resource-based policy that is used to manage access permissions
on the target backup vault. Requires a backup vault name and an access
policy document in JSON format.

### Usage

    backup_put_backup_vault_access_policy(BackupVaultName, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_put_backup_vault_access_policy_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_put_backup_vault_access_policy_:_Policy">Policy</code></td>
<td><p>The backup vault access policy document in JSON format.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_backup_vault_access_policy(
      BackupVaultName = "string",
      Policy = "string"
    )
