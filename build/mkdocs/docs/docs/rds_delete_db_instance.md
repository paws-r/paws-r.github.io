<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteDBInstance action deletes a previously provisioned DB instance

### Description

The DeleteDBInstance action deletes a previously provisioned DB
instance. When you delete a DB instance, all automated backups for that
instance are deleted and can't be recovered. Manual DB snapshots of the
DB instance to be deleted by `delete_db_instance` are not deleted.

If you request a final DB snapshot the status of the Amazon RDS DB
instance is `deleting` until the DB snapshot is created. The API action
`DescribeDBInstance` is used to monitor the status of this operation.
The action can't be canceled or reverted once submitted.

When a DB instance is in a failure state and has a status of `failed`,
`incompatible-restore`, or `incompatible-network`, you can only delete
it when you skip creation of the final snapshot with the
`SkipFinalSnapshot` parameter.

If the specified DB instance is part of an Amazon Aurora DB cluster, you
can't delete the DB instance if both of the following conditions are
true:

-   The DB cluster is a read replica of another Amazon Aurora DB
    cluster.

-   The DB instance is the only instance in the DB cluster.

To delete a DB instance in this case, first call the
`promote_read_replica_db_cluster` API action to promote the DB cluster
so it's no longer a read replica. After the promotion completes, then
call the `delete_db_instance` API action to delete the final instance in
the DB cluster.

### Usage

    rds_delete_db_instance(DBInstanceIdentifier, SkipFinalSnapshot,
      FinalDBSnapshotIdentifier, DeleteAutomatedBackups)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The DB instance identifier for the DB instance to be
deleted. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the name of an existing DB instance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_delete_db_instance_:_SkipFinalSnapshot">SkipFinalSnapshot</code></td>
<td><p>A value that indicates whether to skip the creation of a final DB
snapshot before deleting the instance. If you enable this parameter, RDS
doesn't create a DB snapshot. If you don't enable this parameter, RDS
creates a DB snapshot before the DB instance is deleted. By default,
skip isn't enabled, and the DB snapshot is created.</p>
<p>If you don't enable this parameter, you must specify the
<code>FinalDBSnapshotIdentifier</code> parameter.</p>
<p>When a DB instance is in a failure state and has a status of
<code>failed</code>, <code>incompatible-restore</code>, or
<code>incompatible-network</code>, RDS can delete the instance only if
you enable this parameter.</p>
<p>If you delete a read replica or an RDS Custom instance, you must
enable this setting.</p>
<p>This setting is required for RDS Custom.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_delete_db_instance_:_FinalDBSnapshotIdentifier">FinalDBSnapshotIdentifier</code></td>
<td><p>The <code>DBSnapshotIdentifier</code> of the new
<code>DBSnapshot</code> created when the <code>SkipFinalSnapshot</code>
parameter is disabled.</p>
<p>If you enable this parameter and also enable SkipFinalShapshot, the
command results in an error.</p>
<p>This setting doesn't apply to RDS Custom.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters or numbers.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Can't end with a hyphen or contain two consecutive
hyphens.</p></li>
<li><p>Can't be specified when deleting a read replica.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_delete_db_instance_:_DeleteAutomatedBackups">DeleteAutomatedBackups</code></td>
<td><p>A value that indicates whether to remove automated backups
immediately after the DB instance is deleted. This parameter isn't
case-sensitive. The default is to remove automated backups immediately
after the DB instance is deleted.</p></td>
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

    svc$delete_db_instance(
      DBInstanceIdentifier = "string",
      SkipFinalSnapshot = TRUE|FALSE,
      FinalDBSnapshotIdentifier = "string",
      DeleteAutomatedBackups = TRUE|FALSE
    )
