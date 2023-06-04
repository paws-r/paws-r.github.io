<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_delete_db_instance</td>
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

If you request a final DB snapshot the status of the Amazon Neptune DB
instance is `deleting` until the DB snapshot is created. The API action
`DescribeDBInstance` is used to monitor the status of this operation.
The action can't be canceled or reverted once submitted.

Note that when a DB instance is in a failure state and has a status of
`failed`, `incompatible-restore`, or `incompatible-network`, you can
only delete it when the `SkipFinalSnapshot` parameter is set to `true`.

You can't delete a DB instance if it is the only instance in the DB
cluster, or if it has deletion protection enabled.

### Usage

    neptune_delete_db_instance(DBInstanceIdentifier, SkipFinalSnapshot,
      FinalDBSnapshotIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_delete_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The DB instance identifier for the DB instance to be
deleted. This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the name of an existing DB instance.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="neptune_delete_db_instance_:_SkipFinalSnapshot">SkipFinalSnapshot</code></td>
<td><p>Determines whether a final DB snapshot is created before the DB
instance is deleted. If <code>true</code> is specified, no DBSnapshot is
created. If <code>false</code> is specified, a DB snapshot is created
before the DB instance is deleted.</p>
<p>Note that when a DB instance is in a failure state and has a status
of 'failed', 'incompatible-restore', or 'incompatible-network', it can
only be deleted when the SkipFinalSnapshot parameter is set to
"true".</p>
<p>Specify <code>true</code> when deleting a Read Replica.</p>
<p>The FinalDBSnapshotIdentifier parameter must be specified if
SkipFinalSnapshot is <code>false</code>.</p>
<p>Default: <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_delete_db_instance_:_FinalDBSnapshotIdentifier">FinalDBSnapshotIdentifier</code></td>
<td><p>The DBSnapshotIdentifier of the new DBSnapshot created when
SkipFinalSnapshot is set to <code>false</code>.</p>
<p>Specifying this parameter and also setting the SkipFinalShapshot
parameter to true results in an error.</p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 letters or numbers.</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
<li><p>Cannot be specified when deleting a Read Replica.</p></li>
</ul></td>
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

### Request syntax

    svc$delete_db_instance(
      DBInstanceIdentifier = "string",
      SkipFinalSnapshot = TRUE|FALSE,
      FinalDBSnapshotIdentifier = "string"
    )
