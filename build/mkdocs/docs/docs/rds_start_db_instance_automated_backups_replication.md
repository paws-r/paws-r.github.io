<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_start_db_instance_automated_backups_replication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables replication of automated backups to a different Amazon Web Services Region

### Description

Enables replication of automated backups to a different Amazon Web
Services Region.

This command doesn't apply to RDS Custom.

For more information, see [Replicating Automated Backups to Another
Amazon Web Services
Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_start_db_instance_automated_backups_replication(SourceDBInstanceArn,
      BackupRetentionPeriod, KmsKeyId, PreSignedUrl)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_start_db_instance_automated_backups_replication_:_SourceDBInstanceArn">SourceDBInstanceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the source DB
instance for the replicated automated backups, for example,
<code>arn:aws:rds:us-west-2:123456789012:db:mydatabase</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_start_db_instance_automated_backups_replication_:_BackupRetentionPeriod">BackupRetentionPeriod</code></td>
<td><p>The retention period for the replicated automated
backups.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_start_db_instance_automated_backups_replication_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The Amazon Web Services KMS key identifier for encryption of the
replicated automated backups. The KMS key ID is the Amazon Resource Name
(ARN) for the KMS encryption key in the destination Amazon Web Services
Region, for example,
<code>arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_start_db_instance_automated_backups_replication_:_PreSignedUrl">PreSignedUrl</code></td>
<td><p>In an Amazon Web Services GovCloud (US) Region, an URL that
contains a Signature Version 4 signed request for the
<code>start_db_instance_automated_backups_replication</code> operation
to call in the Amazon Web Services Region of the source DB instance. The
presigned URL must be a valid request for the
<code>start_db_instance_automated_backups_replication</code> API
operation that can run in the Amazon Web Services Region that contains
the source DB instance.</p>
<p>This setting applies only to Amazon Web Services GovCloud (US)
Regions. It's ignored in other Amazon Web Services Regions.</p>
<p>To learn how to generate a Signature Version 4 signed request, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html">Authenticating
Requests: Using Query Parameters (Amazon Web Services Signature Version
4)</a> and <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signature
Version 4 Signing Process</a>.</p>
<p>If you are using an Amazon Web Services SDK tool or the CLI, you can
specify <code>SourceRegion</code> (or <code>--source-region</code> for
the CLI) instead of specifying <code>PreSignedUrl</code> manually.
Specifying <code>SourceRegion</code> autogenerates a presigned URL that
is a valid request for the operation that can run in the source Amazon
Web Services Region.</p></td>
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

    svc$start_db_instance_automated_backups_replication(
      SourceDBInstanceArn = "string",
      BackupRetentionPeriod = 123,
      KmsKeyId = "string",
      PreSignedUrl = "string"
    )
