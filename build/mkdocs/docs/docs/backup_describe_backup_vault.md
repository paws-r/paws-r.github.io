<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_describe_backup_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata about a backup vault specified by its name

### Description

Returns metadata about a backup vault specified by its name.

### Usage

    backup_describe_backup_vault(BackupVaultName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_describe_backup_vault_:_BackupVaultName">BackupVaultName</code></td>
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
      EncryptionKeyArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      ),
      CreatorRequestId = "string",
      NumberOfRecoveryPoints = 123,
      Locked = TRUE|FALSE,
      MinRetentionDays = 123,
      MaxRetentionDays = 123,
      LockDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_backup_vault(
      BackupVaultName = "string"
    )
