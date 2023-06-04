<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_reboot_db_instance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You might need to reboot your instance, usually for maintenance reasons

### Description

You might need to reboot your instance, usually for maintenance reasons.
For example, if you make certain changes, or if you change the cluster
parameter group that is associated with the instance, you must reboot
the instance for the changes to take effect.

Rebooting an instance restarts the database engine service. Rebooting an
instance results in a momentary outage, during which the instance status
is set to *rebooting*.

### Usage

    docdb_reboot_db_instance(DBInstanceIdentifier, ForceFailover)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_reboot_db_instance_:_DBInstanceIdentifier">DBInstanceIdentifier</code></td>
<td><p>[required] The instance identifier. This parameter is stored as a
lowercase string.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing
<code>DBInstance</code>.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_reboot_db_instance_:_ForceFailover">ForceFailover</code></td>
<td><p>When <code>true</code>, the reboot is conducted through a
Multi-AZ failover.</p>
<p>Constraint: You can't specify <code>true</code> if the instance is
not configured for Multi-AZ.</p></td>
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

### Request syntax

    svc$reboot_db_instance(
      DBInstanceIdentifier = "string",
      ForceFailover = TRUE|FALSE
    )
