<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_copy_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Copies the specified automated cluster snapshot to a new manual cluster snapshot

### Description

Copies the specified automated cluster snapshot to a new manual cluster
snapshot. The source must be an automated snapshot and it must be in the
available state.

When you delete a cluster, Amazon Redshift deletes any automated
snapshots of the cluster. Also, when the retention period of the
snapshot expires, Amazon Redshift automatically deletes it. If you want
to keep an automated snapshot for a longer period, you can make a manual
copy of the snapshot. Manual snapshots are retained until you delete
them.

For more information about working with snapshots, go to [Amazon
Redshift
Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_copy_cluster_snapshot(SourceSnapshotIdentifier,
      SourceSnapshotClusterIdentifier, TargetSnapshotIdentifier,
      ManualSnapshotRetentionPeriod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_copy_cluster_snapshot_:_SourceSnapshotIdentifier">SourceSnapshotIdentifier</code></td>
<td><p>[required] The identifier for the source snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the identifier for a valid automated snapshot whose state
is <code>available</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_copy_cluster_snapshot_:_SourceSnapshotClusterIdentifier">SourceSnapshotClusterIdentifier</code></td>
<td><p>The identifier of the cluster the source snapshot was created
from. This parameter is required if your IAM user or role has a policy
containing a snapshot resource element that specifies anything other
than * for the cluster name.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be the identifier for a valid cluster.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="redshift_copy_cluster_snapshot_:_TargetSnapshotIdentifier">TargetSnapshotIdentifier</code></td>
<td><p>[required] The identifier given to the new manual snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>Cannot be null, empty, or blank.</p></li>
<li><p>Must contain from 1 to 255 alphanumeric characters or
hyphens.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
<li><p>Must be unique for the Amazon Web Services account that is making
the request.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_copy_cluster_snapshot_:_ManualSnapshotRetentionPeriod">ManualSnapshotRetentionPeriod</code></td>
<td><p>The number of days that a manual snapshot is retained. If the
value is -1, the manual snapshot is retained indefinitely.</p>
<p>The value must be either -1 or an integer between 1 and 3,653.</p>
<p>The default value is -1.</p></td>
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

    svc$copy_cluster_snapshot(
      SourceSnapshotIdentifier = "string",
      SourceSnapshotClusterIdentifier = "string",
      TargetSnapshotIdentifier = "string",
      ManualSnapshotRetentionPeriod = 123
    )
