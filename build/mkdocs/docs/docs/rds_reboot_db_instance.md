<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_reboot_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You might need to reboot your DB instance, usually for maintenance reasons

### Description

You might need to reboot your DB instance, usually for maintenance
reasons. For example, if you make certain modifications, or if you
change the DB parameter group associated with the DB instance, you must
reboot the instance for the changes to take effect.

Rebooting a DB instance restarts the database engine service. Rebooting
a DB instance results in a momentary outage, during which the DB
instance status is set to rebooting.

For more information about rebooting, see [Rebooting a DB
Instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_RebootInstance.html)
in the *Amazon RDS User Guide.*

This command doesn't apply to RDS Custom.

If your DB instance is part of a Multi-AZ DB cluster, you can reboot the
DB cluster with the `reboot_db_cluster` operation.

### Usage

    rds_reboot_db_instance(DBInstanceIdentifier, ForceFailover)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_reboot_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The DB instance identifier. This parameter is stored
as a lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing DBInstance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_reboot_db_instance_:_ForceFailover">ForceFailover</code></td>
<td><p>A value that indicates whether the reboot is conducted through a
Multi-AZ failover.</p>
<p>Constraint: You can't enable force failover if the instance isn't
configured for Multi-AZ.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBInstance = list(
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

### Request syntax

    svc$reboot_db_instance(
      DBInstanceIdentifier = "string",
      ForceFailover = TRUE|FALSE
    )
