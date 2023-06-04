<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_restore_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a specified AWS CloudHSM backup that is in the PENDING\_DELETION state

### Description

Restores a specified AWS CloudHSM backup that is in the
`PENDING_DELETION` state. For mor information on deleting a backup, see
`delete_backup`.

### Usage

    cloudhsmv2_restore_backup(BackupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="cloudhsmv2_restore_backup_:_BackupId">BackupId</code></td>
<td><p>[required] The ID of the backup to be restored. To find the ID of
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

    svc$restore_backup(
      BackupId = "string"
    )
