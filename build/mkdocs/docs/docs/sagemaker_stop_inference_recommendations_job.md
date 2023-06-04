<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_inference_recommendations_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an Inference Recommender job

### Description

Stops an Inference Recommender job.

### Usage

    sagemaker_stop_inference_recommendations_job(JobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_inference_recommendations_job_:_JobName">JobName</code></td>
<td><p>[required] The name of the job you want to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_inference_recommendations_job(
      JobName = "string"
    )
