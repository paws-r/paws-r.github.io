<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glacier_list_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This operation lists jobs for a vault, including jobs that are in-progress and jobs that have recently finished

### Description

This operation lists jobs for a vault, including jobs that are
in-progress and jobs that have recently finished. The List Job operation
returns a list of these jobs sorted by job initiation time.

Amazon Glacier retains recently completed jobs for a period before
deleting them; however, it eventually removes completed jobs. The output
of completed jobs can be retrieved. Retaining completed jobs for a
period of time after they have completed enables you to get a job output
in the event you miss the job completion notification or your first
attempt to download it fails. For example, suppose you start an archive
retrieval job to download an archive. After the job completes, you start
to download the archive but encounter a network error. In this scenario,
you can retry and download the archive while the job exists.

The List Jobs operation supports pagination. You should always check the
response `Marker` field. If there are no more jobs to list, the `Marker`
field is set to `null`. If there are more jobs to list, the `Marker`
field is set to a non-null value, which you can use to continue the
pagination of the list. To return a list of jobs that begins at a
specific job, set the marker request parameter to the `Marker` value for
that job that you obtained from a previous List Jobs request.

You can set a maximum limit for the number of jobs returned in the
response by specifying the `limit` parameter in the request. The default
limit is 50. The number of jobs returned might be fewer than the limit,
but the number of returned jobs never exceeds the limit.

Additionally, you can filter the jobs list returned by specifying the
optional `statuscode` parameter or `completed` parameter, or both. Using
the `statuscode` parameter, you can specify to return only jobs that
match either the `InProgress`, `Succeeded`, or `Failed` status. Using
the `completed` parameter, you can specify to return only jobs that were
completed (`true`) or jobs that were not completed (`false`).

For more information about using this operation, see the documentation
for the underlying REST API [List
Jobs](https://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html).

### Usage

    glacier_list_jobs(accountId, vaultName, limit, marker, statuscode,
      completed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glacier_list_jobs_:_accountId">accountId</code></td>
<td><p>[required] The <code>AccountId</code> value is the AWS account ID
of the account that owns the vault. You can either specify an AWS
account ID or optionally a single '<code>-</code>' (hyphen), in which
case Amazon S3 Glacier uses the AWS account ID associated with the
credentials used to sign the request. If you use an account ID, do not
include any hyphens ('-') in the ID.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_list_jobs_:_vaultName">vaultName</code></td>
<td><p>[required] The name of the vault.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_list_jobs_:_limit">limit</code></td>
<td><p>The maximum number of jobs to be returned. The default limit is
50. The number of jobs returned might be fewer than the specified limit,
but the number of returned jobs never exceeds the limit.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_list_jobs_:_marker">marker</code></td>
<td><p>An opaque string used for pagination. This value specifies the
job at which the listing of jobs should begin. Get the marker value from
a previous List Jobs response. You only need to include the marker if
you are continuing the pagination of results started in a previous List
Jobs request.</p></td>
</tr>
<tr class="odd">
<td><code id="glacier_list_jobs_:_statuscode">statuscode</code></td>
<td><p>The type of job status to return. You can specify the following
values: <code>InProgress</code>, <code>Succeeded</code>, or
<code>Failed</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glacier_list_jobs_:_completed">completed</code></td>
<td><p>The state of the jobs to return. You can specify
<code>true</code> or <code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobList = list(
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
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_jobs(
      accountId = "string",
      vaultName = "string",
      limit = "string",
      marker = "string",
      statuscode = "string",
      completed = "string"
    )

### Examples

    ## Not run: 
    # The example lists jobs for the vault named my-vault.
    svc$list_jobs(
      accountId = "-",
      vaultName = "my-vault"
    )

    ## End(Not run)
