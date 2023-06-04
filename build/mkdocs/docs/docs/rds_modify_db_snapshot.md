<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_modify_db_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a manual DB snapshot with a new engine version

### Description

Updates a manual DB snapshot with a new engine version. The snapshot can
be encrypted or unencrypted, but not shared or public.

Amazon RDS supports upgrading DB snapshots for MySQL, PostgreSQL, and
Oracle. This command doesn't apply to RDS Custom.

### Usage

    rds_modify_db_snapshot(DBSnapshotIdentifier, EngineVersion,
      OptionGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_modify_db_snapshot_:_DBSnapshotIdentifier">DBSnapshotIdentifier</code></td>
<td><p>[required] The identifier of the DB snapshot to modify.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_modify_db_snapshot_:_EngineVersion">EngineVersion</code></td>
<td><p>The engine version to upgrade the DB snapshot to.</p>
<p>The following are the database engines and engine versions that are
available when you upgrade a DB snapshot.</p>
<p><strong>MySQL</strong></p>
<ul>
<li><p><code style="white-space: pre;">⁠5.5.46⁠</code> (supported for 5.1
DB snapshots)</p></li>
</ul>
<p><strong>Oracle</strong></p>
<ul>
<li><p><code
style="white-space: pre;">⁠19.0.0.0.ru-2022-01.rur-2022-01.r1⁠</code>
(supported for 12.2.0.1 DB snapshots)</p></li>
<li><p><code
style="white-space: pre;">⁠19.0.0.0.ru-2022-07.rur-2022-07.r1⁠</code>
(supported for 12.1.0.2 DB snapshots)</p></li>
<li><p><code style="white-space: pre;">⁠12.1.0.2.v8⁠</code> (supported for
12.1.0.1 DB snapshots)</p></li>
<li><p><code style="white-space: pre;">⁠11.2.0.4.v12⁠</code> (supported
for 11.2.0.2 DB snapshots)</p></li>
<li><p><code style="white-space: pre;">⁠11.2.0.4.v11⁠</code> (supported
for 11.2.0.3 DB snapshots)</p></li>
</ul>
<p><strong>PostgreSQL</strong></p>
<p>For the list of engine versions that are available for upgrading a DB
snapshot, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.PostgreSQL.html#USER_UpgradeDBInstance.PostgreSQL.MajorVersion">Upgrading
the PostgreSQL DB Engine for Amazon RDS</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_modify_db_snapshot_:_OptionGroupName">OptionGroupName</code></td>
<td><p>The option group to identify with the upgraded DB snapshot.</p>
<p>You can specify this parameter when you upgrade an Oracle DB
snapshot. The same option group considerations apply when upgrading a DB
snapshot as when upgrading a DB instance. For more information, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG">Option
group considerations</a> in the <em>Amazon RDS User Guide.</em></p></td>
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

    svc$modify_db_snapshot(
      DBSnapshotIdentifier = "string",
      EngineVersion = "string",
      OptionGroupName = "string"
    )
