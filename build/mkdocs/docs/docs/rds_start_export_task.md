<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_start_export_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an export of DB snapshot or DB cluster data to Amazon S3

### Description

Starts an export of DB snapshot or DB cluster data to Amazon S3. The
provided IAM role must have access to the S3 bucket.

You can't export snapshot data from RDS Custom DB instances.

You can't export cluster data from Multi-AZ DB clusters.

For more information on exporting DB snapshot data, see [Exporting DB
snapshot data to Amazon
S3](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ExportSnapshot.html)
in the *Amazon RDS User Guide* or [Exporting DB cluster snapshot data to
Amazon
S3](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-export-snapshot.html)
in the *Amazon Aurora User Guide*.

For more information on exporting DB cluster data, see [Exporting DB
cluster data to Amazon
S3](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/export-cluster-data.html)
in the *Amazon Aurora User Guide*.

### Usage

    rds_start_export_task(ExportTaskIdentifier, SourceArn, S3BucketName,
      IamRoleArn, KmsKeyId, S3Prefix, ExportOnly)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_start_export_task_:_ExportTaskIdentifier">ExportTaskIdentifier</code></td>
<td><p>[required] A unique identifier for the export task. This ID isn't
an identifier for the Amazon S3 bucket where the data is to be
exported.</p></td>
</tr>
<tr class="even">
<td><code id="rds_start_export_task_:_SourceArn">SourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the snapshot or
cluster to export to Amazon S3.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_start_export_task_:_S3BucketName">S3BucketName</code></td>
<td><p>[required] The name of the Amazon S3 bucket to export the
snapshot or cluster data to.</p></td>
</tr>
<tr class="even">
<td><code id="rds_start_export_task_:_IamRoleArn">IamRoleArn</code></td>
<td><p>[required] The name of the IAM role to use for writing to the
Amazon S3 bucket when exporting a snapshot or cluster.</p>
<p>In the IAM policy attached to your IAM role, include the following
required actions to allow the transfer of files from Amazon RDS or
Amazon Aurora to an S3 bucket:</p>
<ul>
<li><p>s3:PutObject*</p></li>
<li><p>s3:GetObject*</p></li>
<li><p>s3:ListBucket</p></li>
<li><p>s3:DeleteObject*</p></li>
<li><p>s3:GetBucketLocation</p></li>
</ul>
<p>In the policy, include the resources to identify the S3 bucket and
objects in the bucket. The following list of resources shows the Amazon
Resource Name (ARN) format for accessing S3:</p>
<ul>
<li><p><code>arn:aws:s3:::your-s3-bucket </code></p></li>
<li><p><code
style="white-space: pre;">⁠arn:aws:s3:::your-s3-bucket/*⁠</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="rds_start_export_task_:_KmsKeyId">KmsKeyId</code></td>
<td><p>[required] The ID of the Amazon Web Services KMS key to use to
encrypt the data exported to Amazon S3. The Amazon Web Services KMS key
identifier is the key ARN, key ID, alias ARN, or alias name for the KMS
key. The caller of this operation must be authorized to run the
following operations. These can be set in the Amazon Web Services KMS
key policy:</p>
<ul>
<li><p>kms:Encrypt</p></li>
<li><p>kms:Decrypt</p></li>
<li><p>kms:GenerateDataKey</p></li>
<li><p>kms:GenerateDataKeyWithoutPlaintext</p></li>
<li><p>kms:ReEncryptFrom</p></li>
<li><p>kms:ReEncryptTo</p></li>
<li><p>kms:CreateGrant</p></li>
<li><p>kms:DescribeKey</p></li>
<li><p>kms:RetireGrant</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="rds_start_export_task_:_S3Prefix">S3Prefix</code></td>
<td><p>The Amazon S3 bucket prefix to use as the file name and path of
the exported data.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_start_export_task_:_ExportOnly">ExportOnly</code></td>
<td><p>The data to be exported from the snapshot or cluster. If this
parameter is not provided, all of the data is exported. Valid values are
the following:</p>
<ul>
<li><p><code>database</code> - Export all the data from a specified
database.</p></li>
<li><p><code>database.table</code> <em>table-name</em> - Export a table
of the snapshot or cluster. This format is valid only for RDS for MySQL,
RDS for MariaDB, and Aurora MySQL.</p></li>
<li><p><code>database.schema</code> <em>schema-name</em> - Export a
database schema of the snapshot or cluster. This format is valid only
for RDS for PostgreSQL and Aurora PostgreSQL.</p></li>
<li><p><code>database.schema.table</code> <em>table-name</em> - Export a
table of the database schema. This format is valid only for RDS for
PostgreSQL and Aurora PostgreSQL.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExportTaskIdentifier = "string",
      SourceArn = "string",
      ExportOnly = list(
        "string"
      ),
      SnapshotTime = as.POSIXct(
        "2015-01-01"
      ),
      TaskStartTime = as.POSIXct(
        "2015-01-01"
      ),
      TaskEndTime = as.POSIXct(
        "2015-01-01"
      ),
      S3Bucket = "string",
      S3Prefix = "string",
      IamRoleArn = "string",
      KmsKeyId = "string",
      Status = "string",
      PercentProgress = 123,
      TotalExtractedDataInGB = 123,
      FailureCause = "string",
      WarningMessage = "string",
      SourceType = "SNAPSHOT"|"CLUSTER"
    )

### Request syntax

    svc$start_export_task(
      ExportTaskIdentifier = "string",
      SourceArn = "string",
      S3BucketName = "string",
      IamRoleArn = "string",
      KmsKeyId = "string",
      S3Prefix = "string",
      ExportOnly = list(
        "string"
      )
    )
