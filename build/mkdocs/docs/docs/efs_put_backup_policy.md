<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_put_backup_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the file system's backup policy

### Description

Updates the file system's backup policy. Use this action to start or
stop automatic backups of the file system.

### Usage

    efs_put_backup_policy(FileSystemId, BackupPolicy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_put_backup_policy_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] Specifies which EFS file system to update the backup
policy for.</p></td>
</tr>
<tr class="even">
<td><code
id="efs_put_backup_policy_:_BackupPolicy">BackupPolicy</code></td>
<td><p>[required] The backup policy included in the
<code>put_backup_policy</code> request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupPolicy = list(
        Status = "ENABLED"|"ENABLING"|"DISABLED"|"DISABLING"
      )
    )

### Request syntax

    svc$put_backup_policy(
      FileSystemId = "string",
      BackupPolicy = list(
        Status = "ENABLED"|"ENABLING"|"DISABLED"|"DISABLING"
      )
    )
