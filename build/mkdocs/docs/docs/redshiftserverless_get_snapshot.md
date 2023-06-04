<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_get_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific snapshot

### Description

Returns information about a specific snapshot.

### Usage

    redshiftserverless_get_snapshot(ownerAccount, snapshotArn, snapshotName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_get_snapshot_:_ownerAccount">ownerAccount</code></td>
<td><p>The owner Amazon Web Services account of a snapshot shared with
another user.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_get_snapshot_:_snapshotArn">snapshotArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the snapshot to
return.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_get_snapshot_:_snapshotName">snapshotName</code></td>
<td><p>The name of the snapshot to return.</p></td>
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

    svc$get_snapshot(
      ownerAccount = "string",
      snapshotArn = "string",
      snapshotName = "string"
    )
