<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a manual snapshot of the specified cluster

### Description

Creates a manual snapshot of the specified cluster. The cluster must be
in the `available` state.

For more information about working with snapshots, go to [Amazon
Redshift
Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_create_cluster_snapshot(SnapshotIdentifier, ClusterIdentifier,
      ManualSnapshotRetentionPeriod, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_cluster_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>[required] A unique identifier for the snapshot that you are
requesting. This identifier must be unique for all snapshots within the
Amazon Web Services account.</p>
<p>Constraints:</p>
<ul>
<li><p>Cannot be null, empty, or blank</p></li>
<li><p>Must contain from 1 to 255 alphanumeric characters or
hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-snapshot-id</code></p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_cluster_snapshot_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The cluster identifier for which you want a
snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_cluster_snapshot_:_ManualSnapshotRetentionPeriod">ManualSnapshotRetentionPeriod</code></td>
<td><p>The number of days that a manual snapshot is retained. If the
value is -1, the manual snapshot is retained indefinitely.</p>
<p>The value must be either -1 or an integer between 1 and 3,653.</p>
<p>The default value is -1.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_create_cluster_snapshot_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
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

    svc$create_cluster_snapshot(
      SnapshotIdentifier = "string",
      ClusterIdentifier = "string",
      ManualSnapshotRetentionPeriod = 123,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
