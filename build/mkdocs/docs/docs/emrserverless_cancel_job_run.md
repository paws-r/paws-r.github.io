<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrserverless_cancel_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a job run

### Description

Cancels a job run.

### Usage

    emrserverless_cancel_job_run(applicationId, jobRunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrserverless_cancel_job_run_:_applicationId">applicationId</code></td>
<td><p>[required] The ID of the application on which the job run will be
canceled.</p></td>
</tr>
<tr class="even">
<td><code
id="emrserverless_cancel_job_run_:_jobRunId">jobRunId</code></td>
<td><p>[required] The ID of the job run to cancel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applicationId = "string",
      jobRunId = "string"
    )

### Request syntax

    svc$cancel_job_run(
      applicationId = "string",
      jobRunId = "string"
    )
