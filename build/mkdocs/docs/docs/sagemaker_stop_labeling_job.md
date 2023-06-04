<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_labeling_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a running labeling job

### Description

Stops a running labeling job. A job that is stopped cannot be restarted.
Any results obtained before the job is stopped are placed in the Amazon
S3 output bucket.

### Usage

    sagemaker_stop_labeling_job(LabelingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_labeling_job_:_LabelingJobName">LabelingJobName</code></td>
<td><p>[required] The name of the labeling job to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_labeling_job(
      LabelingJobName = "string"
    )
