<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_cancel_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a job in an Batch job queue

### Description

Cancels a job in an Batch job queue. Jobs that are in the `SUBMITTED` or
`PENDING` are canceled. A job in`RUNNABLE` remains in `RUNNABLE` until
it reaches the head of the job queue. Then the job status is updated to
`FAILED`.

Jobs that progressed to the `STARTING` or `RUNNING` state aren't
canceled. However, the API operation still succeeds, even if no job is
canceled. These jobs must be terminated with the `terminate_job`
operation.

### Usage

    batch_cancel_job(jobId, reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_cancel_job_:_jobId">jobId</code></td>
<td><p>[required] The Batch job ID of the job to cancel.</p></td>
</tr>
<tr class="even">
<td><code id="batch_cancel_job_:_reason">reason</code></td>
<td><p>[required] A message to attach to the job that explains the
reason for canceling it. This message is returned by future
<code>describe_jobs</code> operations on the job. This message is also
recorded in the Batch activity logs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_job(
      jobId = "string",
      reason = "string"
    )

### Examples

    ## Not run: 
    # This example cancels a job with the specified job ID.
    svc$cancel_job(
      jobId = "1d828f65-7a4d-42e8-996d-3b900ed59dc4",
      reason = "Cancelling job."
    )

    ## End(Not run)
