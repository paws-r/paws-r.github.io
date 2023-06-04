<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_batch_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified batch import job ID record

### Description

Deletes the specified batch import job ID record. This action does not
delete the data that was batch imported.

### Usage

    frauddetector_delete_batch_import_job(jobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_delete_batch_import_job_:_jobId">jobId</code></td>
<td><p>[required] The ID of the batch import job to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_batch_import_job(
      jobId = "string"
    )
