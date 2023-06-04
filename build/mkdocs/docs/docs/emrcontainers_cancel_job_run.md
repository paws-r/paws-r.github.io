<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_cancel_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels a job run

### Description

Cancels a job run. A job run is a unit of work, such as a Spark jar,
PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.

### Usage

    emrcontainers_cancel_job_run(id, virtualClusterId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emrcontainers_cancel_job_run_:_id">id</code></td>
<td><p>[required] The ID of the job run to cancel.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_cancel_job_run_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The ID of the virtual cluster for which the job run
will be canceled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      virtualClusterId = "string"
    )

### Request syntax

    svc$cancel_job_run(
      id = "string",
      virtualClusterId = "string"
    )
