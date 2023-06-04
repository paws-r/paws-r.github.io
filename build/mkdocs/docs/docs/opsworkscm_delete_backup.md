<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_delete_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a backup

### Description

Deletes a backup. You can delete both manual and automated backups. This
operation is asynchronous.

An `InvalidStateException` is thrown when a backup deletion is already
in progress. A `ResourceNotFoundException` is thrown when the backup
does not exist. A `ValidationException` is thrown when parameters of the
request are not valid.

### Usage

    opsworkscm_delete_backup(BackupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworkscm_delete_backup_:_BackupId">BackupId</code></td>
<td><p>[required] The ID of the backup to delete. Run the
DescribeBackups command to get a list of backup IDs. Backup IDs are in
the format <code>ServerName-yyyyMMddHHmmssSSS</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_backup(
      BackupId = "string"
    )
