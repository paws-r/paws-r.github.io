<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_delete_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified AWS CloudHSM backup

### Description

Deletes a specified AWS CloudHSM backup. A backup can be restored up to
7 days after the DeleteBackup request is made. For more information on
restoring a backup, see `restore_backup`.

### Usage

    cloudhsmv2_delete_backup(BackupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsmv2_delete_backup_:_BackupId">BackupId</code></td>
<td><p>[required] The ID of the backup to be deleted. To find the ID of
a backup, use the <code>describe_backups</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Backup = list(
        BackupId = "string",
        BackupState = "CREATE_IN_PROGRESS"|"READY"|"DELETED"|"PENDING_DELETION",
        ClusterId = "string",
        CreateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        CopyTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        NeverExpires = TRUE|FALSE,
        SourceRegion = "string",
        SourceBackup = "string",
        SourceCluster = "string",
        DeleteTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_backup(
      BackupId = "string"
    )
