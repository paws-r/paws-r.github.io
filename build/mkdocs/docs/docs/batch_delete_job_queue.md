<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_delete_job_queue</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified job queue

### Description

Deletes the specified job queue. You must first disable submissions for
a queue with the `update_job_queue` operation. All jobs in the queue are
eventually terminated when you delete a job queue. The jobs are
terminated at a rate of about 16 jobs each second.

It's not necessary to disassociate compute environments from a queue
before submitting a `delete_job_queue` request.

### Usage

    batch_delete_job_queue(jobQueue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="batch_delete_job_queue_:_jobQueue">jobQueue</code></td>
<td><p>[required] The short name or full Amazon Resource Name (ARN) of
the queue to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_job_queue(
      jobQueue = "string"
    )

### Examples

    ## Not run: 
    # This example deletes the GPGPU job queue.
    svc$delete_job_queue(
      jobQueue = "GPGPU"
    )

    ## End(Not run)
