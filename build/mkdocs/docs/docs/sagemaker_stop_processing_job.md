<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_stop_processing_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops a processing job

### Description

Stops a processing job.

### Usage

    sagemaker_stop_processing_job(ProcessingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_stop_processing_job_:_ProcessingJobName">ProcessingJobName</code></td>
<td><p>[required] The name of the processing job to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_processing_job(
      ProcessingJobName = "string"
    )
