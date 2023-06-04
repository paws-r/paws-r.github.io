<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_list_job_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists job runs based on a set of parameters

### Description

Lists job runs based on a set of parameters.

### Usage

    emrserverless_list_job_runs(applicationId, nextToken, maxResults,
      createdAtAfter, createdAtBefore, states)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_list_job_runs_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application for which to list the job
run.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_list_job_runs_:_nextToken">nextToken</code></td>
<td><p>The token for the next set of job run results.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_list_job_runs_:_maxResults">maxResults</code></td>
<td><p>The maximum number of job runs that can be listed.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_list_job_runs_:_createdAtAfter">createdAtAfter</code></td>
<td><p>The lower bound of the option to filter by creation date and
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrserverless_list_job_runs_:_createdAtBefore">createdAtBefore</code></td>
<td><p>The upper bound of the option to filter by creation date and
time.</p></td>
</tr>
<tr class="even">
<td><code id="emrserverless_list_job_runs_:_states">states</code></td>
<td><p>An optional filter for job run states. Note that if this filter
contains multiple states, the resulting list will be grouped by the
state.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      jobRuns = list(
        list(
          applicationId = "string",
          id = "string",
          name = "string",
          arn = "string",
          createdBy = "string",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          ),
          executionRole = "string",
          state = "SUBMITTED"|"PENDING"|"SCHEDULED"|"RUNNING"|"SUCCESS"|"FAILED"|"CANCELLING"|"CANCELLED",
          stateDetails = "string",
          releaseLabel = "string",
          type = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_job_runs(
      applicationId = "string",
      nextToken = "string",
      maxResults = 123,
      createdAtAfter = as.POSIXct(
        "2015-01-01"
      ),
      createdAtBefore = as.POSIXct(
        "2015-01-01"
      ),
      states = list(
        "SUBMITTED"|"PENDING"|"SCHEDULED"|"RUNNING"|"SUCCESS"|"FAILED"|"CANCELLING"|"CANCELLED"
      )
    )
