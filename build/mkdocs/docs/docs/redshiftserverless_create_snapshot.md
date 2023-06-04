<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_create_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot of all databases in a namespace

### Description

Creates a snapshot of all databases in a namespace. For more information
about snapshots, see [Working with snapshots and recovery
points](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html).

### Usage

    redshiftserverless_create_snapshot(namespaceName, retentionPeriod,
      snapshotName, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_create_snapshot_:_namespaceName">namespaceName</code></td>
<td><p>[required] The namespace to create a snapshot for.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_snapshot_:_retentionPeriod">retentionPeriod</code></td>
<td><p>How long to retain the created snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_create_snapshot_:_snapshotName">snapshotName</code></td>
<td><p>[required] The name of the snapshot.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_create_snapshot_:_tags">tags</code></td>
<td><p>An array of <a
href="https://docs.aws.amazon.com/redshift-serverless/latest/APIReference/API_Tag.html">Tag
objects</a> to associate with the snapshot.</p></td>
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

    svc$create_snapshot(
      namespaceName = "string",
      retentionPeriod = 123,
      snapshotName = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
