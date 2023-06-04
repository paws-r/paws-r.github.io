<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_delete_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified DataBrew job

### Description

Deletes the specified DataBrew job.

### Usage

    gluedatabrew_delete_job(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_delete_job_:_Name">Name</code></td>
<td><p>[required] The name of the job to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$delete_job(
      Name = "string"
    )
