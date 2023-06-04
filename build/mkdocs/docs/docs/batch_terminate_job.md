<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_terminate_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Terminates a job in a job queue

### Description

Terminates a job in a job queue. Jobs that are in the `STARTING` or
`RUNNING` state are terminated, which causes them to transition to
`FAILED`. Jobs that have not progressed to the `STARTING` state are
cancelled.

### Usage

    batch_terminate_job(jobId, reason)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_terminate_job_:_jobId">jobId</code></td>
<td><p>[required] The Batch job ID of the job to terminate.</p></td>
</tr>
<tr class="even">
<td><code id="batch_terminate_job_:_reason">reason</code></td>
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

    svc$terminate_job(
      jobId = "string",
      reason = "string"
    )

### Examples

    ## Not run: 
    # This example terminates a job with the specified job ID.
    svc$terminate_job(
      jobId = "61e743ed-35e4-48da-b2de-5c8333821c84",
      reason = "Terminating job."
    )

    ## End(Not run)
