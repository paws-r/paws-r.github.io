<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_stop_db_instance_automated_backups_replication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops automated backup replication for a DB instance

### Description

Stops automated backup replication for a DB instance.

This command doesn't apply to RDS Custom, Aurora MySQL, and Aurora
PostgreSQL.

For more information, see [Replicating Automated Backups to Another
Amazon Web Services
Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_stop_db_instance_automated_backups_replication(SourceDBInstanceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_stop_db_instance_automated_backups_replication_:_SourceDBInstanceArn">SourceDBInstanceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the source DB
instance for which to stop replicating automate backups, for example,
<code>arn:aws:rds:us-west-2:123456789012:db:mydatabase</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DBInstanceAutomatedBackup = list(
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

### Request syntax

    svc$stop_db_instance_automated_backups_replication(
      SourceDBInstanceArn = "string"
    )
