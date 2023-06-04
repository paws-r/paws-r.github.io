<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_start_fraudster_registration_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a new batch fraudster registration job using provided details

### Description

Starts a new batch fraudster registration job using provided details.

### Usage

    voiceid_start_fraudster_registration_job(ClientToken, DataAccessRoleArn,
      DomainId, InputDataConfig, JobName, OutputDataConfig,
      RegistrationConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_start_fraudster_registration_job_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_start_fraudster_registration_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The IAM role Amazon Resource Name (ARN) that grants
Voice ID permissions to access customer's buckets to read the input
manifest file and write the Job output file. Refer to the <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html">Create
and edit a fraudster watchlist</a> documentation for the permissions
needed in this role.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_start_fraudster_registration_job_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
fraudster registration job and in which the fraudsters are
registered.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_start_fraudster_registration_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] The input data config containing an S3 URI for the
input manifest file that contains the list of fraudster registration
requests.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_start_fraudster_registration_job_:_JobName">JobName</code></td>
<td><p>The name of the new fraudster registration job.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_start_fraudster_registration_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] The output data config containing the S3 location
where Voice ID writes the job output file; you must also include a KMS
key ID to encrypt the file.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_start_fraudster_registration_job_:_RegistrationConfig">RegistrationConfig</code></td>
<td><p>The registration config containing details such as the action to
take when a duplicate fraudster is detected, and the similarity
threshold to use for detecting a duplicate fraudster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Job = list(
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        DataAccessRoleArn = "string",
        DomainId = "string",
        EndedAt = as.POSIXct(
          "2015-01-01"
        ),
        FailureDetails = list(
          Message = "string",
          StatusCode = 123
        ),
        InputDataConfig = list(
          S3Uri = "string"
        ),
        JobId = "string",
        JobName = "string",
        JobProgress = list(
          PercentComplete = 123
        ),
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"FAILED",
        OutputDataConfig = list(
          KmsKeyId = "string",
          S3Uri = "string"
        ),
        RegistrationConfig = list(
          DuplicateRegistrationAction = "SKIP"|"REGISTER_AS_NEW",
          FraudsterSimilarityThreshold = 123,
          WatchlistIds = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$start_fraudster_registration_job(
      ClientToken = "string",
      DataAccessRoleArn = "string",
      DomainId = "string",
      InputDataConfig = list(
        S3Uri = "string"
      ),
      JobName = "string",
      OutputDataConfig = list(
        KmsKeyId = "string",
        S3Uri = "string"
      ),
      RegistrationConfig = list(
        DuplicateRegistrationAction = "SKIP"|"REGISTER_AS_NEW",
        FraudsterSimilarityThreshold = 123,
        WatchlistIds = list(
          "string"
        )
      )
    )
