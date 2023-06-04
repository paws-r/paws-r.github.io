<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_delete_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a snapshot from Amazon Redshift Serverless

### Description

Deletes a snapshot from Amazon Redshift Serverless.

### Usage

    redshiftserverless_delete_snapshot(snapshotName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_delete_snapshot_:_snapshotName">snapshotName</code></td>
<td><p>[required] The name of the snapshot to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      snapshot = list(
        accountsWithProvisionedRestoreAccess = list(
          "string"
        ),
        accountsWithRestoreAccess = list(
          "string"
        ),
        actualIncrementalBackupSizeInMegaBytes = 123.0,
        adminUsername = "string",
        backupProgressInMegaBytes = 123.0,
        currentBackupRateInMegaBytesPerSecond = 123.0,
        elapsedTimeInSeconds = 123,
        estimatedSecondsToCompletion = 123,
        kmsKeyId = "string",
        namespaceArn = "string",
        namespaceName = "string",
        ownerAccount = "string",
        snapshotArn = "string",
        snapshotCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        snapshotName = "string",
        snapshotRemainingDays = 123,
        snapshotRetentionPeriod = 123,
        snapshotRetentionStartTime = as.POSIXct(
          "2015-01-01"
        ),
        status = "AVAILABLE"|"CREATING"|"DELETED"|"CANCELLED"|"FAILED"|"COPYING",
        totalBackupSizeInMegaBytes = 123.0
      )
    )

### Request syntax

    svc$delete_snapshot(
      snapshotName = "string"
    )
