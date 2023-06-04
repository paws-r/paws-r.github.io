<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_start_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Runs a DataBrew job

### Description

Runs a DataBrew job.

### Usage

    gluedatabrew_start_job_run(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_start_job_run_:_Name">Name</code></td>
<td><p>[required] The name of the job to be run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string"
    )

### Request syntax

    svc$start_job_run(
      Name = "string"
    )
