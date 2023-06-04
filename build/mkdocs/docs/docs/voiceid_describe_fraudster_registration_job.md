<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_describe_fraudster_registration_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified fraudster registration job

### Description

Describes the specified fraudster registration job.

### Usage

    voiceid_describe_fraudster_registration_job(DomainId, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_describe_fraudster_registration_job_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the
fraudster registration job.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_describe_fraudster_registration_job_:_JobId">JobId</code></td>
<td><p>[required] The identifier of the fraudster registration job you
are describing.</p></td>
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

    svc$describe_fraudster_registration_job(
      DomainId = "string",
      JobId = "string"
    )
