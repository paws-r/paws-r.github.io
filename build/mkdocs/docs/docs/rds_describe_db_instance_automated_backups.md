<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_instance_automated_backups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays backups for both current and deleted instances

### Description

Displays backups for both current and deleted instances. For example,
use this operation to find details about automated backups for
previously deleted instances. Current instances with retention periods
greater than zero (0) are returned for both the
`describe_db_instance_automated_backups` and `describe_db_instances`
operations.

All parameters are optional.

### Usage

    rds_describe_db_instance_automated_backups(DbiResourceId,
      DBInstanceIdentifier, Filters, MaxRecords, Marker,
      DBInstanceAutomatedBackupsArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_describe_db_instance_automated_backups_:_DbiResourceId">DbiResourceId</code></td>
<td><p>The resource ID of the DB instance that is the source of the
automated backup. This parameter isn't case-sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_instance_automated_backups_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>(Optional) The user-supplied instance identifier. If this
parameter is specified, it must match the identifier of an existing DB
instance. It returns information from the specific DB instance'
automated backup. This parameter isn't case-sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_instance_automated_backups_:_Filters">Filters</code></td>
<td><p>A filter that specifies which resources to return based on
status.</p>
<p>Supported filters are the following:</p>
<ul>
<li><p><code>status</code></p>
<ul>
<li><p><code>active</code> - automated backups for current
instances</p></li>
<li><p><code>retained</code> - automated backups for deleted instances
and after backup replication is stopped</p></li>
<li><p><code>creating</code> - automated backups that are waiting for
the first automated snapshot to be available</p></li>
</ul></li>
<li><p><code>db-instance-id</code> - Accepts DB instance identifiers and
Amazon Resource Names (ARNs). The results list includes only information
about the DB instance automated backups identified by these
ARNs.</p></li>
<li><p><code>dbi-resource-id</code> - Accepts DB resource identifiers
and Amazon Resource Names (ARNs). The results list includes only
information about the DB instance resources identified by these
ARNs.</p></li>
</ul>
<p>Returns all resources by default. The status for each resource is
specified in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_instance_automated_backups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_instance_automated_backups_:_Marker">Marker</code></td>
<td><p>The pagination token provided in the previous request. If this
parameter is specified the response includes only records beyond the
marker, up to <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_describe_db_instance_automated_backups_:_DBInstanceAutomatedBackupsArn">DBInstanceAutomatedBackupsArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the replicated automated
backups, for example,
<code>arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBInstanceAutomatedBackups = list(
        list(
          DBInstanceArn = "string",
          DbiResourceId = "string",
          Region = "string",
          DBInstanceIdentifier = "string",
          RestoreWindow = list(
            EarliestTime = as.POSIXct(
              "2015-01-01"
            ),
            LatestTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          AllocatedStorage = 123,
          Status = "string",
          Port = 123,
          AvailabilityZone = "string",
          VpcId = "string",
          InstanceCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          MasterUsername = "string",
          Engine = "string",
          EngineVersion = "string",
          LicenseModel = "string",
          Iops = 123,
          OptionGroupName = "string",
          TdeCredentialArn = "string",
          Encrypted = TRUE|FALSE,
          StorageType = "string",
          KmsKeyId = "string",
          Timezone = "string",
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          BackupRetentionPeriod = 123,
          DBInstanceAutomatedBackupsArn = "string",
          DBInstanceAutomatedBackupsReplications = list(
            list(
              DBInstanceAutomatedBackupsArn = "string"
            )
          ),
          BackupTarget = "string",
          StorageThroughput = 123
        )
      )
    )

### Request syntax

    svc$describe_db_instance_automated_backups(
      DbiResourceId = "string",
      DBInstanceIdentifier = "string",
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
      DBInstanceAutomatedBackupsArn = "string"
    )
