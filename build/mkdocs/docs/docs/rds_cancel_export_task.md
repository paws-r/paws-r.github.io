<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_cancel_export_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an export task in progress that is exporting a snapshot or cluster to Amazon S3

### Description

Cancels an export task in progress that is exporting a snapshot or
cluster to Amazon S3. Any data that has already been written to the S3
bucket isn't removed.

### Usage

    rds_cancel_export_task(ExportTaskIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_cancel_export_task_:_ExportTaskIdentifier">ExportTaskIdentifier</code></td>
<td><p>[required] The identifier of the snapshot or cluster export task
to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportTaskIdentifier = "string",
      SourceArn = "string",
      ExportOnly = list(
        "string"
      ),
      SnapshotTime = as.POSIXct(
        "2015-01-01"
      ),
      TaskStartTime = as.POSIXct(
        "2015-01-01"
      ),
      TaskEndTime = as.POSIXct(
        "2015-01-01"
      ),
      S3Bucket = "string",
      S3Prefix = "string",
      IamRoleArn = "string",
      KmsKeyId = "string",
      Status = "string",
      PercentProgress = 123,
      TotalExtractedDataInGB = 123,
      FailureCause = "string",
      WarningMessage = "string",
      SourceType = "SNAPSHOT"|"CLUSTER"
    )

### Request syntax

    svc$cancel_export_task(
      ExportTaskIdentifier = "string"
    )
