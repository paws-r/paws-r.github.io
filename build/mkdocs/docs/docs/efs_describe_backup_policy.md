<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_describe_backup_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the backup policy for the specified EFS file system

### Description

Returns the backup policy for the specified EFS file system.

### Usage

    efs_describe_backup_policy(FileSystemId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="efs_describe_backup_policy_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] Specifies which EFS file system to retrieve the
<code>BackupPolicy</code> for.</p></td>
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

    svc$describe_backup_policy(
      FileSystemId = "string"
    )
