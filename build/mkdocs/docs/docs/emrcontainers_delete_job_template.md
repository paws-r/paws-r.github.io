<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_delete_job_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a job template

### Description

Deletes a job template. Job template stores values of StartJobRun API
request in a template and can be used to start a job run. Job template
allows two use cases: avoid repeating recurring StartJobRun API request
values, enforcing certain values in StartJobRun API request.

### Usage

    emrcontainers_delete_job_template(id)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_delete_job_template_:_id">id</code></td>
<td><p>[required] The ID of the job template that will be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string"
    )

### Request syntax

    svc$delete_job_template(
      id = "string"
    )
