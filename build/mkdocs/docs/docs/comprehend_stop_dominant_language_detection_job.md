<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_stop_dominant_language_detection_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a dominant language detection job in progress

### Description

Stops a dominant language detection job in progress.

If the job state is `IN_PROGRESS` the job is marked for termination and
put into the `STOP_REQUESTED` state. If the job completes before it can
be stopped, it is put into the `COMPLETED` state; otherwise the job is
stopped and put into the `STOPPED` state.

If the job is in the `COMPLETED` or `FAILED` state when you call the
`stop_dominant_language_detection_job` operation, the operation returns
a 400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.

### Usage

    comprehend_stop_dominant_language_detection_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_stop_dominant_language_detection_job_:_JobId">JobId</code></td>
<td><p>[required] The identifier of the dominant language detection job
to stop.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED"
    )

### Request syntax

    svc$stop_dominant_language_detection_job(
      JobId = "string"
    )
