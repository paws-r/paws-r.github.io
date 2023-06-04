<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_cancel_batch_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an in-progress batch import job

### Description

Cancels an in-progress batch import job.

### Usage

    frauddetector_cancel_batch_import_job(jobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_cancel_batch_import_job_:_jobId">jobId</code></td>
<td><p>[required] The ID of an in-progress batch import job to
cancel.</p>
<p>Amazon Fraud Detector will throw an error if the batch import job is
in <code>FAILED</code>, <code>CANCELED</code>, or <code>COMPLETED</code>
state.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_batch_import_job(
      jobId = "string"
    )
