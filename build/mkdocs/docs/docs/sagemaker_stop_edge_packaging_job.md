<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_edge_packaging_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Request to stop an edge packaging job

### Description

Request to stop an edge packaging job.

### Usage

    sagemaker_stop_edge_packaging_job(EdgePackagingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_edge_packaging_job_:_EdgePackagingJobName">EdgePackagingJobName</code></td>
<td><p>[required] The name of the edge packaging job.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_edge_packaging_job(
      EdgePackagingJobName = "string"
    )
