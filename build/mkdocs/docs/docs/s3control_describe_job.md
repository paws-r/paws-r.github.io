<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_describe_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the configuration parameters and status for a Batch Operations job

### Description

Retrieves the configuration parameters and status for a Batch Operations
job. For more information, see [S3 Batch
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/batch-ops.html)
in the *Amazon S3 User Guide*.

Related actions include:

-   `create_job`

-   `list_jobs`

-   `update_job_priority`

-   `update_job_status`

### Usage

    s3control_describe_job(AccountId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3control_describe_job_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID associated with the
S3 Batch Operations job.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_describe_job_:_JobId">JobId</code></td>
<td><p>[required] The ID for the job whose information you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Job = list(
        JobId = "string",
        ConfirmationRequired = TRUE|FALSE,
        Description = "string",
        JobArn = "string",
        Status = "Active"|"Cancelled"|"Cancelling"|"Complete"|"Completing"|"Failed"|"Failing"|"New"|"Paused"|"Pausing"|"Preparing"|"Ready"|"Suspended",
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
        Priority = 123,
        ProgressSummary = list(
          TotalNumberOfTasks = 123,
          NumberOfTasksSucceeded = 123,
          NumberOfTasksFailed = 123,
          Timers = list(
            ElapsedTimeInActiveSeconds = 123
          )
        ),
        StatusUpdateReason = "string",
        FailureReasons = list(
          list(
            FailureCode = "string",
            FailureReason = "string"
          )
        ),
        Report = list(
          Bucket = "string",
          Format = "Report_CSV_20180820",
          Enabled = TRUE|FALSE,
          Prefix = "string",
          ReportScope = "AllTasks"|"FailedTasksOnly"
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        TerminationDate = as.POSIXct(
          "2015-01-01"
        ),
        RoleArn = "string",
        SuspendedDate = as.POSIXct(
          "2015-01-01"
        ),
        SuspendedCause = "string",
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
        ),
        GeneratedManifestDescriptor = list(
          Format = "S3InventoryReport_CSV_20211130",
          Location = list(
            ObjectArn = "string",
            ObjectVersionId = "string",
            ETag = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_job(
      AccountId = "string",
      JobId = "string"
    )
