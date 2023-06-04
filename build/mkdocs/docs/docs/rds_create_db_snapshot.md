<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_db_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot of a DB instance

### Description

Creates a snapshot of a DB instance. The source DB instance must be in
the `available` or `storage-optimization` state.

### Usage

    rds_create_db_snapshot(DBSnapshotIdentifier, DBInstanceIdentifier, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_create_db_snapshot_:_DBSnapshotIdentifier">DBSnapshotIdentifier</code></td>
<td><p>[required] The identifier for the DB snapshot.</p>
<p>Constraints:</p>
<ul>
<li><p>Can't be null, empty, or blank</p></li>
<li><p>Must contain from 1 to 255 letters, numbers, or hyphens</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens</p></li>
</ul>
<p>Example: <code>my-snapshot-id</code></p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_db_snapshot_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The identifier of the DB instance that you want to
create the snapshot of.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBInstance.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="rds_create_db_snapshot_:_Tags">Tags</code></td>
<td></td>
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

    svc$create_db_snapshot(
      DBSnapshotIdentifier = "string",
      DBInstanceIdentifier = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
