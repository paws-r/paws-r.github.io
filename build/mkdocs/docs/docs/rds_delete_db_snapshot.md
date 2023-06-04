<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a DB snapshot

### Description

Deletes a DB snapshot. If the snapshot is being copied, the copy
operation is terminated.

The DB snapshot must be in the `available` state to be deleted.

### Usage

    rds_delete_db_snapshot(DBSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_snapshot_:_DBSnapshotIdentifier">DBSnapshotIdentifier</code></td>
<td><p>[required] The DB snapshot identifier.</p>
<p>Constraints: Must be the name of an existing DB snapshot in the
<code>available</code> state.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBSnapshot = list(
        DBSnapshotIdentifier = "string",
        DBInstanceIdentifier = "string",
        SnapshotCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        Engine = "string",
        AllocatedStorage = 123,
        Status = "string",
        Port = 123,
        AvailabilityZone = "string",
        VpcId = "string",
        InstanceCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        MasterUsername = "string",
        EngineVersion = "string",
        LicenseModel = "string",
        SnapshotType = "string",
        Iops = 123,
        OptionGroupName = "string",
        PercentProgress = 123,
        SourceRegion = "string",
        SourceDBSnapshotIdentifier = "string",
        StorageType = "string",
        TdeCredentialArn = "string",
        Encrypted = TRUE|FALSE,
        KmsKeyId = "string",
        DBSnapshotArn = "string",
        Timezone = "string",
        IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
        ProcessorFeatures = list(
          list(
            Name = "string",
            Value = "string"
          )
        ),
        DbiResourceId = "string",
        TagList = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        OriginalSnapshotCreateTime = as.POSIXct(
          "2015-01-01"
        ),
        SnapshotDatabaseTime = as.POSIXct(
          "2015-01-01"
        ),
        SnapshotTarget = "string",
        StorageThroughput = 123
      )
    )

### Request syntax

    svc$delete_db_snapshot(
      DBSnapshotIdentifier = "string"
    )
