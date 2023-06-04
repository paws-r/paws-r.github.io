<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_start_speaker_enrollment_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a new batch speaker enrollment job using specified details

### Description

Starts a new batch speaker enrollment job using specified details.

### Usage

    voiceid_start_speaker_enrollment_job(ClientToken, DataAccessRoleArn,
      DomainId, EnrollmentConfig, InputDataConfig, JobName, OutputDataConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_start_speaker_enrollment_job_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_start_speaker_enrollment_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The IAM role Amazon Resource Name (ARN) that grants
Voice ID permissions to access customer's buckets to read the input
manifest file and write the job output file. Refer to <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html">Batch
enrollment using audio data from prior calls</a> for the permissions
needed in this role.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_start_speaker_enrollment_job_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the speaker
enrollment job and in which the speakers are enrolled.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_start_speaker_enrollment_job_:_EnrollmentConfig">EnrollmentConfig</code></td>
<td><p>The enrollment config that contains details such as the action to
take when a speaker is already enrolled in Voice ID or when a speaker is
identified as a fraudster.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_start_speaker_enrollment_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] The input data config containing the S3 location for
the input manifest file that contains the list of speaker enrollment
requests.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_start_speaker_enrollment_job_:_JobName">JobName</code></td>
<td><p>A name for your speaker enrollment job.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_start_speaker_enrollment_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] The output data config containing the S3 location
where Voice ID writes the job output file; you must also include a KMS
key ID to encrypt the file.</p></td>
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
        EnrollmentConfig = list(
          ExistingEnrollmentAction = "SKIP"|"OVERWRITE",
          FraudDetectionConfig = list(
            FraudDetectionAction = "IGNORE"|"FAIL",
            RiskThreshold = 123,
            WatchlistIds = list(
              "string"
            )
          )
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
        )
      )
    )

### Request syntax

    svc$start_speaker_enrollment_job(
      ClientToken = "string",
      DataAccessRoleArn = "string",
      DomainId = "string",
      EnrollmentConfig = list(
        ExistingEnrollmentAction = "SKIP"|"OVERWRITE",
        FraudDetectionConfig = list(
          FraudDetectionAction = "IGNORE"|"FAIL",
          RiskThreshold = 123,
          WatchlistIds = list(
            "string"
          )
        )
      ),
      InputDataConfig = list(
        S3Uri = "string"
      ),
      JobName = "string",
      OutputDataConfig = list(
        KmsKeyId = "string",
        S3Uri = "string"
      )
    )
