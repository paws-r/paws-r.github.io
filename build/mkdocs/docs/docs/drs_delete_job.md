<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>drs_delete_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a single Job by ID

### Description

Deletes a single Job by ID.

### Usage

    drs_delete_job(jobID)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="drs_delete_job_:_jobID">jobID</code></td>
<td><p>[required] The ID of the Job to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_job(
      jobID = "string"
    )
