<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_list_speaker_enrollment_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the speaker enrollment jobs in the domain with the specified JobStatus

### Description

Lists all the speaker enrollment jobs in the domain with the specified
`JobStatus`. If `JobStatus` is not provided, this lists all jobs with
all possible speaker enrollment job statuses.

### Usage

    voiceid_list_speaker_enrollment_jobs(DomainId, JobStatus, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_list_speaker_enrollment_jobs_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that contains the speaker
enrollment jobs.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_list_speaker_enrollment_jobs_:_JobStatus">JobStatus</code></td>
<td><p>Provides the status of your speaker enrollment Job.</p></td>
</tr>
<tr class="odd">
<td><code
id="voiceid_list_speaker_enrollment_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results that are returned per call. You can
use <code>NextToken</code> to obtain more pages of results. The default
is 100; the maximum allowed page size is also 100.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_list_speaker_enrollment_jobs_:_NextToken">NextToken</code></td>
<td><p>If <code>NextToken</code> is returned, there are more results
available. The value of <code>NextToken</code> is a unique pagination
token for each page. Make the call again using the returned token to
retrieve the next page. Keep all other arguments unchanged. Each
pagination token expires after 24 hours.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobSummaries = list(
        list(
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          DomainId = "string",
          EndedAt = as.POSIXct(
            "2015-01-01"
          ),
          FailureDetails = list(
            Message = "string",
            StatusCode = 123
          ),
          JobId = "string",
          JobName = "string",
          JobProgress = list(
            PercentComplete = 123
          ),
          JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"FAILED"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_speaker_enrollment_jobs(
      DomainId = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERRORS"|"FAILED",
      MaxResults = 123,
      NextToken = "string"
    )
