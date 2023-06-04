<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_modify_backup_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies attributes for AWS CloudHSM backup

### Description

Modifies attributes for AWS CloudHSM backup.

### Usage

    cloudhsmv2_modify_backup_attributes(BackupId, NeverExpires)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_modify_backup_attributes_:_BackupId">BackupId</code></td>
<td><p>[required] The identifier (ID) of the backup to modify. To find
the ID of a backup, use the <code>describe_backups</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_modify_backup_attributes_:_NeverExpires">NeverExpires</code></td>
<td><p>[required] Specifies whether the service should exempt a backup
from the retention policy for the cluster. <code>True</code> exempts a
backup from the retention policy. <code>False</code> means the service
applies the backup retention policy defined at the cluster.</p></td>
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

    svc$modify_backup_attributes(
      BackupId = "string",
      NeverExpires = TRUE|FALSE
    )
