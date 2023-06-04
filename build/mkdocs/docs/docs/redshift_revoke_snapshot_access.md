<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_revoke_snapshot_access</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the ability of the specified Amazon Web Services account to restore the specified snapshot

### Description

Removes the ability of the specified Amazon Web Services account to
restore the specified snapshot. If the account is currently restoring
the snapshot, the restore will run to completion.

For more information about working with snapshots, go to [Amazon
Redshift
Snapshots](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_revoke_snapshot_access(SnapshotIdentifier, SnapshotArn,
      SnapshotClusterIdentifier, AccountWithRestoreAccess)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_revoke_snapshot_access_:_SnapshotIdentifier">SnapshotIdentifier</code></td>
<td><p>The identifier of the snapshot that the account can no longer
access.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_revoke_snapshot_access_:_SnapshotArn">SnapshotArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the snapshot associated with
the message to revoke access.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_revoke_snapshot_access_:_SnapshotClusterIdentifier">SnapshotClusterIdentifier</code></td>
<td><p>The identifier of the cluster the snapshot was created from. This
parameter is required if your IAM user or role has a policy containing a
snapshot resource element that specifies anything other than * for the
cluster name.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_revoke_snapshot_access_:_AccountWithRestoreAccess">AccountWithRestoreAccess</code></td>
<td><p>[required] The identifier of the Amazon Web Services account that
can no longer restore the specified snapshot.</p></td>
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

    svc$revoke_snapshot_access(
      SnapshotIdentifier = "string",
      SnapshotArn = "string",
      SnapshotClusterIdentifier = "string",
      AccountWithRestoreAccess = "string"
    )
