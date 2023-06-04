<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_db_instance_automated_backup</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes automated backups using the DbiResourceId value of the source DB instance or the Amazon Resource Name (ARN) of the automated backups

### Description

Deletes automated backups using the `DbiResourceId` value of the source
DB instance or the Amazon Resource Name (ARN) of the automated backups.

### Usage

    rds_delete_db_instance_automated_backup(DbiResourceId,
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
id="rds_delete_db_instance_automated_backup_:_DbiResourceId">DbiResourceId</code></td>
<td><p>The identifier for the source DB instance, which can't be changed
and which is unique to an Amazon Web Services Region.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_delete_db_instance_automated_backup_:_DBInstanceAutomatedBackupsArn">DBInstanceAutomatedBackupsArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the automated backups to
delete, for example,
<code>arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>
<p>This setting doesn't apply to RDS Custom.</p></td>
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

    svc$delete_db_instance_automated_backup(
      DbiResourceId = "string",
      DBInstanceAutomatedBackupsArn = "string"
    )
