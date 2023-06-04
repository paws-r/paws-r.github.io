<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_create_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a backup for an existing table

### Description

Creates a backup for an existing table.

Each time you create an on-demand backup, the entire table data is
backed up. There is no limit to the number of on-demand backups that can
be taken.

When you create an on-demand backup, a time marker of the request is
cataloged, and the backup is created asynchronously, by applying all
changes until the time of the request to the last full table snapshot.
Backup requests are processed instantaneously and become available for
restore within minutes.

You can call `create_backup` at a maximum rate of 50 times per second.

All backups in DynamoDB work without consuming any provisioned
throughput on the table.

If you submit a backup request on 2018-12-14 at 14:25:00, the backup is
guaranteed to contain all data committed to the table up to 14:24:00,
and data committed after 14:26:00 will not be. The backup might contain
data modifications made between 14:24:00 and 14:26:00. On-demand backup
does not support causal consistency.

Along with data, the following are also included on the backups:

-   Global secondary indexes (GSIs)

-   Local secondary indexes (LSIs)

-   Streams

-   Provisioned read and write capacity

### Usage

    dynamodb_create_backup(TableName, BackupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="dynamodb_create_backup_:_TableName">TableName</code></td>
<td><p>[required] The name of the table.</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_create_backup_:_BackupName">BackupName</code></td>
<td><p>[required] Specified name for the backup.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BackupDetails = list(
        BackupArn = "string",
        BackupName = "string",
        BackupSizeBytes = 123,
        BackupStatus = "CREATING"|"DELETED"|"AVAILABLE",
        BackupType = "USER"|"SYSTEM"|"AWS_BACKUP",
        BackupCreationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        BackupExpiryDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_backup(
      TableName = "string",
      BackupName = "string"
    )
