<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_modify_cluster_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the settings for a snapshot

### Description

Modifies the settings for a snapshot.

This exanmple modifies the manual retention period setting for a cluster
snapshot.

### Usage

    redshift_modify_cluster_snapshot(SnapshotIdentifier,
      ManualSnapshotRetentionPeriod, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_modify_cluster_snapshot_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>[required] The identifier of the snapshot whose setting you want
to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_modify_cluster_snapshot_:_ManualSnapshotRetentionPeriod">ManualSnapshotRetentionPeriod</code></td>
<td><p>The number of days that a manual snapshot is retained. If the
value is -1, the manual snapshot is retained indefinitely.</p>
<p>If the manual snapshot falls outside of the new retention period, you
can specify the force option to immediately delete the snapshot.</p>
<p>The value must be either -1 or an integer between 1 and
3,653.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_modify_cluster_snapshot_:_Force">Force</code></td>
<td><p>A Boolean option to override an exception if the retention period
has already passed.</p></td>
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

    svc$modify_cluster_snapshot(
      SnapshotIdentifier = "string",
      ManualSnapshotRetentionPeriod = 123,
      Force = TRUE|FALSE
    )
