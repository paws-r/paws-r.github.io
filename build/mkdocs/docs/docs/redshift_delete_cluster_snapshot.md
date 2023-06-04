<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified manual snapshot

### Description

Deletes the specified manual snapshot. The snapshot must be in the
`available` state, with no other users authorized to access the
snapshot.

Unlike automated snapshots, manual snapshots are retained even after you
delete your cluster. Amazon Redshift does not delete your manual
snapshots. You must delete manual snapshot explicitly to avoid getting
charged. If other accounts are authorized to access the snapshot, you
must revoke all of the authorizations before you can delete the
snapshot.

### Usage

    redshift_delete_cluster_snapshot(SnapshotIdentifier,
      SnapshotClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_cluster_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>[required] The unique identifier of the manual snapshot to be
deleted.</p>
<p>Constraints: Must be the name of an existing snapshot that is in the
<code>available</code>, <code>failed</code>, or <code>cancelled</code>
state.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_delete_cluster_snapshot_:_SnapshotClusterIdentifier">SnapshotClusterIdentifier</code></td>
<td><p>The unique identifier of the cluster the snapshot was created
from. This parameter is required if your IAM user or role has a policy
containing a snapshot resource element that specifies anything other
than * for the cluster name.</p>
<p>Constraints: Must be the name of valid cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Snapshot = list(
        SnapshotIdentifier = "string",
        ClusterIdentifier = "string",
        SnapshotCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        Status = "string",
        Port = 123,
        AvailabilityZone = "string",
        ClusterCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        MasterUsername = "string",
        ClusterVersion = "string",
        EngineFullVersion = "string",
        SnapshotType = "string",
        NodeType = "string",
        NumberOfNodes = 123,
        DBName = "string",
        VpcId = "string",
        Encrypted = TRUE|FALSE,
        KmsKeyId = "string",
        EncryptedWithHSM = TRUE|FALSE,
        AccountsWithRestoreAccess = list(
          list(
            AccountId = "string",
            AccountAlias = "string"
          )
        ),
        OwnerAccount = "string",
        TotalBackupSizeInMegaBytes = 123.0,
        ActualIncrementalBackupSizeInMegaBytes = 123.0,
        BackupProgressInMegaBytes = 123.0,
        CurrentBackupRateInMegaBytesPerSecond = 123.0,
        EstimatedSecondsToCompletion = 123,
        ElapsedTimeInSeconds = 123,
        SourceRegion = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        RestorableNodeTypes = list(
          "string"
        ),
        EnhancedVpcRouting = TRUE|FALSE,
        MaintenanceTrackName = "string",
        ManualSnapshotRetentionPeriod = 123,
        ManualSnapshotRemainingDays = 123,
        SnapshotRetentionStartTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_cluster_snapshot(
      SnapshotIdentifier = "string",
      SnapshotClusterIdentifier = "string"
    )
