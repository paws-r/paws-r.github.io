<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_describe_db_instances</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about provisioned RDS instances

### Description

Returns information about provisioned RDS instances. This API supports
pagination.

This operation can also return information for Amazon Neptune DB
instances and Amazon DocumentDB instances.

### Usage

    rds_describe_db_instances(DBInstanceIdentifier, Filters, MaxRecords,
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
id="rds_describe_db_instances_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>The user-supplied instance identifier or the Amazon Resource Name
(ARN) of the DB instance. If this parameter is specified, information
from only the specific DB instance is returned. This parameter isn't
case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>If supplied, must match the identifier of an existing
DBInstance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_instances_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more DB instances to describe.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-cluster-id</code> - Accepts DB cluster identifiers and
DB cluster Amazon Resource Names (ARNs). The results list only includes
information about the DB instances associated with the DB clusters
identified by these ARNs.</p></li>
<li><p><code>db-instance-id</code> - Accepts DB instance identifiers and
DB instance Amazon Resource Names (ARNs). The results list only includes
information about the DB instances identified by these ARNs.</p></li>
<li><p><code>dbi-resource-id</code> - Accepts DB instance resource
identifiers. The results list will only include information about the DB
instances identified by these DB instance resource identifiers.</p></li>
<li><p><code>domain</code> - Accepts Active Directory directory IDs. The
results list only includes information about the DB instances associated
with these domains.</p></li>
<li><p><code>engine</code> - Accepts engine names. The results list only
includes information about the DB instances for these engines.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="rds_describe_db_instances_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token called a marker is included in the response so that you
can retrieve the remaining results.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
<tr class="even">
<td><code id="rds_describe_db_instances_:_Marker">Marker</code></td>
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
          AutomaticRestartTime = as.POSIXct(
            "2015-01-01"
          ),
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
                SubnetOutpost = list(
                  Arn = "string"
                ),
                SubnetStatus = "string"
              )
            ),
            DBSubnetGroupArn = "string",
            SupportedNetworkTypes = list(
              "string"
            )
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
            ),
            ProcessorFeatures = list(
              list(
                Name = "string",
                Value = "string"
              )
            ),
            IAMDatabaseAuthenticationEnabled = TRUE|FALSE,
            AutomationMode = "full"|"all-paused",
            ResumeFullAutomationModeTime = as.POSIXct(
              "2015-01-01"
            ),
            StorageThroughput = 123
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
          ReplicaMode = "open-read-only"|"mounted",
          LicenseModel = "string",
          Iops = 123,
          OptionGroupMemberships = list(
            list(
              OptionGroupName = "string",
              Status = "string"
            )
          ),
          CharacterSetName = "string",
          NcharCharacterSetName = "string",
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
          PerformanceInsightsRetentionPeriod = 123,
          EnabledCloudwatchLogsExports = list(
            "string"
          ),
          ProcessorFeatures = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          DeletionProtection = TRUE|FALSE,
          AssociatedRoles = list(
            list(
              RoleArn = "string",
              FeatureName = "string",
              Status = "string"
            )
          ),
          ListenerEndpoint = list(
            Address = "string",
            Port = 123,
            HostedZoneId = "string"
          ),
          MaxAllocatedStorage = 123,
          TagList = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          DBInstanceAutomatedBackupsReplications = list(
            list(
              DBInstanceAutomatedBackupsArn = "string"
            )
          ),
          CustomerOwnedIpEnabled = TRUE|FALSE,
          AwsBackupRecoveryPointArn = "string",
          ActivityStreamStatus = "stopped"|"starting"|"started"|"stopping",
          ActivityStreamKmsKeyId = "string",
          ActivityStreamKinesisStreamName = "string",
          ActivityStreamMode = "sync"|"async",
          ActivityStreamEngineNativeAuditFieldsIncluded = TRUE|FALSE,
          AutomationMode = "full"|"all-paused",
          ResumeFullAutomationModeTime = as.POSIXct(
            "2015-01-01"
          ),
          CustomIamInstanceProfile = "string",
          BackupTarget = "string",
          NetworkType = "string",
          ActivityStreamPolicyStatus = "locked"|"unlocked"|"locking-policy"|"unlocking-policy",
          StorageThroughput = 123,
          DBSystemId = "string",
          MasterUserSecret = list(
            SecretArn = "string",
            SecretStatus = "string",
            KmsKeyId = "string"
          ),
          CertificateDetails = list(
            CAIdentifier = "string",
            ValidTill = as.POSIXct(
              "2015-01-01"
            )
          ),
          ReadReplicaSourceDBClusterIdentifier = "string"
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
