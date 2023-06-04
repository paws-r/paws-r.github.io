<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_create_backup_vault</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a logical container where backups are stored

### Description

Creates a logical container where backups are stored. A
`create_backup_vault` request includes a name, optionally one or more
resource tags, an encryption key, and a request ID.

Do not include sensitive data, such as passport numbers, in the name of
a backup vault.

### Usage

    backup_create_backup_vault(BackupVaultName, BackupVaultTags,
      EncryptionKeyArn, CreatorRequestId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_create_backup_vault_:_BackupVaultName">BackupVaultName</code></td>
<td><p>[required] The name of a logical container where backups are
stored. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of letters, numbers, and
hyphens.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_backup_vault_:_BackupVaultTags">BackupVaultTags</code></td>
<td><p>Metadata that you can assign to help organize the resources that
you create. Each tag is a key-value pair.</p></td>
</tr>
<tr class="odd">
<td><code
id="backup_create_backup_vault_:_EncryptionKeyArn">EncryptionKeyArn</code></td>
<td><p>The server-side encryption key that is used to protect your
backups; for example, <code
style="white-space: pre;">⁠arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="backup_create_backup_vault_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>A unique string that identifies the request and allows failed
requests to be retried without the risk of running the operation twice.
This parameter is optional.</p>
<p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.'
characters.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupVaultName = "string",
      BackupVaultArn = "string",
      CreationDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_backup_vault(
      BackupVaultName = "string",
      BackupVaultTags = list(
        "string"
      ),
      EncryptionKeyArn = "string",
      CreatorRequestId = "string"
    )
