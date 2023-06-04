<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_describe_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation returns information about a job you previously initiated, including the job initiation date, the user who initiated the job, the job status code/message and the Amazon SNS topic to notify after Amazon S3 Glacier (Glacier) completes the job

### Description

This operation returns information about a job you previously initiated,
including the job initiation date, the user who initiated the job, the
job status code/message and the Amazon SNS topic to notify after Amazon
S3 Glacier (Glacier) completes the job. For more information about
initiating a job, see `initiate_job`.

This operation enables you to check the status of your job. However, it
is strongly recommended that you set up an Amazon SNS topic and specify
it in your initiate job request so that Glacier can notify the topic
after it completes the job.

A job ID will not expire for at least 24 hours after Glacier completes
the job.

An AWS account has full permission to perform all operations (actions).
However, AWS Identity and Access Management (IAM) users don't have any
permissions by default. You must grant them explicit permission to
perform specific actions. For more information, see [Access Control
Using AWS Identity and Access Management
(IAM)](https://docs.aws.amazon.com/amazonglacier/latest/dev/security-iam.html).

For more information about using this operation, see the documentation
for the underlying REST API [Describe
Job](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html)
in the *Amazon Glacier Developer Guide*.

### Usage

    glacier_describe_job(accountId, vaultName, jobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_describe_job_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_describe_job_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_describe_job_:_jobId">jobId</code></td>
<td><p>[required] The ID of the job to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobDescription = "string",
      Action = "ArchiveRetrieval"|"InventoryRetrieval"|"Select",
      ArchiveId = "string",
      VaultARN = "string",
      CreationDate = "string",
      Completed = TRUE|FALSE,
      StatusCode = "InProgress"|"Succeeded"|"Failed",
      StatusMessage = "string",
      ArchiveSizeInBytes = 123,
      InventorySizeInBytes = 123,
      SNSTopic = "string",
      CompletionDate = "string",
      SHA256TreeHash = "string",
      ArchiveSHA256TreeHash = "string",
      RetrievalByteRange = "string",
      Tier = "string",
      InventoryRetrievalParameters = list(
        Format = "string",
        StartDate = "string",
        EndDate = "string",
        Limit = "string",
        Marker = "string"
      ),
      JobOutputPath = "string",
      SelectParameters = list(
        InputSerialization = list(
          csv = list(
            FileHeaderInfo = "USE"|"IGNORE"|"NONE",
            Comments = "string",
            QuoteEscapeCharacter = "string",
            RecordDelimiter = "string",
            FieldDelimiter = "string",
            QuoteCharacter = "string"
          )
        ),
        ExpressionType = "SQL",
        Expression = "string",
        OutputSerialization = list(
          csv = list(
            QuoteFields = "ALWAYS"|"ASNEEDED",
            QuoteEscapeCharacter = "string",
            RecordDelimiter = "string",
            FieldDelimiter = "string",
            QuoteCharacter = "string"
          )
        )
      ),
      OutputLocation = list(
        S3 = list(
          BucketName = "string",
          Prefix = "string",
          Encryption = list(
            EncryptionType = "aws:kms"|"AES256",
            KMSKeyId = "string",
            KMSContext = "string"
          ),
          CannedACL = "private"|"public-read"|"public-read-write"|"aws-exec-read"|"authenticated-read"|"bucket-owner-read"|"bucket-owner-full-control",
          AccessControlList = list(
            list(
              Grantee = list(
                Type = "AmazonCustomerByEmail"|"CanonicalUser"|"Group",
                DisplayName = "string",
                URI = "string",
                ID = "string",
                EmailAddress = "string"
              ),
              Permission = "FULL_CONTROL"|"WRITE"|"WRITE_ACP"|"READ"|"READ_ACP"
            )
          ),
          Tagging = list(
            "string"
          ),
          UserMetadata = list(
            "string"
          ),
          StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"
        )
      )
    )

### Request syntax

    svc$describe_job(
      accountId = "string",
      vaultName = "string",
      jobId = "string"
    )

### Examples

    ## Not run: 
    # The example returns information about the previously initiated job
    # specified by the job ID.
    svc$describe_job(
      accountId = "-",
      jobId = "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ej...",
      vaultName = "my-vault"
    )

    ## End(Not run)
