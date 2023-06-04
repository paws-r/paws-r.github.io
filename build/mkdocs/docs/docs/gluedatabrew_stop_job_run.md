<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_stop_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a particular run of a job

### Description

Stops a particular run of a job.

### Usage

    gluedatabrew_stop_job_run(Name, RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_stop_job_run_:_Name">Name</code></td>
<td><p>[required] The name of the job to be stopped.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_stop_job_run_:_RunId">RunId</code></td>
<td><p>[required] The ID of the job run to be stopped.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string"
    )

### Request syntax

    svc$stop_job_run(
      Name = "string",
      RunId = "string"
    )
