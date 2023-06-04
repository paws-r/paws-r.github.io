<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_describe_db_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about provisioned instances, and supports pagination

### Description

Returns information about provisioned instances, and supports
pagination.

This operation can also return information for Amazon RDS instances and
Amazon DocDB instances.

### Usage

    neptune_describe_db_instances(DBInstanceIdentifier, Filters, MaxRecords,
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
id="neptune_describe_db_instances_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>The user-supplied instance identifier. If this parameter is
specified, information from only the specific DB instance is returned.
This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the identifier of an existing
DBInstance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_describe_db_instances_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB instances to describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-cluster-id</code> - Accepts DB cluster identifiers and
DB cluster Amazon Resource Names (ARNs). The results list will only
include information about the DB instances associated with the DB
clusters identified by these ARNs.</p></li>
<li><p><code>engine</code> - Accepts an engine name (such as
<code>neptune</code>), and restricts the results list to DB instances
created by that engine.</p></li>
</ul>
<p>For example, to invoke this API from the Amazon CLI and filter so
that only Neptune DB instances are returned, you could use the following
command:</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_describe_db_instances_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="neptune_describe_db_instances_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous
<code>describe_db_instances</code> request. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
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
          MasterUsername = "string",
          DBName = "string",
          Endpoint = list(
            Address = "string",
            Port = 123,
            HostedZoneId = "string"
          ),
          AllocatedStorage = 123,
          InstanceCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          PreferredBackupWindow = "string",
          BackupRetentionPeriod = 123,
          DBSecurityGroups = list(
            list(
              DBSecurityGroupName = "string",
              Status = "string"
            )
          ),
          VpcSecurityGroups = list(
            list(
              VpcSecurityGroupId = "string",
              Status = "string"
            )
          ),
          DBParameterGroups = list(
            list(
              DBParameterGroupName = "string",
              ParameterApplyStatus = "string"
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
          MultiAZ = TRUE|FALSE,
          EngineVersion = "string",
          AutoMinorVersionUpgrade = TRUE|FALSE,
          ReadReplicaSourceDBInstanceIdentifier = "string",
          ReadReplicaDBInstanceIdentifiers = list(
            "string"
          ),
          ReadReplicaDBClusterIdentifiers = list(
            "string"
          ),
          LicenseModel = "string",
          Iops = 123,
          OptionGroupMemberships = list(
            list(
              OptionGroupName = "string",
              Status = "string"
            )
          ),
          CharacterSetName = "string",
          SecondaryAvailabilityZone = "string",
          PubliclyAccessible = TRUE|FALSE,
          StatusInfos = list(
            list(
              StatusType = "string",
              Normal = TRUE|FALSE,
              Status = "string",
              Message = "string"
            )
          ),
          StorageType = "string",
          TdeCredentialArn = "string",
          DbInstancePort = 123,
          DBClusterIdentifier = "string",
          StorageEncrypted = TRUE|FALSE,
          KmsKeyId = "string",
          DbiResourceId = "string",
          CACertificateIdentifier = "string",
          DomainMemberships = list(
            list(
              Domain = "string",
              Status = "string",
              FQDN = "string",
              IAMRoleName = "string"
            )
          ),
          CopyTagsToSnapshot = TRUE|FALSE,
          MonitoringInterval = 123,
          EnhancedMonitoringResourceArn = "string",
          MonitoringRoleArn = "string",
          PromotionTier = 123,
          DBInstanceArn = "string",
          Timezone = "string",
          IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
          PerformanceInsightsEnabled = TRUE|FALSE,
          PerformanceInsightsKMSKeyId = "string",
          EnabledCloudwatchLogsExports = list(
            "string"
          ),
          DeletionProtection = TRUE|FALSE
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
