<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_stop_text_translation_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an asynchronous batch translation job that is in progress

### Description

Stops an asynchronous batch translation job that is in progress.

If the job's state is `IN_PROGRESS`, the job will be marked for
termination and put into the `STOP_REQUESTED` state. If the job
completes before it can be stopped, it is put into the `COMPLETED`
state. Otherwise, the job is put into the `STOPPED` state.

Asynchronous batch translation jobs are started with the
`start_text_translation_job` operation. You can use the
`describe_text_translation_job` or `list_text_translation_jobs`
operations to get a batch translation job's `JobId`.

### Usage

    translate_stop_text_translation_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_stop_text_translation_job_:_JobId">JobId</code></td>
<td><p>[required] The job ID of the job to be stopped.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERROR"|"FAILED"|"STOP_REQUESTED"|"STOPPED"
    )

### Request syntax

    svc$stop_text_translation_job(
      JobId = "string"
    )
