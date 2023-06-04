<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_put_job_failure_result</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents the failure of a job as returned to the pipeline by a job worker

### Description

Represents the failure of a job as returned to the pipeline by a job
worker. Used for custom actions only.

### Usage

    codepipeline_put_job_failure_result(jobId, failureDetails)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_put_job_failure_result_:_jobId">jobId</code></td>
<td><p>[required] The unique system-generated ID of the job that failed.
This is the same ID returned from <code>poll_for_jobs</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="codepipeline_put_job_failure_result_:_failureDetails">failureDetails</code></td>
<td><p>[required] The details about the failure of a job.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_job_failure_result(
      jobId = "string",
      failureDetails = list(
        type = "JobFailed"|"ConfigurationError"|"PermissionError"|"RevisionOutOfSync"|"RevisionUnavailable"|"SystemUnavailable",
        message = "string",
        externalExecutionId = "string"
      )
    )
