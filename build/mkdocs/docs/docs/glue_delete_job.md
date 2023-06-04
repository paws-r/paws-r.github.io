<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified job definition

### Description

Deletes a specified job definition. If the job definition is not found,
no exception is thrown.

### Usage

    glue_delete_job(JobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_job_:_JobName">JobName</code></td>
<td><p>[required] The name of the job definition to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobName = "string"
    )

### Request syntax

    svc$delete_job(
      JobName = "string"
    )
