<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_snapshots</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about DB snapshots

### Description

Returns information about DB snapshots. This API action supports
pagination.

### Usage

    rds_describe_db_snapshots(DBInstanceIdentifier, DBSnapshotIdentifier,
      SnapshotType, Filters, MaxRecords, Marker, IncludeShared, IncludePublic,
      DbiResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_snapshots_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>The ID of the DB instance to retrieve the list of DB snapshots
for. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the identifier of an existing
DBInstance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_snapshots_:_DBSnapshotIdentifier">DBSnapshotIdentifier</code></td>
<td><p>A specific DB snapshot identifier to describe. This value is
stored as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the identifier of an existing
DBSnapshot.</p></li>
<li><p>If this identifier is for an automated snapshot, the
<code>SnapshotType</code> parameter must also be specified.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_snapshots_:_SnapshotType">SnapshotType</code></td>
<td><p>The type of snapshots to be returned. You can specify one of the
following values:</p>
<ul>
<li><p><code>automated</code> - Return all DB snapshots that have been
automatically taken by Amazon RDS for my Amazon Web Services
account.</p></li>
<li><p><code>manual</code> - Return all DB snapshots that have been
taken by my Amazon Web Services account.</p></li>
<li><p><code>shared</code> - Return all manual DB snapshots that have
been shared to my Amazon Web Services account.</p></li>
<li><p><code>public</code> - Return all DB snapshots that have been
marked as public.</p></li>
<li><p><code>awsbackup</code> - Return the DB snapshots managed by the
Amazon Web Services Backup service.</p>
<p>For information about Amazon Web Services Backup, see the <a
href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html"><em>Amazon
Web Services Backup Developer Guide.</em></a></p>
<p>The <code>awsbackup</code> type does not apply to Aurora.</p></li>
</ul>
<p>If you don't specify a <code>SnapshotType</code> value, then both
automated and manual snapshots are returned. Shared and public DB
snapshots are not included in the returned results by default. You can
include shared snapshots with these results by enabling the
<code>IncludeShared</code> parameter. You can include public snapshots
with these results by enabling the <code>IncludePublic</code>
parameter.</p>
<p>The <code>IncludeShared</code> and <code>IncludePublic</code>
parameters don't apply for <code>SnapshotType</code> values of
<code>manual</code> or <code>automated</code>. The
<code>IncludePublic</code> parameter doesn't apply when
<code>SnapshotType</code> is set to <code>shared</code>. The
<code>IncludeShared</code> parameter doesn't apply when
<code>SnapshotType</code> is set to <code>public</code>.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_snapshots_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB snapshots to describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-instance-id</code> - Accepts DB instance identifiers and
DB instance Amazon Resource Names (ARNs).</p></li>
<li><p><code>db-snapshot-id</code> - Accepts DB snapshot
identifiers.</p></li>
<li><p><code>dbi-resource-id</code> - Accepts identifiers of source DB
instances.</p></li>
<li><p><code>snapshot-type</code> - Accepts types of DB
snapshots.</p></li>
<li><p><code>engine</code> - Accepts names of database engines.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_snapshots_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_snapshots_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_snapshots</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_snapshots_:_IncludeShared">IncludeShared</code></td>
<td><p>A value that indicates whether to include shared manual DB
cluster snapshots from other Amazon Web Services accounts that this
Amazon Web Services account has been given permission to copy or
restore. By default, these snapshots are not included.</p>
<p>You can give an Amazon Web Services account permission to restore a
manual DB snapshot from another Amazon Web Services account by using the
<code>modify_db_snapshot_attribute</code> API action.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_snapshots_:_IncludePublic">IncludePublic</code></td>
<td><p>A value that indicates whether to include manual DB cluster
snapshots that are public and can be copied or restored by any Amazon
Web Services account. By default, the public snapshots are not
included.</p>
<p>You can share a manual DB snapshot as public by using the
<code>modify_db_snapshot_attribute</code> API.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_snapshots_:_DbiResourceId">DbiResourceId</code></td>
<td><p>A specific DB resource ID to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBSnapshots = list(
        list(
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
    )

### Request syntax

    svc$describe_db_snapshots(
      DBInstanceIdentifier = "string",
      DBSnapshotIdentifier = "string",
      SnapshotType = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxRecords = 123,
      Marker = "string",
      IncludeShared = TRUE|FALSE,
      IncludePublic = TRUE|FALSE,
      DbiResourceId = "string"
    )
