<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_transform_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a batch transform job

### Description

Stops a batch transform job.

When Amazon SageMaker receives a `stop_transform_job` request, the
status of the job changes to `Stopping`. After Amazon SageMaker stops
the job, the status is set to `Stopped`. When you stop a batch transform
job before it is completed, Amazon SageMaker doesn't store the job's
output in Amazon S3.

### Usage

    sagemaker_stop_transform_job(TransformJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_transform_job_:_TransformJobName">TransformJobName</code></td>
<td><p>[required] The name of the batch transform job to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_transform_job(
      TransformJobName = "string"
    )
