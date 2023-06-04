<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_create_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## You can use S3 Batch Operations to perform large-scale batch actions on Amazon S3 objects

### Description

You can use S3 Batch Operations to perform large-scale batch actions on
Amazon S3 objects. Batch Operations can run a single action on lists of
Amazon S3 objects that you specify. For more information, see [S3 Batch
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
in the *Amazon S3 User Guide*.

This action creates a S3 Batch Operations job.

Related actions include:

-   `describe_job`

-   `list_jobs`

-   `update_job_priority`

-   `update_job_status`

-   [JobOperation](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_JobOperation.html)

### Usage

    s3control_create_job(AccountId, ConfirmationRequired, Operation, Report,
      ClientRequestToken, Manifest, Description, Priority, RoleArn, Tags,
      ManifestGenerator)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3control_create_job_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID that creates the
job.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_job_:_ConfirmationRequired">ConfirmationRequired</code></td>
<td><p>Indicates whether confirmation is required before Amazon S3 runs
the job. Confirmation is only required for jobs created through the
Amazon S3 console.</p></td>
</tr>
<tr class="odd">
<td><code id="s3control_create_job_:_Operation">Operation</code></td>
<td><p>[required] The action that you want this job to perform on every
object listed in the manifest. For more information about the available
actions, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/">Operations</a>
in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_create_job_:_Report">Report</code></td>
<td><p>[required] Configuration parameters for the optional
job-completion report.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_job_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>[required] An idempotency token to ensure that you don't
accidentally submit the same request twice. You can use any string up to
the maximum length.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_create_job_:_Manifest">Manifest</code></td>
<td><p>Configuration parameters for the manifest.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_job_:_Description">Description</code></td>
<td><p>A description for this job. You can use any string within the
permitted length. Descriptions don't need to be unique and can be used
for multiple jobs.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_create_job_:_Priority">Priority</code></td>
<td><p>[required] The numerical priority for this job. Higher numbers
indicate higher priority.</p></td>
</tr>
<tr class="odd">
<td><code id="s3control_create_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the Identity and
Access Management (IAM) role that Batch Operations will use to run this
job's action on every object in the manifest.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_create_job_:_Tags">Tags</code></td>
<td><p>A set of tags to associate with the S3 Batch Operations job. This
is an optional parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_job_:_ManifestGenerator">ManifestGenerator</code></td>
<td><p>The attribute container for the ManifestGenerator details. Jobs
must be created with either a manifest file or a ManifestGenerator, but
not both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$create_job(
      AccountId = "string",
      ConfirmationRequired = TRUE|FALSE,
      Operation = list(
        LambdaInvoke = list(
          FunctionArn = "string"
        ),
        S3PutObjectCopy = list(
          TargetResource = "string",
          CannedAccessControlList = "private"|"public-read"|"public-read-write"|"aws-exec-read"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control",
          AccessControlGrants = list(
            list(
              Grantee = list(
                TypeIdentifier = "id"|"emailAddress"|"uri",
                Identifier = "string",
                DisplayName = "string"
              ),
              Permission = "FULL_CONTROL"|"READ"|"WRITE"|"READ_ACP"|"WRITE_ACP"
            )
          ),
          MetadataDirective = "COPY"|"REPLACE",
          ModifiedSinceConstraint = as.POSIXct(
            "2015-01-01"
          ),
          NewObjectMetadata = list(
            CacheControl = "string",
            ContentDisposition = "string",
            ContentEncoding = "string",
            ContentLanguage = "string",
            UserMetadata = list(
              "string"
            ),
            ContentLength = 123,
            ContentMD5 = "string",
            ContentType = "string",
            HttpExpiresDate = as.POSIXct(
              "2015-01-01"
            ),
            RequesterCharged = TRUE|FALSE,
            SSEAlgorithm = "AES256"|"KMS"
          ),
          NewObjectTagging = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          RedirectLocation = "string",
          RequesterPays = TRUE|FALSE,
          StorageClass = "STANDARD"|"STANDARD_IA"|"ONEZONE_IA"|"GLACIER"|"INTELLIGENT_TIERING"|"DEEP_ARCHIVE"|"GLACIER_IR",
          UnModifiedSinceConstraint = as.POSIXct(
            "2015-01-01"
          ),
          SSEAwsKmsKeyId = "string",
          TargetKeyPrefix = "string",
          ObjectLockLegalHoldStatus = "OFF"|"ON",
          ObjectLockMode = "COMPLIANCE"|"GOVERNANCE",
          ObjectLockRetainUntilDate = as.POSIXct(
            "2015-01-01"
          ),
          BucketKeyEnabled = TRUE|FALSE,
          ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256"
        ),
        S3PutObjectAcl = list(
          AccessControlPolicy = list(
            AccessControlList = list(
              Owner = list(
                ID = "string",
                DisplayName = "string"
              ),
              Grants = list(
                list(
                  Grantee = list(
                    TypeIdentifier = "id"|"emailAddress"|"uri",
                    Identifier = "string",
                    DisplayName = "string"
                  ),
                  Permission = "FULL_CONTROL"|"READ"|"WRITE"|"READ_ACP"|"WRITE_ACP"
                )
              )
            ),
            CannedAccessControlList = "private"|"public-read"|"public-read-write"|"aws-exec-read"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control"
          )
        ),
        S3PutObjectTagging = list(
          TagSet = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        ),
        S3DeleteObjectTagging = list(),
        S3InitiateRestoreObject = list(
          ExpirationInDays = 123,
          GlacierJobTier = "BULK"|"STANDARD"
        ),
        S3PutObjectLegalHold = list(
          LegalHold = list(
            Status = "OFF"|"ON"
          )
        ),
        S3PutObjectRetention = list(
          BypassGovernanceRetention = TRUE|FALSE,
          Retention = list(
            RetainUntilDate = as.POSIXct(
              "2015-01-01"
            ),
            Mode = "COMPLIANCE"|"GOVERNANCE"
          )
        ),
        S3ReplicateObject = list()
      ),
      Report = list(
        Bucket = "string",
        Format = "Report_CSV_20180820",
        Enabled = TRUE|FALSE,
        Prefix = "string",
        ReportScope = "AllTasks"|"FailedTasksOnly"
      ),
      ClientRequestToken = "string",
      Manifest = list(
        Spec = list(
          Format = "S3BatchOperations_CSV_20180820"|"S3InventoryReport_CSV_20161130",
          Fields = list(
            "Ignore"|"Bucket"|"Key"|"VersionId"
          )
        ),
        Location = list(
          ObjectArn = "string",
          ObjectVersionId = "string",
          ETag = "string"
        )
      ),
      Description = "string",
      Priority = 123,
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ManifestGenerator = list(
        S3JobManifestGenerator = list(
          ExpectedBucketOwner = "string",
          SourceBucket = "string",
          ManifestOutputLocation = list(
            ExpectedManifestBucketOwner = "string",
            Bucket = "string",
            ManifestPrefix = "string",
            ManifestEncryption = list(
              SSES3 = list(),
              SSEKMS = list(
                KeyId = "string"
              )
            ),
            ManifestFormat = "S3InventoryReport_CSV_20211130"
          ),
          Filter = list(
            EligibleForReplication = TRUE|FALSE,
            CreatedAfter = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBefore = as.POSIXct(
              "2015-01-01"
            ),
            ObjectReplicationStatuses = list(
              "COMPLETED"|"FAILED"|"REPLICA"|"NONE"
            )
          ),
          EnableManifestOutput = TRUE|FALSE
        )
      )
    )
