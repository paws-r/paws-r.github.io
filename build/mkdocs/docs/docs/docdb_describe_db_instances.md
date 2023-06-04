<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_db_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about provisioned Amazon DocumentDB instances

### Description

Returns information about provisioned Amazon DocumentDB instances. This
API supports pagination.

### Usage

    docdb_describe_db_instances(DBInstanceIdentifier, Filters, MaxRecords,
      Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_db_instances_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>The user-provided instance identifier. If this parameter is
specified, information from only the specific instance is returned. This
parameter isn't case sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If provided, must match the identifier of an existing
<code>DBInstance</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_db_instances_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more instances to describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-cluster-id</code> - Accepts cluster identifiers and
cluster Amazon Resource Names (ARNs). The results list includes only the
information about the instances that are associated with the clusters
that are identified by these ARNs.</p></li>
<li><p><code>db-instance-id</code> - Accepts instance identifiers and
instance ARNs. The results list includes only the information about the
instances that are identified by these ARNs.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_db_instances_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="docdb_describe_db_instances_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      DBInstances = list(
        list(
          DBInstanceIdentifier = "string",
          DBInstanceClass = "string",
          Engine = "string",
          DBInstanceStatus = "string",
          Endpoint = list(
            Address = "string",
            Port = 123,
            HostedZoneId = "string"
          ),
          InstanceCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          PreferredBackupWindow = "string",
          BackupRetentionPeriod = 123,
          VpcSecurityGroups = list(
            list(
              VpcSecurityGroupId = "string",
              Status = "string"
            )
          ),
          AvailabilityZone = "string",
          DBSubnetGroup = list(
            DBSubnetGroupName = "string",
            DBSubnetGroupDescription = "string",
            VpcId = "string",
            SubnetGroupStatus = "string",
            Subnets = list(
              list(
                SubnetIdentifier = "string",
                SubnetAvailabilityZone = list(
                  Name = "string"
                ),
                SubnetStatus = "string"
              )
            ),
            DBSubnetGroupArn = "string"
          ),
          PreferredMaintenanceWindow = "string",
          PendingModifiedValues = list(
            DBInstanceClass = "string",
            AllocatedStorage = 123,
            MasterUserPassword = "string",
            Port = 123,
            BackupRetentionPeriod = 123,
            MultiAZ = TRUE|FALSE,
            EngineVersion = "string",
            LicenseModel = "string",
            Iops = 123,
            DBInstanceIdentifier = "string",
            StorageType = "string",
            CACertificateIdentifier = "string",
            DBSubnetGroupName = "string",
            PendingCloudwatchLogsExports = list(
              LogTypesToEnable = list(
                "string"
              ),
              LogTypesToDisable = list(
                "string"
              )
            )
          ),
          LatestRestorableTime = as.POSIXct(
            "2015-01-01"
          ),
          EngineVersion = "string",
          AutoMinorVersionUpgrade = TRUE|FALSE,
          PubliclyAccessible = TRUE|FALSE,
          StatusInfos = list(
            list(
              StatusType = "string",
              Normal = TRUE|FALSE,
              Status = "string",
              Message = "string"
            )
          ),
          DBClusterIdentifier = "string",
          StorageEncrypted = TRUE|FALSE,
          KmsKeyId = "string",
          DbiResourceId = "string",
          CACertificateIdentifier = "string",
          CopyTagsToSnapshot = TRUE|FALSE,
          PromotionTier = 123,
          DBInstanceArn = "string",
          EnabledCloudwatchLogsExports = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_db_instances(
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
      Marker = "string"
    )
