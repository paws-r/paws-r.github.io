<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_stop_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops one or more job runs for a specified job definition

### Description

Stops one or more job runs for a specified job definition.

### Usage

    glue_batch_stop_job_run(JobName, JobRunIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_batch_stop_job_run_:_JobName">JobName</code></td>
<td><p>[required] The name of the job definition for which to stop job
runs.</p></td>
</tr>
<tr class="even">
<td><code id="glue_batch_stop_job_run_:_JobRunIds">JobRunIds</code></td>
<td><p>[required] A list of the <code>JobRunIds</code> that should be
stopped for that job definition.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SuccessfulSubmissions = list(
        list(
          JobName = "string",
          JobRunId = "string"
        )
      ),
      Errors = list(
        list(
          JobName = "string",
          JobRunId = "string",
          ErrorDetail = list(
            ErrorCode = "string",
            ErrorMessage = "string"
          )
        )
      )
    )

### Request syntax

    svc$batch_stop_job_run(
      JobName = "string",
      JobRunIds = list(
        "string"
      )
    )
