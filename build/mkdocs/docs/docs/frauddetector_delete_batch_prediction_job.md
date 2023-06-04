<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_batch_prediction_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a batch prediction job

### Description

Deletes a batch prediction job.

### Usage

    frauddetector_delete_batch_prediction_job(jobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_delete_batch_prediction_job_:_jobId">jobId</code></td>
<td><p>[required] The ID of the batch prediction job to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_batch_prediction_job(
      jobId = "string"
    )
